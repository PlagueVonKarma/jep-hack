; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const SILENT_HILLS_POKEFAN_F
	const SILENT_HILLS_YOUNGSTER
	const SILENT_HILLS_BLUE

SilentHills_MapScripts:
	def_scene_scripts
	scene_script SilentHillsNoopScene, SCENE_SILENT_HILLS_NOOP
	scene_script SilentHillsBlue1, SCENE_SILENT_HILLS_BLUE1
	scene_script SilentHillsBlue2, SCENE_SILENT_HILLS_BLUE2

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilentHillsFlypointCallback

SilentHillsNoopScene:
	end

SilentHillsBlue1:
	checkevent EVENT_DRAGGED_BY_BLUE
	iftrue .end
	moveobject SILENT_HILLS_BLUE, 4, 8
	opentext
	writetext BlueWaitText1
	waitbutton
	closetext
	pause 15
	opentext
	writetext BlueWaitText2
	waitbutton
	closetext
	opentext
	writetext BlueFollowMeText
	playmusic MUSIC_SHOW_ME_AROUND
	appear SILENT_HILLS_BLUE
	applymovement SILENT_HILLS_BLUE, BlueStrideMovement
	opentext 
	writetext BlueFollowMeText
	waitbutton
	closetext
	follow SILENT_HILLS_BLUE, PLAYER, BlueFollowMeMovement1
	stopfollow
	setevent EVENT_DRAGGED_BY_BLUE
	setevent EVENT_GOT_POKEMON_FROM_BLUE ; It's only for the moment, it gets reset once you're actually picking one. Just handles potentially stupid scenarios.
.end
	setscene SCENE_SILENT_HILLS_NOOP
	end

SilentHillsBlue2:
	checkevent EVENT_DRAGGED_BY_BLUE
	iftrue .end
	moveobject SILENT_HILLS_BLUE, 4, 8
	opentext
	writetext BlueWaitText1
	waitbutton
	closetext
	pause 15
	opentext
	writetext BlueWaitText2
	waitbutton
	closetext
	opentext
	writetext BlueFollowMeText
	playmusic MUSIC_SHOW_ME_AROUND
	appear SILENT_HILLS_BLUE
	applymovement SILENT_HILLS_BLUE, BlueStrideMovement
	opentext 
	writetext BlueFollowMeText
	waitbutton
	closetext
	follow SILENT_HILLS_BLUE, PLAYER, BlueFollowMeMovement2
	stopfollow
	setevent EVENT_DRAGGED_BY_BLUE
	setevent EVENT_GOT_POKEMON_FROM_BLUE ; It's only for the moment, it gets reset once you're actually picking one. Just handles potentially stupid scenarios.
.end
	setscene SCENE_SILENT_HILLS_NOOP
	end

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
	text "Do some people"
	line "hate nocturnal"
	cont "#MON?"
	done

BlueWaitText1:
	text "Hey! Hey! Wait!"
	done

BlueWaitText2:	
	text "I said WAIT, bozo!"
	done

BlueFollowMeText:
	text "BLUE: Do you not"
	line "know--"
	
	para "Huh?! It's you!"
	line "You wiped the floor"
	cont "with me before!"
	
	para "What are you doing"
	line "in NIHON?!"
	
	para "…"
	
	para "You may be useful,"
	line "actually. Come with"
	cont "me!"
	done

BlueStrideMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

BlueFollowMeMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

BlueFollowMeMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

; A little message for the cheaters.
SilentHillsWhatScript:
	jumptextfaceplayer SilentHillsWhatText

SilentHillsWhatText:
	text "How on earth did"
	line "you get here?!"
	
	para "You stinker!"
	
	para "…"
	
	para "Well, you must be"
	line "smart…and dedicated."
	
	para "So, props! Thanks"
	line "for playing!"
	done

SilentHills_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  4, SILENT_HILLS_POKECENTER_1F, 1 ; Pokecenter
	warp_event  5,  4, CALS_HOUSE_1F, 1 ; Cal's House
	warp_event 14, 11, BLUE_LAB, 1
	warp_event 15, 11, BLUE_LAB, 2
	warp_event  3, 12, SILVERS_HOUSE, 1

	def_coord_events
	coord_event  1,  9, SCENE_SILENT_HILLS_BLUE1, SilentHillsBlue1
	coord_event  1,  8, SCENE_SILENT_HILLS_BLUE2, SilentHillsBlue2

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
	object_event  0,  0, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilentHillsWhatText, -1
