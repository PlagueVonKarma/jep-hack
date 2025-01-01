	object_const_def
	const RUDDYTOWNBIGHOUSE1_GRANNY

RuddyTownBigHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

; I decided to make her discuss Ballsmiths in general.
; Not very notable in the final game!
RuddyTownBigHouse1GrannyScript:
	jumptextfaceplayer RuddyTownBigHouse1GrannyText

RuddyTownBigHouse1GrannyText:
	text "My grandson is"
	line "studying to be"
	cont "a BALLSMITH!"
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
