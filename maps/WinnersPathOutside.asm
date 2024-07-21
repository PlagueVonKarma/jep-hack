	object_const_def

WinnersPathOutside_MapScripts:
	def_scene_scripts

	def_callbacks

WinnersPathOutsideSign1Script:
	jumptext WinnersPathOutsideSign1Text

WinnersPathOutsideSign2Script:
	jumptext WinnersPathOutsideSign2Text
	
WinnersPathOutsideSign3Script:
	jumptext WinnersPathOutsideSign3Text

WinnersPathOutsideSign1Text:
	text "#MON LEAGUE"
	line "RECEPTION"
	done

WinnersPathOutsideSign2Text:
	text "WINNER'S PATH"
	line "Warning: Strong"
	cont "#MON ahead!"
	done

WinnersPathOutsideSign3Text:
	text "WINNER'S PATH"
	line "NORTH: NIHON"
	cont "SOUTH: KANTO"
	done

TrainerEngineerDashu:
	trainer ENGINEER, DASHU, EVENT_BEAT_ENGINEER_DASHU, EngineerDashuSeenText, EngineerDashuBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext EngineerDashuAfterBattleText
	waitbutton
	closetext
	end

EngineerDashuSeenText:
	text "Whoa! We don't"
	line "see many folks"
	cont "from JOHTO in"
	cont "these parts!"
	done

EngineerDashuBeatenText:
	text "Gahaha! And you're"
	line "always strong!"
	prompt

EngineerDashuAfterBattleText:
	text "There's a huge"
	line "POWER PLANT near"
	cont "NEW TYPE." ; Change name when necessary.
	
	para "Why aren't I there"
	line "right now?"
	
	para "Aren't you a nosy"
	line "one, eh?"
	done

TrainerCoolTrainerSteve:
	trainer COOLTRAINERM, STEVE, EVENT_BEAT_COOLTRAINERM_STEVE, CoolTrainerSteveSeenText, CoolTrainerSteveBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CoolTrainerSteveAfterBattleText
	waitbutton
	closetext
	end

CoolTrainerSteveSeenText:
	text "NIHON is a great"
	line "place! But do"
	cont "you have what it"
	cont "takes to get"
	cont "there?"
	done

CoolTrainerSteveBeatenText:
	text "Haha! Whoa!"
	prompt

CoolTrainerSteveAfterBattleText:
	text "WINNER'S PATH is"
	line "known for having"
	cont "some of the stro-"
	cont "-ngest #MON of"
	cont "all!"
	
	para "Obvious when"
	line "you think about"
	cont "it, right?"
	done

WinnersPathOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 53, VICTORY_ROAD_GATE, 7
	warp_event 13, 53, VICTORY_ROAD_GATE, 8
	warp_event  4, 41, WINNERS_PATH, 1
	warp_event 10, 23, WINNERS_PATH, 6

	def_coord_events

	def_bg_events
	bg_event 14, 54, BGEVENT_READ, WinnersPathOutsideSign1Script
	bg_event  6, 42, BGEVENT_READ, WinnersPathOutsideSign2Script
	bg_event  6, 16, BGEVENT_READ, WinnersPathOutsideSign3Script

	def_object_events
	object_event  6, 48, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerSteve, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerEngineerDashu, -1
