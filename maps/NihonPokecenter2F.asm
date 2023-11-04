	object_const_def
	const NIHONPOKECENTER2F_TRADE_RECEPTIONIST
	const NIHONPOKECENTER2F_BATTLE_RECEPTIONIST
	const NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST
	const NIHONPOKECENTER2F_OFFICER

NihonPokecenter2F_MapScripts:
	def_scene_scripts
	scene_script NihonPokecenter2FCheckMysteryGiftScene,      SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	scene_script NihonPokecenter2FLeaveTradeCenterScene,      SCENE_NIHONPOKECENTER2F_LEAVE_TRADE_CENTER
	scene_script NihonPokecenter2FLeaveColosseumScene,        SCENE_NIHONPOKECENTER2F_LEAVE_COLOSSEUM
	scene_script NihonPokecenter2FLeaveTimeCapsuleScene,      SCENE_NIHONPOKECENTER2F_LEAVE_TIME_CAPSULE
	scene_script NihonPokecenter2FLeaveMobileTradeRoomScene,  SCENE_NIHONPOKECENTER2F_LEAVE_MOBILE_TRADE_ROOM
	scene_script NihonPokecenter2FLeaveMobileBattleRoomScene, SCENE_NIHONPOKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM

	def_callbacks

NihonPokecenter2FCheckMysteryGiftScene:
	special CheckMysteryGift
	ifequal $0, .done
	clearevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .done
	sdefer NihonPokecenter2F_AppearMysteryGiftDeliveryGuy
.done
	end

NihonPokecenter2FLeaveTradeCenterScene:
	sdefer NihonScript_LeftCableTradeCenter
	end

NihonPokecenter2FLeaveColosseumScene:
	sdefer NihonScript_LeftCableColosseum
	end

NihonPokecenter2FLeaveTimeCapsuleScene:
	sdefer NihonScript_LeftTimeCapsule
	end

NihonPokecenter2FLeaveMobileTradeRoomScene:
	sdefer NihonScript_LeftMobileTradeRoom
	end

NihonPokecenter2FLeaveMobileBattleRoomScene:
	sdefer NihonScript_LeftMobileBattleRoom
	end

NihonPokecenter2F_AppearMysteryGiftDeliveryGuy:
	appear NIHONPOKECENTER2F_OFFICER
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

NihonScript_TradeCenterClosed:
	faceplayer
	opentext
	writetext NihonText_TradeRoomClosed
	waitbutton
	closetext
	end

NihonScript_BattleRoomClosed:
	faceplayer
	opentext
	writetext NihonText_BattleRoomClosed
	waitbutton
	closetext
	end

LinkReceptionistNihonScript_Trade:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse NihonScript_TradeCenterClosed
	opentext
	writetext NihonText_TradeReceptionistIntro
	yesorno
	iffalse .Cancel
	special Mobile_DummyReturnFalse ; always returns false
	iffalse .NoMobile
	writetext NihonText_TradeReceptionistMobile
	special AskMobileOrCable
	iffalse .Cancel
	ifequal $1, .Mobile
.NoMobile:
	special SetBitsForLinkTradeRequest
	writetext NihonText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext NihonText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext NihonText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .LinkedToFirstGen
	special CheckBothSelectedSameRoom
	iffalse .IncompatibleRooms
	writetext NihonText_PleaseComeIn
	waitbutton
	closetext
	scall NihonPokecenter2F_CheckGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext NihonYourFriendIsNotReadyText
	closetext
	end

.LinkedToFirstGen:
	special FailedLinkToPast
	writetext NihonText_CantLinkToThePast
	special CloseLink
	closetext
	end

.IncompatibleRooms:
	writetext NihonText_IncompatibleRooms
	special CloseLink
	closetext
	end

.LinkTimedOut:
	writetext NihonText_LinkTimedOut
	sjump .AbortLink

.DidNotSave:
	writetext NihonText_PleaseComeAgain
.AbortLink:
	special WaitForOtherPlayerToExit
.Cancel:
	closetext
	end

.Mobile:
	scall .Mobile_TrySave
	iftrue .Mobile_Abort
	scall NihonBattleTradeMobile_WalkIn
	warpcheck
	end

.Mobile_Abort:
	end

.Mobile_TrySave:
	writetext NihonText_MustSaveGame
	yesorno
	iffalse .Mobile_DidNotSave
	special TryQuickSave
	iffalse .Mobile_DidNotSave
	special Function1011f1
	writetext NihonText_PleaseComeIn
	waitbutton
	closetext
	setval FALSE
	end

.Mobile_DidNotSave:
	writetext NihonText_PleaseComeAgain
	closetext
	setval TRUE
	end

NihonBattleTradeMobile_WalkIn:
	applymovementlasttalked NihonPokecenter2FMobileMobileMovementData_ReceptionistWalksUpAndLeft_LookDown
	applymovement PLAYER, NihonPokecenter2FMobileMovementData_PlayerWalksIntoMobileBattleRoom
	end

LinkReceptionistNihonScript_Battle:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse NihonScript_BattleRoomClosed
	opentext
	writetext NihonText_BattleReceptionistIntro
	yesorno
	iffalse .Cancel
	special Mobile_DummyReturnFalse ; always returns false
	iffalse .NoMobile
	writetext NihonText_BattleReceptionistMobile
	special AskMobileOrCable
	iffalse .Cancel
	ifequal $1, .Mobile
.NoMobile:
	special SetBitsForBattleRequest
	writetext NihonText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext NihonText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext NihonText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .LinkedToFirstGen
	special CheckBothSelectedSameRoom
	iffalse .IncompatibleRooms
	writetext NihonText_PleaseComeIn
	waitbutton
	closetext
	scall NihonPokecenter2F_CheckGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext NihonYourFriendIsNotReadyText
	closetext
	end

.LinkedToFirstGen:
	special FailedLinkToPast
	writetext NihonText_CantLinkToThePast
	special CloseLink
	closetext
	end

.IncompatibleRooms:
	writetext NihonText_IncompatibleRooms
	special CloseLink
	closetext
	end

.LinkTimedOut:
	writetext NihonText_LinkTimedOut
	sjump .AbortLink

.DidNotSave:
	writetext NihonText_PleaseComeAgain
.AbortLink:
	special WaitForOtherPlayerToExit
.Cancel:
	closetext
	end

.Mobile:
	scall .SelectThreeMons
	iffalse .Mobile_Abort
	scall .Mobile_TrySave
	iftrue .Mobile_Abort
	scall NihonBattleTradeMobile_WalkIn
	warpcheck
	end

.Mobile_Abort:
	end

.Mobile_TrySave:
	writetext NihonText_MustSaveGame
	yesorno
	iffalse .Mobile_DidNotSave
	special Function103780
	iffalse .Mobile_DidNotSave
	special Function1011f1
	writetext NihonText_PleaseComeIn
	waitbutton
	closetext
	setval FALSE
	end

.Mobile_DidNotSave:
	writetext NihonText_PleaseComeAgain
	closetext
	setval TRUE
	end

.SelectThreeMons:
	special Mobile_SelectThreeMons
	iffalse .Mobile_DidNotSelect
	ifequal $1, .Mobile_OK
	ifequal $2, .Mobile_OK
	ifequal $3, .Mobile_InvalidParty
	sjump .Mobile_DidNotSelect

.Mobile_InvalidParty:
	writetext NihonText_BrokeStadiumRules
	waitbutton
.Mobile_DidNotSelect:
	closetext
	setval FALSE
	end

.Mobile_OK:
	setval TRUE
	end

NihonScript_TimeCapsuleClosed:
	faceplayer
	opentext
	writetext NihonText_TimeCapsuleClosed
	waitbutton
	closetext
	end

LinkReceptionistNihonScript_TimeCapsule:
	checkevent EVENT_MET_BILL
	iftrue NihonScript_TimeCapsuleClosed
	checkflag ENGINE_TIME_CAPSULE
	iftrue NihonScript_TimeCapsuleClosed
	special SetBitsForTimeCapsuleRequest
	faceplayer
	opentext
	writetext NihonText_TimeCapsuleReceptionistIntro
	yesorno
	iffalse .Cancel
	special CheckTimeCapsuleCompatibility
	ifequal $1, .MonTooNew
	ifequal $2, .MonMoveTooNew
	ifequal $3, .MonHasMail
	writetext NihonText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext NihonText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext NihonText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .OK
	special CheckBothSelectedSameRoom
	writetext NihonText_IncompatibleRooms
	special CloseLink
	closetext
	end

.OK:
	special EnterTimeCapsule
	writetext NihonText_PleaseComeIn
	waitbutton
	closetext
	scall TimeCapsuleNihonScript_CheckPlayerGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext NihonYourFriendIsNotReadyText
	closetext
	end

.LinkTimedOut:
	writetext NihonText_LinkTimedOut
	sjump .Cancel

.DidNotSave:
	writetext NihonText_PleaseComeAgain
.Cancel:
	special WaitForOtherPlayerToExit
	closetext
	end

.MonTooNew:
	writetext NihonText_RejectNewMon
	closetext
	end

.MonMoveTooNew:
	writetext NihonText_RejectMonWithNewMove
	closetext
	end

.MonHasMail:
	writetext NihonText_RejectMonWithMail
	closetext
	end

NihonScript_LeftCableTradeCenter:
	special WaitForOtherPlayerToExit
	scall NihonScript_WalkOutOfLinkTradeRoom
	setscene SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene TRADE_CENTER, SCENE_TRADECENTER_INITIALIZE
	end

NihonScript_LeftMobileTradeRoom:
	special Function101220
	scall NihonScript_WalkOutOfMobileTradeRoom
	setscene SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene MOBILE_TRADE_ROOM, SCENE_MOBILETRADEROOM_INITIALIZE
	end

NihonScript_WalkOutOfMobileTradeRoom:
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerWalksOutOfMobileRoom
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown
	end

NihonScript_LeftCableColosseum:
	special WaitForOtherPlayerToExit
	scall NihonScript_WalkOutOfLinkBattleRoom
	setscene SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene COLOSSEUM, SCENE_COLOSSEUM_INITIALIZE
	end

NihonScript_LeftMobileBattleRoom:
	special Function101220
	scall NihonScript_WalkOutOfMobileBattleRoom
	setscene SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene MOBILE_BATTLE_ROOM, SCENE_MOBILEBATTLEROOM_INITIALIZE
	end

NihonScript_WalkOutOfMobileBattleRoom:
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerWalksOutOfMobileRoom
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown
	end

NihonPokecenter2F_CheckGender:
	readvar VAR_PLAYERGENDER
	ifnotequal MALE, .Female
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesThreeStepsUp
	end

.Female:
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight_2
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesTwoStepsUp
	opentext
	writetext NihonText_OhPleaseWait
	waitbutton
	closetext
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistLooksRight
	turnobject PLAYER, LEFT
	opentext
	writetext NihonText_ChangeTheLook
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	setval (PAL_NPC_RED << 4)
	special SetPlayerPalette
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special UpdatePlayerSprite
	opentext
	writetext NihonText_LikeTheLook
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepUp
	end

NihonScript_WalkOutOfLinkTradeRoom:
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesThreeStepsDown
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

.Female:
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepDown_2
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall NihonScript_RestorePlayerColor
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesTwoStepsDown_2
	applymovement NIHONPOKECENTER2F_TRADE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

NihonScript_WalkOutOfLinkBattleRoom:
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesThreeStepsDown
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

.Female:
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepDown_2
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall NihonScript_RestorePlayerColor
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesTwoStepsDown_2
	applymovement NIHONPOKECENTER2F_BATTLE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

TimeCapsuleNihonScript_CheckPlayerGender:
	readvar VAR_PLAYERGENDER
	ifnotequal MALE, .Female
	readvar VAR_FACING
	ifequal LEFT, .MaleFacingLeft
	ifequal RIGHT, .MaleFacingRight
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksDown
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesTwoStepsUp_2
	end

.MaleFacingLeft:
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksDown
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerWalksLeftAndUp
	end

.MaleFacingRight:
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerWalksRightAndUp
	end

.Female:
	readvar VAR_FACING
	ifequal RIGHT, .FemaleFacingRight
	ifequal LEFT, .FemaleFacingLeft
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepUp_2
	sjump .FemaleContinue

.FemaleFacingRight:
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsRightLooksLeft_2
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepRight
	sjump .FemaleContinue

.FemaleFacingLeft:
	applymovementlasttalked NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepLeft
.FemaleContinue:
	opentext
	writetext NihonText_OhPleaseWait
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal UP, .FemaleChangeApperance
	turnobject PLAYER, LEFT
.FemaleChangeApperance:
	opentext
	writetext NihonText_ChangeTheLook
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	setval (PAL_NPC_RED << 4)
	special SetPlayerPalette
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingDown
	faceobject PLAYER, NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special UpdatePlayerSprite
	opentext
	writetext NihonText_LikeTheLook
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepUp_2
	end

NihonScript_LeftTimeCapsule:
	special WaitForOtherPlayerToExit
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesTwoStepsDown
	applymovement NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2
	sjump .Done

.Female:
	applymovement NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepDown
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall NihonScript_RestorePlayerColor
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, NihonPokecenter2FMovementData_PlayerTakesOneStepDown
	applymovement NIHONPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2
.Done:
	setscene SCENE_NIHONPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene TIME_CAPSULE, SCENE_TIMECAPSULE_INITIALIZE
	end

NihonScript_RestorePlayerColor:
	readvar VAR_PLAYERGENDER
	ifequal FEMALE, .Blue
	setval (PAL_NPC_PURPLE << 4)
	special SetPlayerPalette
	end
.Blue
	setval (PAL_NPC_BLUE << 4)
	special SetPlayerPalette
	end
	
NihonPokecenter2FLinkRecordSign:
	refreshscreen
	special DisplayLinkRecord
	closetext
	end

NihonPokecenter2FOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
	iftrue .AlreadyGotGift
	writetext NihonText_MysteryGiftDeliveryGuy_Intro
	yesorno
	iffalse .RefusedGift
	writetext NihonText_MysteryGiftDeliveryGuy_HereYouGo
	promptbutton
	waitsfx
	special GetMysteryGiftItem
	iffalse .BagIsFull
	itemnotify
	setevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
.AlreadyGotGift:
	writetext NihonText_MysteryGiftDeliveryGuy_Outro
	waitbutton
	closetext
	end

.BagIsFull:
	writetext NihonText_MysteryGiftDeliveryGuy_NoRoom
	waitbutton
	closetext
	end

.RefusedGift:
	writetext NihonText_MysteryGiftDeliveryGuy_SaidNo
	waitbutton
	closetext
	end

NihonPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMobileMobileMovementData_ReceptionistWalksUpAndLeft_LookDown:
	slow_step UP
	slow_step LEFT
	turn_head DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksDown:
	slow_step LEFT
	turn_head DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown:
	slow_step RIGHT
	turn_head DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight_2:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_ReceptionistLooksRight:
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_PlayerTakesThreeStepsUp:
	step UP
	step UP
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerTakesTwoStepsUp:
	step UP
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepUp:
	step UP
	step_end

NihonPokecenter2FMobileMovementData_PlayerWalksIntoMobileBattleRoom:
	step UP
	step UP
	step RIGHT
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerTakesTwoStepsUp_2:
	step UP
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerWalksLeftAndUp:
	step LEFT
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerWalksRightAndUp:
	step RIGHT
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerTakesThreeStepsDown:
	step DOWN
	step DOWN
	step DOWN
	step_end

NihonPokecenter2FMovementData_PlayerTakesTwoStepsDown:
	step DOWN
	step DOWN
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepDown:
	step DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsRightAndDown:
	slow_step RIGHT
	slow_step DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2:
	slow_step RIGHT
	turn_head DOWN
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight:
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_PlayerWalksOutOfMobileRoom:
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step_end

NihonPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown:
	slow_step RIGHT
	slow_step DOWN
	step_end

NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head LEFT
	step_end

NihonPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingDown:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepDown_2:
	step DOWN
	step_end

NihonPokecenter2FMovementData_PlayerTakesTwoStepsDown_2:
	step DOWN
	step DOWN
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepUp_2:
	step UP
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepRight:
	step RIGHT
	step_end

NihonPokecenter2FMovementData_PlayerTakesOneStepLeft:
	step LEFT
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2:
	slow_step LEFT
	turn_head RIGHT
	step_end

NihonPokecenter2FMovementData_ReceptionistStepsRightLooksLeft_2:
	slow_step RIGHT
	turn_head LEFT
	step_end

NihonText_BattleReceptionistMobile:
	text "Would you like to"
	line "battle over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done

NihonText_TradeReceptionistMobile:
	text "Would you like to"
	line "trade over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done

NihonText_ThisWayToMobileRoom: ; unreferenced
	text "This way to the"
	line "MOBILE ROOM."
	done

NihonText_BattleReceptionistIntro:
	text "Welcome to CABLE"
	line "CLUB COLOSSEUM."

	para "You may battle a"
	line "friend here."

	para "Would you like to"
	line "battle?"
	done

NihonText_TradeReceptionistIntro:
	text "Welcome to CABLE"
	line "TRADE CENTER."

	para "You may trade your"
	line "#MON here with"
	cont "a friend."

	para "Would you like to"
	line "trade?"
	done

NihonText_TimeCapsuleReceptionistIntro:
	text "Welcome to CABLE"
	line "CLUB TIME CAPSULE."

	para "You can travel to"
	line "the past and trade"
	cont "your #MON."

	para "Would you like to"
	line "trade across time?"
	done

NihonYourFriendIsNotReadyText:
	text "Your friend is not"
	line "ready."
	prompt

NihonText_MustSaveGame:
	text "Before opening the"
	line "link, you must"
	cont "save your game."
	done

NihonText_PleaseWait:
	text "Please wait."
	done

NihonText_LinkTimedOut:
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again."
	prompt

NihonText_PleaseComeAgain:
	text "Please come again."
	prompt

NihonText_PleaseComeInDuplicate: ; unreferenced
	text "Please come in."
	prompt

NihonText_TemporaryStagingInLinkRoom: ; unreferenced
	text "We'll put you in"
	line "the link room for"
	cont "the time being."
	done

NihonText_CantLinkToThePast:
	text "You can't link to"
	line "the past here."
	prompt

NihonText_IncompatibleRooms:
	text "Incompatible rooms"
	line "were chosen."
	prompt

NihonText_PleaseComeIn:
	text "Please come in."
	done

NihonText_PleaseEnter: ; unreferenced
	text "Please enter."
	prompt

NihonText_RejectNewMon:
	text "Sorry--@"
	text_ram wStringBuffer1
	text_start
	line "can't be taken."
	prompt

NihonText_RejectMonWithNewMove:
	text "You can't take the"
	line "@"
	text_ram wStringBuffer1
	text " with a"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

NihonText_RejectMonWithMail:
	text "You can't take the"
	line "@"
	text_ram wStringBuffer1
	text " that"
	cont "has MAIL with you."
	prompt

NihonText_TimeCapsuleClosed:
	text "I'm sorry--the"
	line "TIME CAPSULE is"
	cont "being adjusted."
	done

NihonText_TradeRoomClosed:
	text "I'm sorry--the"
	line "TRADE MACHINE is"
	cont "being adjusted."
	done

NihonText_BattleRoomClosed:
	text "I'm sorry--the"
	line "BATTLE MACHINE is"
	cont "being adjusted."
	done

NihonText_MysteryGiftDeliveryGuy_Intro:
	text "Hello! You're"
	line "<PLAYER>, right?"

	para "I have some-"
	line "thing for you."
	done

NihonText_MysteryGiftDeliveryGuy_HereYouGo:
	text "Here you go!"
	done

NihonText_MysteryGiftDeliveryGuy_Outro:
	text "We hope to serve"
	line "you again."
	done

NihonText_MysteryGiftDeliveryGuy_NoRoom:
	text "Oh, you have no"
	line "space for this."

	para "Stop in at any"
	line "#MON CENTER"

	para "across the country"
	line "to pick it up."
	done

NihonText_MysteryGiftDeliveryGuy_SaidNo:
	text "No? That's very"
	line "strange…"
	done

NihonText_OhPleaseWait:
	text "Oh, please wait."
	done

NihonText_ChangeTheLook:
	text "We need to change"
	line "the look here…"
	done

NihonText_LikeTheLook:
	text "How does this"
	line "style look to you?"
	done

NihonText_BrokeStadiumRules:
	text "Excuse me!"

	para "For STADIUM rules,"
	line "please bring six"

	para "different #MON,"
	line "excluding EGGS."

	para "The six #MON"
	line "must be different."

	para "Also, they must"
	line "not be holding"
	cont "identical items."

	para "Please come back"
	line "when you're ready."
	done

NihonPokecenter2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  7, POKECENTER_2F, -1
	warp_event  5,  0, TRADE_CENTER, 1
	warp_event  9,  0, COLOSSEUM, 1
	warp_event 13,  2, TIME_CAPSULE, 1
	warp_event  6,  0, MOBILE_TRADE_ROOM, 1
	warp_event 10,  0, MOBILE_BATTLE_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  7,  3, BGEVENT_READ, NihonPokecenter2FLinkRecordSign

	def_object_events
	object_event  5,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistNihonScript_Trade, -1
	object_event  9,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistNihonScript_Battle, -1
	object_event 13,  3, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistNihonScript_TimeCapsule, -1
	object_event  1,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NihonPokecenter2FOfficerScript, EVENT_MYSTERY_GIFT_DELIVERY_GUY
