	object_const_def
	const RUDDYTOWNBIGHOUSE1_GRANNY

RuddyTownBigHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

; Her house is bigger than the other so she may have been intended to do something.
; What? Iunno.
RuddyTownBigHouse1GrannyScript:
	jumptextfaceplayer RuddyTownBigHouse1GrannyText

RuddyTownBigHouse1GrannyText:
	text "Comment to be"
	line "written."
	done

RuddyTownBigHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, RUDDY_TOWN, 6
	warp_event  5,  7, RUDDY_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownBigHouse1GrannyScript, -1
