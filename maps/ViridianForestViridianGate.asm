	object_const_def
	const VIRIDIANFORESTVIRIDIANGATEOFFICER

ViridianForestViridianGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
ViridianForestViridianGateOfficerScript:
	jumptextfaceplayer ViridianForestViridianGateOfficerText
	
ViridianForestViridianGateOfficerText:
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	para "Be careful, it's"
	line "a natural maze!"
	done

ViridianForestYoungsterTextScript:
	jumptextfaceplayer ViridianForestYoungsterText

ViridianForestYoungsterText:
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	cont "Do you have one?"
	done

ViridianForestViridianGate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2, 6
	warp_event  5,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestViridianGateOfficerScript, -1
	object_event  6,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungsterTextScript, -1
