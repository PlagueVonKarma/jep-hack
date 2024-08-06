	object_const_def

ThreeIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ThreeIslandFlypointCallback

ThreeIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_THREE_ISLAND
	endcallback

ThreeIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events