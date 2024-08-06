	object_const_def

SevenIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SevenIslandFlypointCallback

SevenIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SEVEN_ISLAND
	endcallback

SevenIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events