; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	;const GLOBALTERMINALOUTSIDE_ROCKET

SilentHills_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilentHillsFlypointCallback

SilentHillsFlypointCallback:
	setflag ENGINE_FLYPOINT_SILENT_HILLS
	endcallback

SilentHillsSign1:
	jumptext SilentHillsSign1Text

SilentHillsSign1Text:
	text "CAL's House"
	done

SilentHillsSign2:
	jumptext SilentHillsSign2Text

SilentHillsSign2Text:
	text "SILENT HILLS"
	line "Ever peaceful..."
	done

SilentHillsSign3:
	jumptext SilentHillsSign3Text

SilentHillsSign3Text:
	text "TO LET" ; It technically says "HOUSE TO RENT" but this is more natural.
	done

SilentHillsSign4:
	jumptext SilentHillsSign4Text

SilentHillsSign4Text:
	text "Huh? The door is"
	line "closed..."
	done

SilentHillsSign5:
	jumptext SilentHillsSign5Text

SilentHillsSign5Text:
	text "<RIVAL>'s House"
	done

SilentHillsPokecenterSign:
	jumpstd PokecenterSignScript

SilentHillPokefanF:
	jumptextfaceplayer SilentHillPokefanFText

SilentHillPokefanFText:
	text "Your PACK is so"
	line "cool! Where did"
	cont "you get it?"
	done

SilentHillYoungster:
	jumptextfaceplayer SilentHillManText

SilentHillManText:
	text "Are there people"
	line "who hate #MON"
	cont "at night?"
	done

SilentHills_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  4, SILENT_HILLS_POKECENTER_1F, 1 ; Pokecenter
	warp_event  5,  4, CALS_HOUSE_1F, 1 ; Cal's House
	warp_event 14, 11, PLAYERS_HOUSE_1F, 1 ; Blue's Lab
	warp_event 15, 11, PLAYERS_HOUSE_1F, 1 ; Blue's Lab
	warp_event  3, 12, SILVERS_HOUSE, 1 ; Silver's House

	def_coord_events

	def_bg_events
	bg_event  8,  4, BGEVENT_READ, SilentHillsSign1
	bg_event 16,  5, BGEVENT_READ, SilentHillsSign2
	bg_event 10, 11, BGEVENT_READ, SilentHillsSign3
	bg_event 15, 11, BGEVENT_READ, SilentHillsSign4
	bg_event 14, 11, BGEVENT_READ, SilentHillsSign4
	bg_event  6, 12, BGEVENT_READ, SilentHillsSign5
	bg_event 14,  4, BGEVENT_READ, SilentHillsPokecenterSign
	
	def_object_events
	object_event  8,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilentHillPokefanF, -1
	object_event  9, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilentHillYoungster, -1
