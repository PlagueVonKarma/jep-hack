	object_const_def
	;setflag GLOBALTERMINALOUTSIDE_ROCKET

DebugRoom_MapScripts:
	def_scene_scripts

	def_callbacks

DebugPokemon1Script:
	opentext
	getmonname STRING_BUFFER_3, LUXWAN
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LUXWAN, 24, POISON_STONE
	closetext
	end

DebugPokemon2Script:
	opentext
	getmonname STRING_BUFFER_3, MACHAMP
	writetext ReceivedDebugPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MACHAMP, 31, TM_ROCK_SMASH
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
	cry DOKUROAR
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	loadwildmon DOKUROAR, 60
	startbattle
	reloadmapafterbattle
	end

DebugTextA:
	text "Sparkle..."
	line "Sparkle..."
	done
	
DebugPokemon4Script:
	faceplayer
	opentext
	writetext DebugTextB
	cry DOKUROAR
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon DOKUROAR, 60
	startbattle
	reloadmapafterbattle
	end

DebugTextB:
	text "Do-ku-raaagh!"
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
	givepoke SHI_SHI, 70
	closetext
	end
	
DebugTextC:
	text "I believe I can" 
	line "FLY!"
	done

DebugDexScript:
	faceplayer
	opentext
	writetext DebugTextD
	playsound SFX_FANFARE
	promptbutton
	callasm CheatFillPokedex
	givepoke CELEBI, 50
	closetext
	end

DebugTextD:
	text "Your #DEX is" 
	line "fully complete!"
	done

CheatFillPokedex:
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
	.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	call ByteFill
	ld a, %11111111
	ld bc, 11 ; 249-336
	call ByteFill
	ret

DebugItemScript:
	faceplayer
	opentext
	writetext DebugTextE
	playsound SFX_FANFARE_2
	promptbutton
	giveitem MASTER_BALL, 99
	giveitem LEVEL_BALL, 99
	giveitem MOON_BALL, 99
	giveitem FRIEND_BALL, 99
	giveitem LURE_BALL, 99
	giveitem LOVE_BALL, 99
	giveitem FAST_BALL, 99
	giveitem HEAVY_BALL, 99
	giveitem HM_CUT, 1
	giveitem HM_FLY, 1
	giveitem HM_SURF, 1
	giveitem HM_STRENGTH, 1
	giveitem HM_WHIRLPOOL, 1
	giveitem HM_WATERFALL, 1
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_REPEL, 99
	giveitem RARE_CANDY, 99
	giveitem BICYCLE, 1
	giveitem SUPER_ROD, 1
	closetext
	end

DebugTextE:
	text "<PLAYER> received" 
	line "many items!"
	done

DebugRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 14, PLAYERS_HOUSE_1F, 1
	warp_event  3, 20, SILENT_HILLS, 1
	warp_event 11, 15, LAKE_OF_RAGE, 3
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
	object_event 22, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DebugPokemon1Script, -1
	object_event 27, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DebugPokemon2Script, -1
	object_event 23, 27, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, DebugPokemon3Script, -1
	object_event 26, 27, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, DebugPokemon4Script, -1
	object_event 17, 13, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PURPLE, OBJECTTYPE_SCRIPT, 0, DebugFlyScript, -1
	object_event 16, 13, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PURPLE, OBJECTTYPE_SCRIPT, 0, DebugDexScript, -1
	object_event 19, 13, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PURPLE, OBJECTTYPE_SCRIPT, 0, DebugItemScript, -1
	
