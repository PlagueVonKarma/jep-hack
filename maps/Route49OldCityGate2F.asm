	object_const_def
	const ROUTE49OLDCITYGATE2F_LASS
	const ROUTE49OLDCITYGATE2F_TWIN

Route49OldCityGate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route49OldCityGate2FLassScript:
	jumptextfaceplayer Route49OldCityGate2FLassText

Route49OldCityGate2FLassText:
	text "JOHTO? That's where"
	line "KURT is, right?"
	
	para "He visits here so-"
	line "metimes to show us"
	cont "his # BALL"
	cont "craft."
	done

Route49OldCityGate2FTwinScript:
	jumptextfaceplayer Route49OldCityGate2FTwinText

Route49OldCityGate2FTwinText:
	text "You're a tourist?"
	line "That's too bad."
	
	para "The #MON PAGODA"
	line "isn't open to just"
	cont "anyone."
	done

Route49OldCityGate2FTelescopeScript1:
	jumptext Route49OldCityGate2FTelescopeText1

Route49OldCityGate2FTelescopeScript2:
	jumptext Route49OldCityGate2FTelescopeText2

Route49OldCityGate2FTelescopeText1:
	text "<PLAYER> peeked"
	line "into a telescope!"
	
	para "Whoa! There's a"
	line "tall, tall pagoda!"
	done

Route49OldCityGate2FTelescopeText2:
	text "<PLAYER> peeked"
	line "into a telescope!"
	
	para "Hm? There's a"
	line "long, long river."
	done

Route49OldCityGate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  0, ROUTE_49_OLD_CITY_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, Route49OldCityGate2FTelescopeScript1
	bg_event  3,  0, BGEVENT_READ, Route49OldCityGate2FTelescopeScript2

	def_object_events
	object_event  2,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49OldCityGate2FLassScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49OldCityGate2FTwinScript, -1
