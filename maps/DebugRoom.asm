	object_const_def
	;setflag GLOBALTERMINALOUTSIDE_ROCKET

DebugRoom_MapScripts:
	def_scene_scripts

	def_callbacks

DebugPokemon1Script:
	opentext
	getmonname STRING_BUFFER_3, WYNAUT
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke WYNAUT, 14, RARE_CANDY
	closetext
	end

DebugPokemon2Script:
	opentext
	getmonname STRING_BUFFER_3, HERACROSS
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HERACROSS, 47, MASTER_BALL
	closetext
	end

ReceivedDebugPokemonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
DebugPokemon3Script:
	faceplayer
	opentext
	writetext DebugTextA
	cry DUNSPARCE
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon DUNSPARCE, 40
	startbattle
	reloadmapafterbattle
	end

DebugTextA:
	text "Duuuun!!"
	done
	
DebugPokemon4Script:
	faceplayer
	opentext
	writetext DebugTextB
	cry BIPULLA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon BIPULLA, 41
	startbattle
	reloadmapafterbattle
	end

DebugTextB:
	text "Hissss!"
	done

DebugFlyScript:
	faceplayer
	opentext
	writetext DebugTextC
	playsound SFX_GET_BADGE
	promptbutton
	setflag ENGINE_STORMBADGE
	setflag ENGINE_POKEDEX
	setflag ENGINE_MAP_CARD
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	
	setflag ENGINE_FLYPOINT_PLAYERS_HOUSE
	setflag ENGINE_FLYPOINT_DEBUG
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_CINNABAR
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_SILENT_HILLS
	
	addcellnum PHONE_MOM
	readvar VAR_BADGES
	givepoke PIDGEOT, 36, HM_FLY
	closetext
	end
	
DebugTextC:
	text "I believe I can" 
	line "FLY!"
	done

DebugRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 14, PLAYERS_HOUSE_1F, 1
	warp_event  3, 20, SILENT_HILLS, 1
	warp_event 15, 15, LAKE_OF_RAGE, 3
	warp_event 27,  5, PEWTER_CITY, 2
	warp_event 15,  2, GOLDENROD_CITY, 1 ; city warp
	warp_event  4,  9, PALLET_TOWN, 1 ; left lab/league warp
	warp_event  5,  9, PALLET_TOWN, 1 ; right lab/league warp
	warp_event 35, 17, BLUE_FOREST, 1 ; east warp
	warp_event  5, 35, BLUE_FOREST, 1 ; southwest warp
	warp_event 19, 34, BLUE_FOREST, 1 ; southern warp
	warp_event 33, 33, BLUE_FOREST, 1 ; southeast warp
	warp_event  5,  3, AZALEA_TOWN, 1
	warp_event 34, 11, CLIFF_CAVE, 1 

	def_coord_events

	def_bg_events

	def_object_events
	object_event 21, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DebugPokemon1Script, -1
	object_event 24, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DebugPokemon2Script, -1
	object_event 29, 24, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DebugPokemon3Script, -1
	object_event 29, 27, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, DebugPokemon4Script, -1
	object_event 24, 15, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PURPLE, OBJECTTYPE_SCRIPT, 0, DebugFlyScript, -1
	
