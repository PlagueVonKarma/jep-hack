; Ruddy - Old English root for red
; Partial inspiration being taken from Merthyr Tydfil
; The town itself is based on Kyushu, so the ruins/mountain type thing would actually be a volcano.

	object_const_def

RuddyTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_RUDDY
	return

RuddyTownBugCatcherScript:
	jumptextfaceplayer RuddyTownBugCatcherText

RuddyTownBugCatcherText:
	text "The VOLCANO? It's"
	line "mighty scary, I"
	cont "must say. I read"
	cont "that it erupted"
	cont "several times!"
	
	para "The miners say"
	line "it's completely"
	cont "safe, though."
	done

RuddyTownTwinScript:
	jumptextfaceplayer RuddyTownTwinText

RuddyTownTwinText:
	text "Mom! I want to"
	line "explore the"
	cont "VOLCANO!"
	done

RuddyTownBeautyScript:
	jumptextfaceplayer RuddyTownBeautyText

RuddyTownBeautyText:
	text "No, dear, you"
	line "can't!"
	
	para "Kids say the"
	line "darndest things,"
	cont "don't they?"
	done

RuddyTownYoungsterScript:
	jumptextfaceplayer RuddyTownYoungsterText

RuddyTownYoungsterText: ; This will be something story-related for Misty to play with.
	text "Comment to be"
	line "written."
	done

RuddyTownSignScript1:
	jumptext RuddyTownSignText1

RuddyTownSignText1:
	text "RUDDY TOWN"
	line "The land of fire"
	cont "and grit!"
	done

RuddyTownSignScript2:
	jumptext RuddyTownSignText2

RuddyTownSignText2:
	text "TRAINER TIPS"
	line "BEAT UP uses the"
	cont "ATTACK stat of"
	cont "your party memb-"
	cont "ers!"
	
	para "Pair it with #-"
	line "MON like MACHAMP"
	cont "and SHARPOON!"
	done

RuddyTownSignScript3:
	jumptext RuddyTownSignText3

RuddyTownSignText3:
	text "NORTH: ROUTE 54"
	line "EAST: ROUTE 53"
	done

RuddyTownPokecenterSign:
	jumpstd PokecenterSignScript

RuddyTownMartSign:
	jumpstd MartSignScript

RuddyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28, 30, ROUTE_52_RUDDY_TOWN_GATE, 3 ; south gate
	warp_event 29, 30, ROUTE_52_RUDDY_TOWN_GATE, 4 ; south gate
	warp_event 31, 14, RUDDY_TOWN_POKECENTER_1F, 2 ; pokecenter
	warp_event 17, 22, RUDDY_MART, 2 ; mart
	warp_event 33, 19, ROUTE_53_RUDDY_TOWN_GATE, 1 ; east gate
	warp_event 12,  5, DEBUG_ROOM, 2 ; volcano?
	warp_event 24, 10, RUDDY_TOWN_BIG_HOUSE_1, 2 ; north house
	warp_event 31, 23, RUDDY_TOWN_BIG_HOUSE_2, 2 ; south house
	warp_event 29,  5, ROUTE_54_RUDDY_TOWN_GATE, 1 ; north gate
	warp_event 28,  5, ROUTE_54_RUDDY_TOWN_GATE, 2 ; north gate
	
	def_coord_events

	def_bg_events
	bg_event 26, 17, BGEVENT_READ, RuddyTownSignScript1
	bg_event 14, 22, BGEVENT_READ, RuddyTownSignScript2
	bg_event 28, 14, BGEVENT_READ, RuddyTownSignScript3
	bg_event 32, 14, BGEVENT_READ, RuddyTownPokecenterSign
	bg_event 18, 22, BGEVENT_READ, RuddyTownMartSign

	def_object_events
	object_event 29,  9, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownBugCatcherScript, -1
	object_event 23, 20, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownTwinScript, -1
	object_event 19, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownYoungsterScript, -1
	object_event 22, 20, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownBeautyScript, -1
