	object_const_def
	const OLDCITY_FAMILYMAN
	const OLDCITY_FAMILYYOUNGSTER
	const OLDCITY_FAMILYGIRL

OldCityFamilyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

OldCityFamilyManScript:
	jumptextfaceplayer OldCityFamilyManText

OldCityFamilyManText:
	text "SEPIA CITY is"
	line "known for its"
	cont "traditional archi-"
	cont "tecture."
	done

OldCityFamilyYoungsterScript:
	jumptextfaceplayer OldCityFamilyYoungsterText

OldCityFamilyYoungsterText:
	text "My sister is"
	line "always telling"
	cont "tall tales!"
	
	para "A month ago, she"
	line "said she saw a"
	cont "bird with hands!"
	done

OldCityFamilyLassScript:
	jumptextfaceplayer OldCityFamilyLassText

OldCityFamilyLassText:
	text "Daddy! I saw a"
	line "huge lion-like"
	cont "#MON!"
	
	para "It rode on the"
	line "wind!"
	done

OldCityFamilyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, OLD_CITY, 14
	warp_event  3,  7, OLD_CITY, 14

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityFamilyManScript, -1
	object_event  5,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityFamilyYoungsterScript, -1
	object_event  0,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityFamilyLassScript, -1
