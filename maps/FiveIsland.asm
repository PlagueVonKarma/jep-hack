	object_const_def

FiveIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FiveIslandFlypointCallback

FiveIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_FIVE_ISLAND
	endcallback

FiveIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events