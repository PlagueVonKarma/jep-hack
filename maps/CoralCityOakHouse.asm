; Impostor Oak's house in Coral City. The player has to find him~
	object_const_def
	const CORALCITYOAKHOUSE_WOMAN
	const CORALCITYOAKHOUSE_OAK

CoralCityOakHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; There's a woman that Impostor Oak shacks up with for some reason.
; To me, this must be either his wife, or someone he womanises to score a hideout.
; I chose the funniest option possible.
CoralCityOakHouseWomanScript:
	jumptextfaceplayer CoralCityOakHouseWomanText

CoralCityOakHouseWomanText:
	text "OAK? Oh, he's a"
	line "wonderful man, is"
	cont "he not?"
	
	para "We met not too"
	line "long ago, it was"
	cont "love at first"
	cont "sight!"
	done

; Obviously not finished.
CoralCityOakHouseOakScript:
	jumptextfaceplayer CoralCityOakHouseOakText

CoralCityOakHouseOakText:
	text "Comment to be"
	line "written."
	done

CoralCityOakHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CORAL_CITY, 5
	warp_event  5,  7, CORAL_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityOakHouseWomanScript, -1
	object_event  6,  4, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityOakHouseOakScript, -1
