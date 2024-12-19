	object_const_def
	const ROUTE54_RUDDYTOWNGATE_OFFICER

Route54RuddyTownGate_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route54RuddyTownGateOfficerScript:
	jumptextfaceplayer Route54RuddyTownGateOfficerText

Route54RuddyTownGateOfficerText:
	text "Be careful! ROUTE"
	line "54 is filled with"
	cont "SHARPOON!"
	done

Route54RuddyTownGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, RUDDY_TOWN, 10
	warp_event  5,  7, RUDDY_TOWN, 9
	warp_event  4,  0, DEBUG_ROOM, 1 ; Route 54
	warp_event  5,  0, DEBUG_ROOM, 1 ; Route 54

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route54RuddyTownGateOfficerScript, -1
