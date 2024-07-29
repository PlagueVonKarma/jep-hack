SafariZoneFuchsiaGateBeta_MapScripts:
	def_scene_scripts

	def_callbacks
	scene_const SCENE_SAFARI_ZONE

SafariZoneEntry:
	opentext
	checkevent EVENT_IN_SAFARI_ZONE
	iftrue .exiting
	special PlaceMoneyTopRight
	writetext SafariZoneEntranceText1
	yesorno
	iffalse .refused
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .cantafford
	takemoney YOUR_MONEY, 500
	waitsfx
	playsound SFX_TRANSACTION
	closetext
	
	opentext 
	writetext SafariZoneEntranceText2
	waitbutton
	closetext
	opentext
	verbosegiveitem SAFARI_BALL, 30
	opentext 
	writetext SafariZoneEntranceText3
	waitbutton
	closetext
	
	applymovement PLAYER, SafariZoneEntryMovement
	warpfacing UP, SAFARI_ZONE_BETA, 9,  23
	playsound SFX_ENTER_DOOR
	setevent EVENT_IN_SAFARI_ZONE
	
	; Give the player 500 steps...I think.
	;ld a, 250
	;ld a, 10 ; just to test the PA.
	;ld [wSafariZoneStepCount], a
	;ld [wSafariZoneStepCount+1], a
	;xor a
	
	sjump .done
.cantafford
	opentext
	writetext SafariZoneNoMoneyText
	waitbutton
	closetext
	sjump .refuseEntry
.refused
	opentext
	writetext SafariZoneExitText
	waitbutton
	closetext
	; fallthrough
.refuseEntry
	applymovement PLAYER, SafariZoneRefuseEntryMovement
	sjump .done
.exiting
	checkevent EVENT_IN_SAFARI_ZONE
	iffalse .skip
	opentext
	writetext SafariZoneLeavingEarlyText
	yesorno
	iftrue .leavingEarly
	opentext 
	writetext SafariZoneNoLeaveEarlyText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneNoLeaveEarlyMovement
	warpfacing UP, SAFARI_ZONE_BETA, 9,  23
	playsound SFX_ENTER_DOOR
	jr .done
.leavingEarly
	writetext SafariZoneReturnTheBallsText
	waitbutton
	closetext
	takeitem SAFARI_BALL, 30
	; fallthrough
.skip
	applymovement PLAYER, MuseumLeaveNaturallyMovement
	opentext
	writetext SafariZoneExitText
	waitbutton
	closetext
	clearevent EVENT_IN_SAFARI_ZONE
.done
	end

SafariZoneEntranceText1:
	text "Welcome to the"
	line "SAFARI ZONE!"
	
	para "For just ¥500,"
	line "you can catch all"
	cont "the #MON you"
	cont "want in the park!"

	para "Would you like to"
	line "join the hunt?"
	done

SafariZoneEntranceText2:
	text "That'll be ¥500"
	line "please!"

	para "We only use a"
	line "special # BALL"
	cont "here."
	done

SafariZoneEntranceText3:
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time"
	cont "or SAFARI BALLs!"
	done

SafariZoneExitText:
	text "OK! Please come"
	line "again!"
	done

SafariZoneNoMoneyText:
	text "Oops! Not enough"
	line "money!"
	done

SafariZoneLeavingEarlyText:
	text "Leaving early?"
	done

SafariZoneReturnTheBallsText:
	text "Please return any"
	line "SAFARI BALLs you"
	cont "have left."
	done

SafariZoneNoLeaveEarlyText:
	text "Good luck!"
	done

SafariZoneLeftNaturallyText:
	text "Did you get a"
	line "good haul?"
	cont "Come again!"
	done

SafariZoneFirstTimeText:
	text "Hi! Is it your"
	line "first time here?"
	done

SafariZoneExplanationText:
	text "SAFARI ZONE has 4"
	line "zones in it."

	para "Each zone has"
	line "different kinds"
	cont "of #MON. Use"
	cont "SAFARI BALLs to"
	cont "catch them!"

	para "When you run out"
	line "of time or SAFARI"
	cont "BALLs, it's game"
	cont "over for you!"

	para "Before you go,"
	line "open an unused"
	cont "#MON BOX so"
	cont "there's room for"
	cont "new #MON!"
	done

SafariZoneNoNeedText:
	text "Sorry, you're a"
	line "regular here!"
	done

SafariZoneEntryMovement:
	step UP
	step UP
	step UP
	step_end

SafariZoneNoLeaveEarlyMovement:
	step UP
	step_end

SafariZoneRefuseEntryMovement:
	step DOWN
	step_end

MuseumLeaveNaturallyMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SafariZoneHelper:
	faceplayer
	opentext
	writetext SafariZoneFirstTimeText
	waitbutton
	yesorno
	iffalse .skip
	writetext SafariZoneExplanationText
	sjump .done
.skip
	writetext SafariZoneNoNeedText
.done
	waitbutton
	closetext
	end

SafariZoneFuchsiaGateBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFARI_ZONE_BETA, 1
	warp_event  5,  0, SAFARI_ZONE_BETA, 2
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events
	coord_event  5,  3, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  2,  3, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  4,  3, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  5,  1, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  3,  3, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  4,  1, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  6,  3, SCENE_SAFARI_ZONE, SafariZoneEntry
	coord_event  7,  3, SCENE_SAFARI_ZONE, SafariZoneEntry

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneHelper, -1
