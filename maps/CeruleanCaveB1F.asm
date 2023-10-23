	object_const_def
	const CERULEANCAVEB1F_MEWTWO

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
CeruleanCaveMewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	loadwildmon MEWTWO, 80
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	startbattle
	disappear CERULEANCAVEB1F_MEWTWO
	setevent EVENT_CERULEAN_CAVE_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Myuu!"
	done
	
CeruleanCaveB1F_MapEvents:
	def_warp_events
	warp_event  5,  7, CERULEAN_CAVE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_ITEM + MAX_REVIVE, EVENT_CERULEAN_CAVE_B1F_HIDDEN_MAX_REVIVE
	bg_event 24, 11, BGEVENT_ITEM + ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL
	bg_event  7, 13, BGEVENT_ITEM, CeruleanCityHiddenBerserkGene

	def_object_events
	object_event  7, 13, SPRITE_JYNX, SPRITEMOVEDATA_POKEMON, 0, MEWTWO, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CeruleanCaveMewtwo, EVENT_CERULEAN_CAVE_MEWTWO
	object_event 26,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MAX_ELIXER, 1, EVENT_CERULEAN_CAVE_B1F_MAX_ELIXER
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ULTRA_BALL, 1, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
