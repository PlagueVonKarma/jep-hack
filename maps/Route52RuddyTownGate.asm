	object_const_def
	const ROUTE52_RUDDYTOWNGATE_OFFICER
	const ROUTE52_RUDDYTOWNGATE_GENTLEMAN

Route52RuddyTownGate_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route52RuddyTownGateOfficerScript:
	jumptextfaceplayer Route52RuddyTownGateOfficerText

Route52RuddyTownGateOfficerText:
	text "RUDDY TOWN is a"
	line "mining town at"
	cont "heart."
	
	para "Enjoy your stay!"
	done

Route52RuddyTownGateGentlemanScript:
	jumptextfaceplayer Route52RuddyTownGateGentlemanText

Route52RuddyTownGateGentlemanText:
	text "I'm a stone colle-"
	line "ctor. The miners"
	cont "sometimes share!"
	done

Route52RuddyTownGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_52, 1
	warp_event  5,  7, ROUTE_52, 1
	warp_event  4,  0, RUDDY_TOWN, 1
	warp_event  5,  0, RUDDY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route52RuddyTownGateOfficerScript, -1
	object_event  6,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route52RuddyTownGateGentlemanScript, -1
