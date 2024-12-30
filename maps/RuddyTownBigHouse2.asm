	object_const_def
	const RUDDYTOWNBIGHOUSE2_FISHER

RuddyTownBigHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

RuddyTownBigHouse2FisherScript:
	jumptextfaceplayer RuddyTownBigHouse2FisherText

RuddyTownBigHouse2FisherText:
	text "I met the GURU in"
	line "CORAL CITY the"
	cont "other day."
	
	para "He's something else!"
	line "I learned so much!"
	done

RuddyTownBigHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, RUDDY_TOWN, 6
	warp_event  5,  7, RUDDY_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownBigHouse2FisherScript, -1
