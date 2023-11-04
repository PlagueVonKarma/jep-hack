	object_const_def
	const KANTOPOKECENTER2F_TRADE_RECEPTIONIST
	const KANTOPOKECENTER2F_BATTLE_RECEPTIONIST
	const KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST
	const KANTOPOKECENTER2F_OFFICER

KantoPokecenter2F_MapScripts:
	def_scene_scripts
	scene_script KantoPokecenter2FCheckMysteryGiftScene,      SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	scene_script KantoPokecenter2FLeaveTradeCenterScene,      SCENE_KANTOPOKECENTER2F_LEAVE_TRADE_CENTER
	scene_script KantoPokecenter2FLeaveColosseumScene,        SCENE_KANTOPOKECENTER2F_LEAVE_COLOSSEUM
	scene_script KantoPokecenter2FLeaveTimeCapsuleScene,      SCENE_KANTOPOKECENTER2F_LEAVE_TIME_CAPSULE
	scene_script KantoPokecenter2FLeaveMobileTradeRoomScene,  SCENE_KANTOPOKECENTER2F_LEAVE_MOBILE_TRADE_ROOM
	scene_script KantoPokecenter2FLeaveMobileBattleRoomScene, SCENE_KANTOPOKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM

	def_callbacks

KantoPokecenter2FCheckMysteryGiftScene:
	special CheckMysteryGift
	ifequal $0, .done
	clearevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .done
	sdefer KantoPokecenter2F_AppearMysteryGiftDeliveryGuy
.done
	end

KantoPokecenter2FLeaveTradeCenterScene:
	sdefer KantoScript_LeftCableTradeCenter
	end

KantoPokecenter2FLeaveColosseumScene:
	sdefer KantoScript_LeftCableColosseum
	end

KantoPokecenter2FLeaveTimeCapsuleScene:
	sdefer KantoScript_LeftTimeCapsule
	end

KantoPokecenter2FLeaveMobileTradeRoomScene:
	sdefer KantoScript_LeftMobileTradeRoom
	end

KantoPokecenter2FLeaveMobileBattleRoomScene:
	sdefer KantoScript_LeftMobileBattleRoom
	end

KantoPokecenter2F_AppearMysteryGiftDeliveryGuy:
	appear KANTOPOKECENTER2F_OFFICER
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

KantoScript_TradeCenterClosed:
	faceplayer
	opentext
	writetext KantoText_TradeRoomClosed
	waitbutton
	closetext
	end

KantoScript_BattleRoomClosed:
	faceplayer
	opentext
	writetext KantoText_BattleRoomClosed
	waitbutton
	closetext
	end

LinkReceptionistKantoScript_Trade:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse KantoScript_TradeCenterClosed
	opentext
	writetext KantoText_TradeReceptionistIntro
	yesorno
	iffalse .Cancel
	special Mobile_DummyReturnFalse ; always returns false
	iffalse .NoMobile
	writetext KantoText_TradeReceptionistMobile
	special AskMobileOrCable
	iffalse .Cancel
	ifequal $1, .Mobile
.NoMobile:
	special SetBitsForLinkTradeRequest
	writetext KantoText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext KantoText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext KantoText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .LinkedToFirstGen
	special CheckBothSelectedSameRoom
	iffalse .IncompatibleRooms
	writetext KantoText_PleaseComeIn
	waitbutton
	closetext
	scall KantoPokecenter2F_CheckGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext KantoYourFriendIsNotReadyText
	closetext
	end

.LinkedToFirstGen:
	special FailedLinkToPast
	writetext KantoText_CantLinkToThePast
	special CloseLink
	closetext
	end

.IncompatibleRooms:
	writetext KantoText_IncompatibleRooms
	special CloseLink
	closetext
	end

.LinkTimedOut:
	writetext KantoText_LinkTimedOut
	sjump .AbortLink

.DidNotSave:
	writetext KantoText_PleaseComeAgain
.AbortLink:
	special WaitForOtherPlayerToExit
.Cancel:
	closetext
	end

.Mobile:
	scall .Mobile_TrySave
	iftrue .Mobile_Abort
	scall KantoBattleTradeMobile_WalkIn
	warpcheck
	end

.Mobile_Abort:
	end

.Mobile_TrySave:
	writetext KantoText_MustSaveGame
	yesorno
	iffalse .Mobile_DidNotSave
	special TryQuickSave
	iffalse .Mobile_DidNotSave
	special Function1011f1
	writetext KantoText_PleaseComeIn
	waitbutton
	closetext
	setval FALSE
	end

.Mobile_DidNotSave:
	writetext KantoText_PleaseComeAgain
	closetext
	setval TRUE
	end

KantoBattleTradeMobile_WalkIn:
	applymovementlasttalked KantoPokecenter2FMobileMobileMovementData_ReceptionistWalksUpAndLeft_LookDown
	applymovement PLAYER, KantoPokecenter2FMobileMovementData_PlayerWalksIntoMobileBattleRoom
	end

LinkReceptionistKantoScript_Battle:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse KantoScript_BattleRoomClosed
	opentext
	writetext KantoText_BattleReceptionistIntro
	yesorno
	iffalse .Cancel
	special Mobile_DummyReturnFalse ; always returns false
	iffalse .NoMobile
	writetext KantoText_BattleReceptionistMobile
	special AskMobileOrCable
	iffalse .Cancel
	ifequal $1, .Mobile
.NoMobile:
	special SetBitsForBattleRequest
	writetext KantoText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext KantoText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext KantoText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .LinkedToFirstGen
	special CheckBothSelectedSameRoom
	iffalse .IncompatibleRooms
	writetext KantoText_PleaseComeIn
	waitbutton
	closetext
	scall KantoPokecenter2F_CheckGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext KantoYourFriendIsNotReadyText
	closetext
	end

.LinkedToFirstGen:
	special FailedLinkToPast
	writetext KantoText_CantLinkToThePast
	special CloseLink
	closetext
	end

.IncompatibleRooms:
	writetext KantoText_IncompatibleRooms
	special CloseLink
	closetext
	end

.LinkTimedOut:
	writetext KantoText_LinkTimedOut
	sjump .AbortLink

.DidNotSave:
	writetext KantoText_PleaseComeAgain
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
	scall KantoBattleTradeMobile_WalkIn
	warpcheck
	end

.Mobile_Abort:
	end

.Mobile_TrySave:
	writetext KantoText_MustSaveGame
	yesorno
	iffalse .Mobile_DidNotSave
	special Function103780
	iffalse .Mobile_DidNotSave
	special Function1011f1
	writetext KantoText_PleaseComeIn
	waitbutton
	closetext
	setval FALSE
	end

.Mobile_DidNotSave:
	writetext KantoText_PleaseComeAgain
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
	writetext KantoText_BrokeStadiumRules
	waitbutton
.Mobile_DidNotSelect:
	closetext
	setval FALSE
	end

.Mobile_OK:
	setval TRUE
	end

KantoScript_TimeCapsuleClosed:
	faceplayer
	opentext
	writetext KantoText_TimeCapsuleClosed
	waitbutton
	closetext
	end

LinkReceptionistKantoScript_TimeCapsule:
	checkevent EVENT_MET_BILL
	iftrue KantoScript_TimeCapsuleClosed
	checkflag ENGINE_TIME_CAPSULE
	iftrue KantoScript_TimeCapsuleClosed
	special SetBitsForTimeCapsuleRequest
	faceplayer
	opentext
	writetext KantoText_TimeCapsuleReceptionistIntro
	yesorno
	iffalse .Cancel
	special CheckTimeCapsuleCompatibility
	ifequal $1, .MonTooNew
	ifequal $2, .MonMoveTooNew
	ifequal $3, .MonHasMail
	writetext KantoText_PleaseWait
	special WaitForLinkedFriend
	iffalse .FriendNotReady
	writetext KantoText_MustSaveGame
	yesorno
	iffalse .DidNotSave
	special TryQuickSave
	iffalse .DidNotSave
	writetext KantoText_PleaseWait
	special CheckLinkTimeout_Receptionist
	iffalse .LinkTimedOut
	readmem wOtherPlayerLinkMode
	iffalse .OK
	special CheckBothSelectedSameRoom
	writetext KantoText_IncompatibleRooms
	special CloseLink
	closetext
	end

.OK:
	special EnterTimeCapsule
	writetext KantoText_PleaseComeIn
	waitbutton
	closetext
	scall TimeCapsuleKantoScript_CheckPlayerGender
	warpcheck
	end

.FriendNotReady:
	special WaitForOtherPlayerToExit
	writetext KantoYourFriendIsNotReadyText
	closetext
	end

.LinkTimedOut:
	writetext KantoText_LinkTimedOut
	sjump .Cancel

.DidNotSave:
	writetext KantoText_PleaseComeAgain
.Cancel:
	special WaitForOtherPlayerToExit
	closetext
	end

.MonTooNew:
	writetext KantoText_RejectNewMon
	closetext
	end

.MonMoveTooNew:
	writetext KantoText_RejectMonWithNewMove
	closetext
	end

.MonHasMail:
	writetext KantoText_RejectMonWithMail
	closetext
	end

KantoScript_LeftCableTradeCenter:
	special WaitForOtherPlayerToExit
	scall KantoScript_WalkOutOfLinkTradeRoom
	setscene SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene TRADE_CENTER, SCENE_TRADECENTER_INITIALIZE
	end

KantoScript_LeftMobileTradeRoom:
	special Function101220
	scall KantoScript_WalkOutOfMobileTradeRoom
	setscene SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene MOBILE_TRADE_ROOM, SCENE_MOBILETRADEROOM_INITIALIZE
	end

KantoScript_WalkOutOfMobileTradeRoom:
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerWalksOutOfMobileRoom
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown
	end

KantoScript_LeftCableColosseum:
	special WaitForOtherPlayerToExit
	scall KantoScript_WalkOutOfLinkBattleRoom
	setscene SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene COLOSSEUM, SCENE_COLOSSEUM_INITIALIZE
	end

KantoScript_LeftMobileBattleRoom:
	special Function101220
	scall KantoScript_WalkOutOfMobileBattleRoom
	setscene SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene MOBILE_BATTLE_ROOM, SCENE_MOBILEBATTLEROOM_INITIALIZE
	end

KantoScript_WalkOutOfMobileBattleRoom:
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerWalksOutOfMobileRoom
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown
	end

KantoPokecenter2F_CheckGender:
	readvar VAR_PLAYERGENDER
	ifnotequal MALE, .Female
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesThreeStepsUp
	end

.Female:
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight_2
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesTwoStepsUp
	opentext
	writetext KantoText_OhPleaseWait
	waitbutton
	closetext
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistLooksRight
	turnobject PLAYER, LEFT
	opentext
	writetext KantoText_ChangeTheLook
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	setval (PAL_NPC_RED << 4)
	special SetPlayerPalette
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special UpdatePlayerSprite
	opentext
	writetext KantoText_LikeTheLook
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepUp
	end

KantoScript_WalkOutOfLinkTradeRoom:
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesThreeStepsDown
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

.Female:
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepDown_2
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall KantoScript_RestorePlayerColor
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesTwoStepsDown_2
	applymovement KANTOPOKECENTER2F_TRADE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

KantoScript_WalkOutOfLinkBattleRoom:
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesThreeStepsDown
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

.Female:
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepDown_2
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall KantoScript_RestorePlayerColor
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesTwoStepsDown_2
	applymovement KANTOPOKECENTER2F_BATTLE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightAndDown
	end

TimeCapsuleKantoScript_CheckPlayerGender:
	readvar VAR_PLAYERGENDER
	ifnotequal MALE, .Female
	readvar VAR_FACING
	ifequal LEFT, .MaleFacingLeft
	ifequal RIGHT, .MaleFacingRight
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksDown
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesTwoStepsUp_2
	end

.MaleFacingLeft:
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksDown
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerWalksLeftAndUp
	end

.MaleFacingRight:
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerWalksRightAndUp
	end

.Female:
	readvar VAR_FACING
	ifequal RIGHT, .FemaleFacingRight
	ifequal LEFT, .FemaleFacingLeft
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepUp_2
	sjump .FemaleContinue

.FemaleFacingRight:
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsRightLooksLeft_2
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepRight
	sjump .FemaleContinue

.FemaleFacingLeft:
	applymovementlasttalked KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepLeft
.FemaleContinue:
	opentext
	writetext KantoText_OhPleaseWait
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal UP, .FemaleChangeApperance
	turnobject PLAYER, LEFT
.FemaleChangeApperance:
	opentext
	writetext KantoText_ChangeTheLook
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	setval (PAL_NPC_RED << 4)
	special SetPlayerPalette
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingDown
	faceobject PLAYER, KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special UpdatePlayerSprite
	opentext
	writetext KantoText_LikeTheLook
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepUp_2
	end

KantoScript_LeftTimeCapsule:
	special WaitForOtherPlayerToExit
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .Female
	applymovement KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesTwoStepsDown
	applymovement KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2
	sjump .Done

.Female:
	applymovement KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepDown
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight
	scall KantoScript_RestorePlayerColor
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft
	special UpdatePlayerSprite
	applymovement PLAYER, KantoPokecenter2FMovementData_PlayerTakesOneStepDown
	applymovement KANTOPOKECENTER2F_TIME_CAPSULE_RECEPTIONIST, KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2
.Done:
	setscene SCENE_KANTOPOKECENTER2F_CHECK_MYSTERY_GIFT
	setmapscene TIME_CAPSULE, SCENE_TIMECAPSULE_INITIALIZE
	end

KantoScript_RestorePlayerColor:
	readvar VAR_PLAYERGENDER
	ifequal FEMALE, .Blue
	setval (PAL_NPC_PURPLE << 4)
	special SetPlayerPalette
	end
.Blue
	setval (PAL_NPC_BLUE << 4)
	special SetPlayerPalette
	end
	
KantoPokecenter2FLinkRecordSign:
	refreshscreen
	special DisplayLinkRecord
	closetext
	end

KantoPokecenter2FOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
	iftrue .AlreadyGotGift
	writetext KantoText_MysteryGiftDeliveryGuy_Intro
	yesorno
	iffalse .RefusedGift
	writetext KantoText_MysteryGiftDeliveryGuy_HereYouGo
	promptbutton
	waitsfx
	special GetMysteryGiftItem
	iffalse .BagIsFull
	itemnotify
	setevent EVENT_MYSTERY_GIFT_DELIVERY_GUY
.AlreadyGotGift:
	writetext KantoText_MysteryGiftDeliveryGuy_Outro
	waitbutton
	closetext
	end

.BagIsFull:
	writetext KantoText_MysteryGiftDeliveryGuy_NoRoom
	waitbutton
	closetext
	end

.RefusedGift:
	writetext KantoText_MysteryGiftDeliveryGuy_SaidNo
	waitbutton
	closetext
	end

KantoPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMobileMobileMovementData_ReceptionistWalksUpAndLeft_LookDown:
	slow_step UP
	slow_step LEFT
	turn_head DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksDown:
	slow_step LEFT
	turn_head DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown:
	slow_step RIGHT
	turn_head DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistWalksUpAndLeft_LookRight_2:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_ReceptionistLooksRight:
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_PlayerTakesThreeStepsUp:
	step UP
	step UP
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerTakesTwoStepsUp:
	step UP
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepUp:
	step UP
	step_end

KantoPokecenter2FMobileMovementData_PlayerWalksIntoMobileBattleRoom:
	step UP
	step UP
	step RIGHT
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerTakesTwoStepsUp_2:
	step UP
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerWalksLeftAndUp:
	step LEFT
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerWalksRightAndUp:
	step RIGHT
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerTakesThreeStepsDown:
	step DOWN
	step DOWN
	step DOWN
	step_end

KantoPokecenter2FMovementData_PlayerTakesTwoStepsDown:
	step DOWN
	step DOWN
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepDown:
	step DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsRightAndDown:
	slow_step RIGHT
	slow_step DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_2:
	slow_step RIGHT
	turn_head DOWN
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsRightLooksDown_3:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight:
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMobileMovementData_ReceptionistWalksUpAndLeft:
	slow_step UP
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_PlayerWalksOutOfMobileRoom:
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step_end

KantoPokecenter2FMobileMovementData_ReceptionistWalksRightAndDown:
	slow_step RIGHT
	slow_step DOWN
	step_end

KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingRight:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingLeft:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head LEFT
	step_end

KantoPokecenter2FMovementData_PlayerSpinsClockwiseEndsFacingDown:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepDown_2:
	step DOWN
	step_end

KantoPokecenter2FMovementData_PlayerTakesTwoStepsDown_2:
	step DOWN
	step DOWN
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepUp_2:
	step UP
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepRight:
	step RIGHT
	step_end

KantoPokecenter2FMovementData_PlayerTakesOneStepLeft:
	step LEFT
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsLeftLooksRight_2:
	slow_step LEFT
	turn_head RIGHT
	step_end

KantoPokecenter2FMovementData_ReceptionistStepsRightLooksLeft_2:
	slow_step RIGHT
	turn_head LEFT
	step_end

KantoText_BattleReceptionistMobile:
	text "Would you like to"
	line "battle over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done

KantoText_TradeReceptionistMobile:
	text "Would you like to"
	line "trade over a GAME"

	para "LINK cable or by"
	line "mobile phone?"
	done

KantoText_ThisWayToMobileRoom: ; unreferenced
	text "This way to the"
	line "MOBILE ROOM."
	done

KantoText_BattleReceptionistIntro:
	text "Welcome to CABLE"
	line "CLUB COLOSSEUM."

	para "You may battle a"
	line "friend here."

	para "Would you like to"
	line "battle?"
	done

KantoText_TradeReceptionistIntro:
	text "Welcome to CABLE"
	line "TRADE CENTER."

	para "You may trade your"
	line "#MON here with"
	cont "a friend."

	para "Would you like to"
	line "trade?"
	done

KantoText_TimeCapsuleReceptionistIntro:
	text "Welcome to CABLE"
	line "CLUB TIME CAPSULE."

	para "You can travel to"
	line "the past and trade"
	cont "your #MON."

	para "Would you like to"
	line "trade across time?"
	done

KantoYourFriendIsNotReadyText:
	text "Your friend is not"
	line "ready."
	prompt

KantoText_MustSaveGame:
	text "Before opening the"
	line "link, you must"
	cont "save your game."
	done

KantoText_PleaseWait:
	text "Please wait."
	done

KantoText_LinkTimedOut:
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again."
	prompt

KantoText_PleaseComeAgain:
	text "Please come again."
	prompt

KantoText_PleaseComeInDuplicate: ; unreferenced
	text "Please come in."
	prompt

KantoText_TemporaryStagingInLinkRoom: ; unreferenced
	text "We'll put you in"
	line "the link room for"
	cont "the time being."
	done

KantoText_CantLinkToThePast:
	text "You can't link to"
	line "the past here."
	prompt

KantoText_IncompatibleRooms:
	text "Incompatible rooms"
	line "were chosen."
	prompt

KantoText_PleaseComeIn:
	text "Please come in."
	done

KantoText_PleaseEnter: ; unreferenced
	text "Please enter."
	prompt

KantoText_RejectNewMon:
	text "Sorry--@"
	text_ram wStringBuffer1
	text_start
	line "can't be taken."
	prompt

KantoText_RejectMonWithNewMove:
	text "You can't take the"
	line "@"
	text_ram wStringBuffer1
	text " with a"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

KantoText_RejectMonWithMail:
	text "You can't take the"
	line "@"
	text_ram wStringBuffer1
	text " that"
	cont "has MAIL with you."
	prompt

KantoText_TimeCapsuleClosed:
	text "I'm sorry--the"
	line "TIME CAPSULE is"
	cont "being adjusted."
	done

KantoText_TradeRoomClosed:
	text "I'm sorry--the"
	line "TRADE MACHINE is"
	cont "being adjusted."
	done

KantoText_BattleRoomClosed:
	text "I'm sorry--the"
	line "BATTLE MACHINE is"
	cont "being adjusted."
	done

KantoText_MysteryGiftDeliveryGuy_Intro:
	text "Hello! You're"
	line "<PLAYER>, right?"

	para "I have some-"
	line "thing for you."
	done

KantoText_MysteryGiftDeliveryGuy_HereYouGo:
	text "Here you go!"
	done

KantoText_MysteryGiftDeliveryGuy_Outro:
	text "We hope to serve"
	line "you again."
	done

KantoText_MysteryGiftDeliveryGuy_NoRoom:
	text "Oh, you have no"
	line "space for this."

	para "Stop in at any"
	line "#MON CENTER"

	para "across the country"
	line "to pick it up."
	done

KantoText_MysteryGiftDeliveryGuy_SaidNo:
	text "No? That's very"
	line "strange…"
	done

KantoText_OhPleaseWait:
	text "Oh, please wait."
	done

KantoText_ChangeTheLook:
	text "We need to change"
	line "the look here…"
	done

KantoText_LikeTheLook:
	text "How does this"
	line "style look to you?"
	done

KantoText_BrokeStadiumRules:
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

KantoPokecenter2F_MapEvents:
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
	bg_event  7,  3, BGEVENT_READ, KantoPokecenter2FLinkRecordSign

	def_object_events
	object_event  5,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistKantoScript_Trade, -1
	object_event  9,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistKantoScript_Battle, -1
	object_event 13,  3, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LinkReceptionistKantoScript_TimeCapsule, -1
	object_event  1,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KantoPokecenter2FOfficerScript, EVENT_MYSTERY_GIFT_DELIVERY_GUY
