	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_SNORLAX
	const VERMILIONCITY_POKEFAN_M
	const VERMILIONCITY_EUSINE
	const VERMILIONCITY_SUICUNE

VermilionCity_MapScripts:
	def_scene_scripts
	scene_script VermilionCityNoop1Scene, SCENE_VERMILIONCITY_NOOP
	scene_script VermilionCityNoop2Scene, SCENE_VERMILIONCITY_SUICUNE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointAndSuicuneCallback

VermilionCityNoop1Scene:
	end

VermilionCityNoop2Scene:
	end

VermilionCityFlypointAndSuicuneCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	checkevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	iftrue .Check2
	sjump .NoAppear

.Check2:
	checkevent EVENT_SAW_SUICUNE_IN_VERMILION_CITY
	iftrue .NoAppear
	sjump .Appear

.Appear
	appear VERMILIONCITY_SUICUNE
	disappear VERMILIONCITY_EUSINE
	endcallback

.NoAppear
	disappear VERMILIONCITY_SUICUNE
	disappear VERMILIONCITY_EUSINE
	endcallback

VermilionCitySuicuneScriptStartupLeft:
	playmusic MUSIC_NONE
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	applymovement PLAYER, VermilionCityPlayerToTheLeftMovement
	sjump VermilionCitySuicuneScript

VermilionCitySuicuneScriptStartupRight:
	playmusic MUSIC_NONE
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	turnobject PLAYER, RIGHT
	sjump VermilionCitySuicuneScript

VermilionCitySuicuneScript:
	playsound SFX_WARP_FROM
	applymovement VERMILIONCITY_SUICUNE, VermilionCitySuicuneMovement1
	pause 15
	cry SUICUNE
	playsound SFX_WARP_FROM
	applymovement VERMILIONCITY_SUICUNE, VermilionCitySuicuneMovement2
	disappear VERMILIONCITY_SUICUNE
	pause 10
	
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	appear VERMILIONCITY_EUSINE
	applymovement VERMILIONCITY_EUSINE, VermilionCityEusineMovement1
	opentext
	writetext VermilionCityEusineSawSuicune
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement VERMILIONCITY_EUSINE, VermilionCityEusineMovement2
	
	setevent EVENT_SAW_SUICUNE_IN_VERMILION_CITY
	setmapscene ROUTE_14, SCENE_ROUTE14_SUICUNE
	setscene SCENE_VERMILIONCITY_NOOP
	disappear VERMILIONCITY_EUSINE
	special RestartMapMusic
	end

VermilionCityPlayerToTheLeftMovement:
	step RIGHT
	step_end

VermilionCityEusineMovement1:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step UP
	step UP
	step_end

VermilionCityEusineMovement2:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

VermilionCitySuicuneMovement1:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step UP
	fast_jump_step LEFT
	remove_sliding
	step_end

VermilionCitySuicuneMovement2:
	set_sliding
	fast_jump_step UP
	fast_jump_step UP
	fast_jump_step UP
	fast_jump_step UP
	fast_jump_step UP
	fast_jump_step UP
	remove_sliding
	step_end

VermilionCityEusineSawSuicune:
	text "EUSINE: So close!"
	line "I thought I could"
	cont "corner it here!"
	
	para "But running on"
	line "water, that's"
	cont "beyond me!"
	
	para "However, I am"
	line "seeing a pattern…"
	
	para "SUICUNE prefers"
	line "water!"
	
	para "That means…"
	
	para "Sorry, <PLAYER>!"
	line "I've got to go!"
	done

VermilionCityTeacherScript:
	jumptextfaceplayer VermilionCityTeacherText

VermilionMachopOwner:
	jumptextfaceplayer VermilionMachopOwnerText

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
	jumptextfaceplayer VermilionCitySuperNerdText

VermilionSnorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext VermilionCitySnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext VermilionCityRadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear VERMILIONCITY_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .Done
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
.AlreadyGotItem:
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityDiglettsCaveSign:
	jumptext VermilionCityDiglettsCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionCityTeacherText:
	text "VERMILION PORT is"
	line "KANTO's seaside"
	cont "gateway."

	para "Luxury liners from"
	line "around the world"
	cont "dock here."
	done

VermilionMachopOwnerText:
	text "My #MON is"
	line "preparing the land"
	cont "for construction."

	para "But I have no"
	line "money to start the"
	cont "project…"
	done

VermilionMachopText1:
	text "MACHOP: Guooh"
	line "gogogoh!"
	done

VermilionMachopText2:
	text "A MACHOP is growl-"
	line "ing while stomping"
	cont "the ground flat."
	done

VermilionCitySuperNerdText:
	text "There are eight"
	line "GYMS in KANTO."

	para "That big building"
	line "is VERMILION's"
	cont "#MON GYM."
	done

VermilionCitySnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

VermilionCityRadioNearSnorlaxText:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "…"

	para "SNORLAX woke up!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Skilled trainers"
	line "gather in KANTO."

	para "GYM LEADERS are"
	line "especially strong."

	para "They won't be easy"
	line "to defeat."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "You've started to"
	line "collect KANTO GYM"
	cont "BADGES?"

	para "Don't you agree"
	line "that the trainers"
	cont "here are tough?"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "I guess you'll be"
	line "finished with your"

	para "conquest of KANTO"
	line "GYMS soon."

	para "Let me know if"
	line "you get all eight"
	cont "BADGES."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "Congratulations!"

	para "You got all the"
	line "KANTO GYM BADGES."

	para "I've got a reward"
	line "for your efforts."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Having a variety"
	line "of #MON types"

	para "should give you an"
	line "edge in battle."

	para "I'm sure the KANTO"
	line "GYM BADGES will"
	cont "help you."
	done

VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	done

VermilionGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "American"
	done

PokemonFanClubSignText:
	text "#MON FAN CLUB"

	para "All #MON Fans"
	line "Welcome!"
	done

VermilionCityDiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

VermilionCityPortSignText:
	text "VERMILION PORT"
	line "ENTRANCE"
	done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 13, POKEMON_FAN_CLUB, 1
	warp_event 13, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 13, VERMILION_MART, 2
	warp_event 21, 17, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 19, VERMILION_GYM, 1
	warp_event 19, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 31, VERMILION_PORT_PASSAGE, 2
	warp_event 34,  7, DIGLETTS_CAVE, 1

	def_coord_events
	coord_event 28, 21, SCENE_VERMILIONCITY_SUICUNE, VermilionCitySuicuneScriptStartupLeft
	coord_event 29, 21, SCENE_VERMILIONCITY_SUICUNE, VermilionCitySuicuneScriptStartupRight

	def_bg_events
	bg_event 25,  3, BGEVENT_READ, VermilionCitySign
	bg_event  5, 19, BGEVENT_READ, VermilionGymSign
	bg_event  5, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 33,  9, BGEVENT_READ, VermilionCityDiglettsCaveSign
	bg_event 27, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 10,  5, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 22, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 23,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 26,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 14, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 34,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionSnorlax, EVENT_VERMILION_CITY_SNORLAX
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
	object_event 24, 24, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VERMILION_CITY_EUSINE
	object_event 31, 21, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_IN_VERMILION_CITY
