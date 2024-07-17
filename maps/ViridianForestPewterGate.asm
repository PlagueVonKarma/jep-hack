	object_const_def
	const VIRIDIANFORESTPEWTERGATEOFFICER

ViridianForestPewterGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
ViridianForestPewterGateOfficerScript:
	jumptextfaceplayer ViridianForestPewterGateOfficerText

ViridianForestPewterGateOfficerText:
	text "Are you headed"
	line "to PEWTER CITY?"

	para "Be sure to check"
	line "out the MUSEUM!"
	done

ViridianForestPewterGateYoungsterScript:
	jumptextfaceplayer ViridianForestPewterGateYoungsterText

ViridianForestPewterGateYoungsterText:
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestPewterGateGrampsScript:
	jumptextfaceplayer ViridianForestPewterGateGrampsText

ViridianForestPewterGateGrampsText:
	text "Have you noticed"
	line "the bushes on the"
	cont "roadside?"

	para "They can be cut"
	line "down by a special"
	cont "#MON move."
	done

ViridianForestPewterGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1
	warp_event  4,  0, ROUTE_2, 7
	warp_event  5,  0, ROUTE_2, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestPewterGateOfficerScript, -1
	object_event  3,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestPewterGateYoungsterScript, -1
	object_event  6,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestPewterGateGrampsScript, -1
