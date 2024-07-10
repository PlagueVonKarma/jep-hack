	object_const_def
	const CLIFFCAVE_MAN
	const CLIFFCAVE_ROCK1
	const CLIFFCAVE_ROCK2
	const CLIFFCAVE_ROCK3
	const CLIFFCAVE_ROCK4
	const CLIFFCAVE_ROCK5
	const CLIFFCAVE_ROCK6

CliffCave_MapScripts:
	def_scene_scripts

	def_callbacks

CliffCaveMan:
	faceplayer
	opentext
	writetext CliffCaveManText
	waitbutton
	closetext
	end

CliffCaveManText:
	text "I remember a"
	line "friend talking"
	cont "about a strange"
	cont "#MON in UNION"
	cont "CAVE."
	
	para "It was red, and"
	line "bobbed a flaming"
	cont "rock on its nose!"
	done

CliffCaveRock:
	jumpstd SmashRockScript

CliffCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 15, DEBUG_ROOM, 1 ; 1F Out
	warp_event  7,  5, CLIFF_CAVE, 3 ; To 2F from 1F
	warp_event 27,  7, CLIFF_CAVE, 2 ; To 1F from 2F
	warp_event 23, 23, CLIFF_CAVE, 5 ; To 3F from 2F
	warp_event 23,  7, CLIFF_CAVE, 4 ; To 2F from 3F
	;warp_event  5, 15, DEBUG_ROOM, 1 ; 2F Out
	;warp_event  5, 15, DEBUG_ROOM, 1 ; 3F Out

	def_coord_events

	def_bg_events

	def_object_events
	object_event 25,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveMan, -1
	object_event  7, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
	object_event  7, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
	object_event  2, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
	object_event  9,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
	object_event  4,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
	object_event  4,  2, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CliffCaveRock, -1
