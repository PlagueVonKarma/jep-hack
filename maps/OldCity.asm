	object_const_def
	const OLDCITY_FRUITTREE
	const OLDCITY_GRAMPS
	const OLDCITY_TWIN
	const OLDCITY_BUGCATCHER
	const OLDCITY_YOUNGSTER
	const OLDCITY_SUPERNERD
	const OLDCITY_GRANNY
	const OLDCITY_MONSTER

OldCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OldCityFlypointCallback

OldCityFlypointCallback:
	setflag ENGINE_FLYPOINT_OLD
	endcallback

HoneyGrandmaSignScript:
	jumptext HoneyGrandmaSignText

HoneyGrandmaSignText:
	text "HONEY GRANDMA's"
	line "house"
	done

OldCityEarlsHouseSignScript:
	jumptext OldCityEarlsHouseSignText

OldCityEarlsHouseSignText:
	text "EARL'S house"
	done

OldCityTrainerSchoolSignScript:
	jumptext OldCityTrainerSchoolSignText

OldCityTrainerSchoolSignText:
	text "SEPIA SCHOOL FOR"
	line "ADVANCED TRAINERS"
	done

OldCityGymSignScript:
	jumptext OldCityGymSignText

OldCityGymSignText:
	text "SEPIA CITY"
	line "#MON GYM"
	para "LEADER: WALKER"
	
	para "The Cunning" ; Man I snapped here
	line "Corvid of the"
	cont "Skies!"
	done

OldCitySouthSignScript:
	jumptext OldCitySouthSignText

OldCitySouthSignText:
	text "SOUTH: ROUTE 50"
	done

; Gets its name from sepia often being used to show the romantic old days, while doubling as an orangey, autumny colour.
OldCitySignScript:
	jumptext OldCitySignText

OldCitySignText:
	text "SEPIA CITY"
	para "The city of gold-"
	line "en leaves." ; doubles as a HGSS ref. maybe have a gold/silver leaf maniac somewhere idfk they're in the game and totally useless
	done

; TODO: What are they doing in the tower? Probably something to do with Shi-Shi, but what?
; the five-story pagoda has different statues on each floor; growlithe, pikachu, tentacruel, ho-oh(fearow?), and abra. the pikachu floor specifically has mediums, otherwise sages. it's mainly a battle place, like sprout tower.
; perhaps it's a test, link w/ the museum on having shi-shi's ball? how to integrate?
PokemonPagodaSignScript:
	jumptext PokemonPagodaSignText

PokemonPagodaSignText:
	text "#MON PAGODA"
	line "Comment to be"
	cont "written."
	done

; museum could possibly be a collector trying to get certain objects. change when you give him certain things?
OldCityMuseumSignScript:
	jumptext OldCityMuseumSignText

OldCityMuseumSignText:
	text "SEPIA ART MUSEUM"
	done

OldCityFruitTree:
	fruittree FRUITTREE_OLD_CITY

OldCityPokecenterSign:
	jumpstd PokecenterSignScript

OldCityMartSign:
	jumpstd MartSignScript

OldCityOldManScript:
	jumptextfaceplayer OldCityOldManText

OldCityOldManText:
	text "The #MON PAGODA"
	line "is only open to"
	cont "citizens."
	
	para "We await a hero." ; or something like that.
	done

OldCityTwinScript:
	jumptextfaceplayer OldCityTwinText

OldCityTwinText:
	text "EARL is the best"
	line "teacher ever!"
	
	para "WALKER had his"
	line "kid study under"
	cont "him!"
	
	done

OldCityBugCatcherScript:
	jumptextfaceplayer OldCityBugCatcherText

OldCityBugCatcherText:
	text "The HONEY GRANDMA"
	line "helped me catch"
	cont "a HERACROSS!"
	
	para "I'm so happy! My"
	line "friends are so"
	cont "jealous!"
	done

OldCityYoungsterScript:
	jumptextfaceplayer OldCityYoungsterText

OldCityYoungsterText:
	text "Did you come here"
	line "through QUIET"
	cont "CAVE?"
	
	para "My friends go"
	line "there to catch"
	cont "bug #MON!"
	done

OldCitySuperNerdScript:
	jumptextfaceplayer OldCitySuperNerdText

OldCitySuperNerdText:
	text "LARVITAR and I"
	line "are on a journey!"
	
	para "One day, it'll be"
	line "big and strong!"
	done

OldCityLarvitarScript:
	faceplayer
	opentext
	writetext OldCityLarvitarText
	cry LARVITAR
	waitbutton
	closetext
	end

OldCityLarvitarText:
	text "LARVITAR: Hwarg!"
	line "Grr!"
	done

OldCityGrannyScript:
	jumptextfaceplayer OldCityGrannyText

OldCityGrannyText:
	text "WALKER? He's from"
	line "JOHTO. When he"
	cont "left, his son"
	cont "inherited the"
	cont "GYM."
	
	para "You beat him?"
	
	para "Very good."
	done

OldCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 31, ROUTE_49_OLD_CITY_GATE_1F, 3
	warp_event 19, 31, ROUTE_49_OLD_CITY_GATE_1F, 4
	warp_event 21, 26, SEPIA_SCHOOL, 1
	warp_event  3, 26, OLD_MART, 1 ; Mart
	warp_event 27, 12, OLD_CITY_GYM, 1 ; gym right
	warp_event 26, 12, OLD_CITY_GYM, 1 ; gym left
	warp_event  5, 12, OLD_CITY_MUSEUM, 1 ; Museum(?) right
	warp_event  4, 12, OLD_CITY_MUSEUM, 2 ; Museum(?) left
	warp_event 12, 16, POKEMON_PAGODA_1F, 1 ; Pokemon Pagoda right
	warp_event 11, 16, POKEMON_PAGODA_1F, 2 ; Pokemon Pagoda left
	warp_event  3, 31, HONEY_GRANDMAS_HOUSE, 1
	warp_event 27, 28, OLD_CITY_POKECENTER_1F, 1
	warp_event 30, 20, OLD_CITY_EARLS_HOUSE, 2
	warp_event 10, 26, OLD_CITY_FAMILY_HOUSE, 1
; considering a tearoom where the waiters are passive-aggressive. classic kyoto.
	def_coord_events

	def_bg_events
	bg_event 20, 22, BGEVENT_READ, OldCitySignScript
	bg_event  4, 32, BGEVENT_READ, HoneyGrandmaSignScript
	bg_event  8, 14, BGEVENT_READ, PokemonPagodaSignScript
	bg_event 26, 20, BGEVENT_READ, OldCityEarlsHouseSignScript
	bg_event 28, 14, BGEVENT_READ, OldCityGymSignScript
	bg_event  8, 11, BGEVENT_READ, OldCityMuseumSignScript
	bg_event 28, 28, BGEVENT_READ, OldCityPokecenterSign
	bg_event  4, 26, BGEVENT_READ, OldCityMartSign
	bg_event 20, 30, BGEVENT_READ, OldCitySouthSignScript
	bg_event 23, 27, BGEVENT_READ, OldCityTrainerSchoolSignScript

	def_object_events
	object_event 24,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityFruitTree, -1
	object_event  9, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityOldManScript, -1
	object_event 26, 22, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityTwinScript, -1
	object_event 17, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityBugCatcherScript, -1
	object_event 18, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityYoungsterScript, -1
	object_event 14, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCitySuperNerdScript, -1
	object_event 13, 26, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldCityGrannyScript, -1
	object_event 15, 21, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OldCityLarvitarScript, -1
	
	