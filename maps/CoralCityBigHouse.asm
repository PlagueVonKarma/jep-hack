; west-south house
	object_const_def
	const CORALCITYBIGHOUSE1_SAILOR

CoralCityBigHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; I decided to reference Finnegans Wake by James Joyce: He's reading p74!
; The theme of this town is unintelligible slang, so it fits.
CoralCityBigHouseSailorScript:
	jumptextfaceplayer CoralCityBigHouseSailorText

CoralCityBigHouseSailorText:
	text "Our AQUARIUM is"
	line "world-class!"
	
	para "You absolutely"
	line "have to visit!"
	done

CoralCityBigHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAVOY_CITY, 7
	warp_event  5,  7, SAVOY_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityBigHouseSailorScript, -1

