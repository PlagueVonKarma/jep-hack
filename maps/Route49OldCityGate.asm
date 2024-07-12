	object_const_def
	const ROUTE49OLDCITYGATE_OFFICER

Route49OldCityGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route49OldCityGateOfficerScript:
	jumptextfaceplayer Route49OldCityOfficerText

Route49OldCityOfficerText:
	text "You're from JOHTO?"
	
	para "Haha, are you home"
	line "sick? We like to"
	cont "call this place a"
	cont "'JOHTO TOWN'."
	
	para "Huh? What's with"
	line "that glare?"
	
	para "It just looks like"
	line "VIOLET CITY, that's"
	cont "all!"
	done

Route49OldCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_49_2, 3
	warp_event  5,  7, ROUTE_49_2, 4
	warp_event  4,  0, DEBUG_ROOM, 1 ; OLD_CITY
	warp_event  5,  0, DEBUG_ROOM, 1 ; OLD_CITY

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route49OldCityGateOfficerScript, -1
