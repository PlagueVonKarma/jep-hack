	object_const_def
	const WINNERS_PATH_COOLTRAINERM1
	const WINNERS_PATH_COOLTRAINERM2
	const WINNERS_PATH_BEAUTY
	const WINNERS_PATH_BOULDER1
	const WINNERS_PATH_NPCITEM1
	const WINNERS_PATH_NPCITEM2
	const WINNERS_PATH_ROCK

WinnersPath_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, WinnersPathSwitchClickCallback
	callback MAPCALLBACK_CMDQUEUE, WinnersPathSwitchCallback

; This replicates the boulder switch functionality of RBY.
; Not sure why they removed this to be honest, it's quite nice.
; This is extremely hacky and the boulder won't move if you reload the map and put it back on the switch, but given there's no function for switches and I can't be bothered to make one, this will do.
WinnersPathSwitchCallback:
	checkevent EVENT_WINNERS_PATH_SWITCH_PRESSED
	iftrue .noBoulderNeeded
	writecmdqueue .CommandQueue
.noBoulderNeeded
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp (or in our case, the switch)

.StoneTable:
	stonetable 7, WINNERS_PATH_BOULDER1, .Boulder1
	db -1 ; end

.Boulder1:
	checkevent EVENT_WINNERS_PATH_SWITCH_PRESSED
	iftrue .skip
	pause 30
	scall .switchClicked
	setevent EVENT_WINNERS_PATH_SWITCH_PRESSED
	opentext
	writetext WinnersPathDoorOpenedText
	waitbutton
	closetext
	changeblock  2, 22, $1C ; boulder gate
	changeblock  4, 24, $59 ; switch
	reloadmappart
	delcmdqueue CMDQUEUE_STONETABLE, .StoneTable
	; fallthrough
.skip
	end

.switchClicked:
	playsound SFX_STRENGTH
	earthquake 80
	end

WinnersPathSwitchClickCallback:
	checkevent EVENT_WINNERS_PATH_SWITCH_PRESSED
	iffalse .keepBlock
	changeblock  2, 22, $1C ; boulder gate
	changeblock  4, 24, $59 ; switch
.keepBlock
	endcallback

WinnersPathDoorOpenedText:
	text "The switch was"
	line "pressed!"
	done

WinnersPathSign1Script:
	jumptext WinnersPathSign1Text

WinnersPathSign2Script:
	jumptext WinnersPathSign2Text

WinnersPathSign1Text:
	text "WINNER'S PATH"
	line "You've faced the"
	cont "best! Now fight"
	cont "the winners!" ; There has to be a better way to do this, right?
	done

WinnersPathSign2Text:
	text "WINNER'S PATH"
	line "NIHON ahead."
	
	para "Congratulations,"
	line "champion!"
	done

TrainerCoolTrainerErick:
	trainer COOLTRAINERM, ERICK, EVENT_BEAT_COOLTRAINERM_ERICK, CoolTrainerErickSeenText, CoolTrainerErickBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CoolTrainerErickAfterBattleText
	waitbutton
	closetext
	end

CoolTrainerErickSeenText:
	text "You must have"
	line "gone through a"
	cont "lot to get here!"
	
	para "Can you keep up?"
	done

CoolTrainerErickBeatenText:
	text "Sure can!"
	prompt

CoolTrainerErickAfterBattleText:
	text "This is your big"
	line "moment! Go on!"
	done

TrainerCoolTrainerAndy:
	trainer COOLTRAINERM, ANDY, EVENT_BEAT_COOLTRAINERM_ANDY, CoolTrainerAndySeenText, CoolTrainerAndyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CoolTrainerAndyAfterBattleText
	waitbutton
	closetext
	end

CoolTrainerAndySeenText:
	text "What the? You're"
	line "the newest JOHTO"
	cont "LEAGUE CHAMPION?"
	
	para "No way! Let me"
	line "take you back"
	cont "home, kid!"
	done

CoolTrainerAndyBeatenText:
	text "Wh-whoa! Strong!"
	prompt

CoolTrainerAndyAfterBattleText:
	text "I'm so, so sorry."
	
	para "It's exactly my"
	line "fault!"
	done

TrainerBeautyJaclyn:
	trainer BEAUTY, JACLYN, EVENT_BEAT_BEAUTY_JACLYN, BeautyJaclynSeenText, BeautyJaclynBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BeautyJaclynAfterBattleText
	waitbutton
	closetext
	end

BeautyJaclynSeenText:
	text "Oh, a cute"
	line "TRAINER! Let's"
	cont "see how you"
	cont "got here!"
	done

BeautyJaclynBeatenText:
	text "Hey, take it"
	line "easy! You won"
	cont "already!"
	prompt

BeautyJaclynAfterBattleText:
	text "I love meeting"
	line "the strong"
	cont "TRAINERs here."
	
	para "Many used to be"
	line "CHAMPIONs! Eek!"
	done

WinnersPathBoulder:
	jumpstd StrengthBoulderScript

WinnersPathRock:
	jumpstd SmashRockScript

WinnersPathItem1:
	itemball TM_CURSE

WinnersPathItem2:
	itemball TM_ROLLOUT

WinnersPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 49, WINNERS_PATH_OUTSIDE, 3
	warp_event 17, 39, WINNERS_PATH, 3
	warp_event 15, 29, WINNERS_PATH, 2
	warp_event  3, 21, WINNERS_PATH, 5
	warp_event  3, 11, WINNERS_PATH, 4
	warp_event 17,  5, WINNERS_PATH_OUTSIDE, 4 ; Some Route...
	warp_event  5, 24, WINNERS_PATH_OUTSIDE, 4 ; Dummy warp for the switch. Hope this works!

	def_coord_events

	def_bg_events
	bg_event  2, 48, BGEVENT_READ, WinnersPathSign1Script
	bg_event 16,  4, BGEVENT_READ, WinnersPathSign2Script

	def_object_events
	object_event  9, 43, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerErick, -1
	object_event  8, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerAndy, -1
	object_event  7,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyJaclyn, -1
	object_event 14, 23, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WinnersPathBoulder, -1
	object_event 10,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WinnersPathItem1, EVENT_WINNERS_PATH_ITEM1
	object_event  2, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WinnersPathItem2, EVENT_WINNERS_PATH_ITEM2
	object_event  3, 28, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WinnersPathRock, -1
