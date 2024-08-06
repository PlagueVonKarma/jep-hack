	object_const_def

SixIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SixIslandFlypointCallback

SixIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SIX_ISLAND
	endcallback

SixIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events