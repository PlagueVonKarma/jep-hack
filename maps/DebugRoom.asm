	object_const_def
	;const GLOBALTERMINALOUTSIDE_ROCKET

DebugRoom_MapScripts:
	def_scene_scripts

	def_callbacks

DebugPokemon1Script:
	opentext
	getmonname STRING_BUFFER_3, PALSSIO
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PALSSIO, 42, RARE_CANDY
	closetext
	end

DebugPokemon2Script:
	opentext
	getmonname STRING_BUFFER_3, CUBBURN
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CUBBURN, 42, RARE_CANDY
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
	cry GOROCHU
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon GOROCHU, 40
	startbattle
	reloadmapafterbattle
	end

DebugTextA:
	text "Waaaake!!"
	done
	
DebugPokemon4Script:
	faceplayer
	opentext
	writetext DebugTextB
	cry SHI_SHI
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon SHI_SHI, 40
	startbattle
	reloadmapafterbattle
	end

DebugTextB:
	text "Komaiiii!"
	done

DebugFlyScript:
	faceplayer
	opentext
	writetext DebugTextC
	playsound SFX_GET_BADGE
	promptbutton
	setflag ENGINE_STORMBADGE
	readvar VAR_BADGES
	givepoke PIDGEY, 1, HM_FLY
	closetext
	end
	
DebugTextC:
	text "I believe" 
	line "I can FLY"
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
	
