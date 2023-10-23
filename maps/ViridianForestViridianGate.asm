ViridianForestViridianGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
ViridianForestViridianGateOfficerScript:
	jumptextfaceplayer ViridianForestViridianGateOfficerText
	
ViridianForestViridianGateOfficerText:
	text "Be careful,"
	line "Viridian Forest"

	para "is a natural"
	line "maze!"
	done

ViridianForestViridianGate_MapEvents:
	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestViridianGateOfficerScript, -1
