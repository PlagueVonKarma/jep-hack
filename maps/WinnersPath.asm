	object_const_def

WinnersPath_MapScripts:
	def_scene_scripts

	def_callbacks

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

WinnersPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 49, DEBUG_ROOM, 1 ; Will be...Indigo Plateau?
	warp_event 17, 39, WINNERS_PATH, 3
	warp_event 17, 29, WINNERS_PATH, 2
	warp_event  3, 21, WINNERS_PATH, 5
	warp_event  3, 11, WINNERS_PATH, 4
	warp_event 17,  5, DEBUG_ROOM, 3 ; Some Route...

	def_coord_events

	def_bg_events
	bg_event  2, 48, BGEVENT_READ, WinnersPathSign1Text
	bg_event 16,  4, BGEVENT_READ, WinnersPathSign2Text

	def_object_events
	object_event  9, 43, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerErick, -1
	object_event  5, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerAndy, -1
	object_event  7,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCoolTrainerSteve, -1
