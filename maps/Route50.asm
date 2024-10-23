	object_const_def

Route50_MapScripts:
	def_scene_scripts

	def_callbacks

GameHouseSign:
	jumptext GameHouseSignText

GameHouseSignText:
	text "JACKY GEEK HOUSE"
	done

Route50Sign:
	jumptext Route50SignText

Route50SignText:
	text "ROUTE 50"
	para "EAST: SEPIA CITY"
	line "WEST: fuck uh idk"
	done

TrainerLassLowri:
	trainer LASS, LOWRI, EVENT_BEAT_LASS_LOWRI, LassLowriSeenText, LassLowriBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LassLowriAfterBattleText
	waitbutton
	closetext
	end

LassLowriSeenText:
	text "I'm not like"
	line "other LASSes!" ; bwahahahaha
	done

LassLowriBeatenText:
	text "My cute fluffies!"
	done

LassLowriAfterBattleText:
	text "Isn't this place"
	line "beautiful?"
	
	para "I want to move"
	line "here! Away from"
	cont "the big city!" ; This implies she lives in West!
	
	para "I wish HUW would"
	line "understand!"
	done

TrainerYoungsterLuc:
	trainer YOUNGSTER, LUC, EVENT_BEAT_YOUNGSTER_LUC, YoungsterLucSeenText, YoungsterLucBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext YoungsterLucAfterBattleText
	waitbutton
	closetext
	end

YoungsterLucSeenText:
	text "Have you met"
	line "JACKY?"
	done

YoungsterLucBeatenText:
	text "Urk!"
	done

YoungsterLucAfterBattleText:
	text "JACKY is a world-"
	line "class gamer!"
	
	para "You should stop"
	line "by his place!"
	done

TrainerYoungsterHuw:
	trainer YOUNGSTER, HUW, EVENT_BEAT_YOUNGSTER_HUW, YoungsterHuwSeenText, YoungsterHuwBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext YoungsterHuwAfterBattleText
	waitbutton
	closetext
	end

YoungsterHuwSeenText:
	text "Passing through?"
	
	para "Not without a"
	line "battle, you're"
	cont "not!"
	done

YoungsterHuwBeatenText:
	text "Awk!"
	done

YoungsterHuwAfterBattleText:
	text "I want to be as"
	line "good at games"
	cont "as JACKY."
	
	para "But LOWRI keeps"
	line "bothering me!"
	done

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  5, ROUTE_50_SAVOY_CITY_GATE, 3 ; West Gate
	warp_event 15,  4, JACKYS_HOUSE, 1 ; Game House

	def_coord_events

	def_bg_events
	bg_event 14,  5, BGEVENT_READ, GameHouseSign
	bg_event 24, 10, BGEVENT_READ, Route50Sign

	def_object_events
	object_event 23,  7, SPRITE_SPACEWORLD_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassLowri, -1
	object_event 16,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterLuc, -1
	object_event 10,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterHuw, -1
