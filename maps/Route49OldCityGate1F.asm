	object_const_def
	const ROUTE49OLDCITYGATE1F_OFFICER
	const ROUTE49OLDCITYGATE1F_YOUNGSTER
	const ROUTE49OLDCITYGATE1F_COOLTRAINERM

Route49OldCityGate1F_MapScripts:
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

Route49OldCityGateYoungsterScript:
	jumptextfaceplayer Route49OldCityYoungsterText

Route49OldCityYoungsterText:
	text "SEPIA CITY is on"
	line "the other side"
	cont "of this gate!"
	done

Route49OldCityGateCooltrainerFScript:
	jumptextfaceplayer Route49OldCityCooltrainerFText

Route49OldCityCooltrainerFText:
	text "SEPIA CITY has a"
	line "famous 5-STORY"
	cont "PAGODA!"
	
	para "Have you ever"
	line "been there? You"
	cont "don't seem impres-"
	cont "sessed." ; Since the player is from Johto, this is an everyday experience.
	done

Route49OldCityGate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_49_2, 3
	warp_event  5,  7, ROUTE_49_2, 4
	warp_event  4,  0, OLD_CITY, 1
	warp_event  5,  0, OLD_CITY, 2
	warp_event  1,  0, ROUTE_49_OLD_CITY_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route49OldCityGateOfficerScript, -1
	object_event  6,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49OldCityGateYoungsterScript, -1
	object_event  2,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49OldCityGateCooltrainerFScript, -1
