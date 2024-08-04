	object_const_def
	const SUMMERBEACHHOUSE_VICTOR
	const SUMMERBEACHHOUSE_PUKA

SummerBeachHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; WIP
; I want the Surfin' Dude to teach a high-DV Pikachu Surf.
; Everything here is as I want it, really, it's pretty neat.
; Check engine/events/specials.asm for the funny buggy code.
SummerBeachHouseSurfinDudeScript:
	faceplayer
	opentext
	writetext SummerBeachHouseSurfinDudeText1
	yesorno
	iffalse .NotPikachu
	loadmonindex 1, PIKACHU
	special FindPartyMonThatSpecies ; currently just works with Pikachu
	writetext SummerBeachHouseSurfinDudeText2
	waitbutton
	special CheckPikachu
	ifequal 0, .NotPikachu
	ifequal 1, .GetReward
	sjump .GetReward

.GetReward:
	writetext SummerBeachHouseSurfinDudeTextICanDoIt
	turnobject SUMMERBEACHHOUSE_PUKA, LEFT
	showemote EMOTE_SHOCK, SUMMERBEACHHOUSE_PUKA, 15
	writetext SummerBeachHousePukaTeach
	cry PIKACHU
	waitbutton
	applymovement SUMMERBEACHHOUSE_PUKA, PukaMovement1
	special TeachPikachuSurf
	writetext SummerBeachHouseSurfinDudeTextDone
	applymovement SUMMERBEACHHOUSE_PUKA, PukaMovement2
	waitbutton
	closetext
;	setevent EVENT_TAUGHT_PIKACHU_SURF
	end

.NotPikachu:
	writetext SummerBeachHouseSurfinDudeTextNoHave
	waitbutton
	closetext
	end

.TaughtPikachu:
	writetext SummerBeachHouseSurfinDudeText4
	waitbutton
	closetext
	end

PukaMovement1:
	step LEFT
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

PukaMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step_end

SummerBeachHouseSurfinDudeText1: ; aka Victor
	text "Yo! For many years"
	line "I have wanted to"
	cont "teach a worthy"
	cont "PIKACHU to SURF!"
	
	para "Do you have one?"
	done

SummerBeachHouseSurfinDudeText2:
	text "Ah! A PIKACHU!"
	line "Let's see…"
	done

SummerBeachHouseSurfinDudeTextNoHave:
	text "You don't have"
	line "one? Aww…"
	done

SummerBeachHouseSurfinDudeTextICanDoIt:
	text "Yeah! This PIKACHU"
	line "yearns for the"
	cont "waves!"
	
	para "PUKA, come here!"
	done

SummerBeachHouseSurfinDudeTextDone:
	text "There! You can"
	line "SURF wherever"
	cont "you want with"
	cont "this PIKACHU now!"
	
	para "Come again!"
	done

SummerBeachHousePoster1Script:
	jumptext SummerBeachHousePoster1Text

SummerBeachHousePoster1Text:
	text "SURFIN' DUDE's"
	line "scribbles…"

	para "When I shoot the"
	line "tube, the tunes"
	cont "hit the groove!"
	done

SummerBeachHousePoster2Script:
	jumptext SummerBeachHousePoster2Text

SummerBeachHousePoster2Text:
	text "30 years of waves!"
	line "SURFIN' DUDE"
	done

SummerBeachHousePoster3Script:
	jumptext SummerBeachHousePoster1Text

SummerBeachHousePoster3Text:
	text "It's an old pos-"
	line "ter of the SURF-"
	cont "IN' DUDE with"
	cont "PUKA!"
	done

SummerBeachHousePrinterScript:
	jumptext SummerBeachHousePrinterText1

SummerBeachHousePrinterText1:
	text "It's some sort of"
	line "a machine…"
	done

SummerBeachHouseSurfinDudeText4:
	text "Dogs and burgers"
	line "on special today!"
	done

SummerBeachHousePukaScript:
	faceplayer
	opentext
	writetext SummerBeachHousePuka
	cry PIKACHU
	waitbutton
	closetext
	end

SummerBeachHousePuka:
	text "PUKA: Pikaaaa…"
	done

SummerBeachHousePukaTeach:
	text "PUKA: Pikapika!?"
	done

SummerBeachHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_19, 2
	warp_event  2,  7, ROUTE_19, 2

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SummerBeachHousePoster1Script
	bg_event  7,  0, BGEVENT_READ, SummerBeachHousePoster2Script
	bg_event 13,  1, BGEVENT_READ, SummerBeachHousePrinterScript
	bg_event 11,  0, BGEVENT_READ, SummerBeachHousePoster3Script

	def_object_events
	object_event  3,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SummerBeachHouseSurfinDudeScript, -1
	object_event  8,  5, SPRITE_OVERWORLD_PIKACHU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SummerBeachHousePukaScript, -1
