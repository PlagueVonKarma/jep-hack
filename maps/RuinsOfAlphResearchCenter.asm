	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphResearchCenterNoopScene,        SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	scene_script RuinsOfAlphResearchCenterGetUnownDexScene, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphResearchCenterScientistCallback

RuinsOfAlphResearchCenterNoopScene:
	end

RuinsOfAlphResearchCenterGetUnownDexScene:
	sdefer RuinsOfAlphResearchCenterGetUnownDexScript
	end

RuinsOfAlphResearchCenterScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

RuinsOfAlphResearchCenterGetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	
	; This will be replaced with something in Sinjoh Ruins (eventually)
	ld c, DECOFLAG_UNOWN_DOLL
	farcall SetSpecificDecorationFlag
	opentext
	writetext RoAGotUnownDoll
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

; There isn't even a tileset piece for this, it was removed very early.
; Could reuse somewhere.
RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional #DEX"

	para "to store UNOWN"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER>'s #DEX"
	line "was upgraded."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling UNOWN."

	para "Feel free to use"
	line "it anytime."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "I wonder how many"
	line "kinds of #MON"
	cont "are in the RUINS?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "#MON appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"

	para "as a habitat for"
	line "#MON."
	
	para "As my way of say-"
	line "ing thanks, take"
	cont "this!"
	done

RoAGotUnownDoll:
	text "<PLAYER> received"
	line "UNOWN DOLL!"
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "The strange #-"
	line "MON you saw in the"
	cont "RUINS?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done

RuinsOfAlphResearchCenterPokeCom:
	faceplayer
	opentext
	writetext RuinsOfAlphResearchCenterPokeComText
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPokeComText: ; previously unreferenced, now reused
	text "We think something"
	line "caused the cryptic"

	para "patterns to appear"
	line "in the RUINS."
	
	para "According to my"
	line "research…"

	para "Those mysterious"
	line "patterns appeared"

	para "when the #COM"
	line "CENTER was built."

	para "It must mean that"
	line "radio waves have"

	para "some sort of a"
	line "link…"
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Mystery #MON"
	line "Name: UNOWN"

	para "A total of {d:NUM_UNOWN}"
	line "kinds found."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "This doesn't seem"
	line "to work yet."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "UNOWN may be"
	line "printed out."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the RESEARCH"

	para "CENTER'S founder,"
	line "PROF.SILKTREE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done

; This scientist uses the funny Kantonian Fossil Scientist's script.
RoAFossilScientist:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove the next two lines to immediately receive the fossil
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveDecilla
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	checkevent EVENT_GAVE_SCIENTIST_CLUB_FOSSIL
	iftrue .GiveXylodon
	checkevent EVENT_GAVE_SCIENTIST_WING_FOSSIL
	iftrue .GiveFeradactyl
	writetext RoAFossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	ifequal REVIVE_CLUB_FOSSIL, .ClubFossil
	ifequal REVIVE_WING_FOSSIL, .WingFossil
	sjump .No

.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, DECILLA
	writetext RoAFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext RoAFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext RoAFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext RoAFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext RoAFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext RoAFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.ClubFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, XYLODON
	writetext RoAFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_CLUB_FOSSIL
	takeitem HELIX_FOSSIL
	writetext RoAFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.WingFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, FERADACTYL
	writetext RoAFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_WING_FOSSIL
	takeitem HELIX_FOSSIL
	writetext RoAFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext RoAFossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext RoAFossilScientistTimeText
	waitbutton
	closetext
       ; older versions will use FadeBlackQuickly below instead
	; special FadeOutToBlack ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.GiveDecilla:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext RoAFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, DECILLA
	writetext RoAFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext RoAFossilScientistMonText
	givepoke DECILLA, 30
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext RoAFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext RoAFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext RoAFossilScientistMonText
	givepoke KABUTO, 30
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext RoAFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext RoAFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext RoAFossilScientistMonText
	givepoke OMANYTE, 30
	closetext
	end

.GiveXylodon:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_CLUB_FOSSIL
	writetext RoAFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, XYLODON
	writetext RoAFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext RoAFossilScientistMonText
	givepoke XYLODON, 30
	closetext
	end

.GiveFeradactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_WING_FOSSIL
	writetext RoAFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, FERADACTYL
	writetext RoAFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext RoAFossilScientistMonText
	givepoke FERADACTYL, 30
	closetext
	end

.NoRoom:
	writetext RoAFossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y + 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 6 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CLUB FOSSIL@"
	db "WING FOSSIL@"
	db "CANCEL@"

RoAFossilScientistIntroText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

RoAFossilScientistNoText:
	text "No! Is too bad!"

	para "You come again!"
	done

RoAFossilScientistPartyFullText:
	text "No! Is too bad!"

	para "Your party is"
	line "already full!"
	done

RoAFossilScientistTimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

RoAFossilScientistDoneText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"
	done

RoAFossilScientistMonText:
	text "Oh! That is"
	line "a fossil!"

	para "It is fossil of"
	line "@"
	text_ram wStringBuffer3
	text ", a"


	para "#MON that is"
	line "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

RoAFossilScientistGiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

RoAFossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	
	; Since he's now in the Ruins of Alph centre...
	; Let's have him complain.
	; This text is transliterated Chinese, character-for-character.
	; 他们不明白宝可梦化石！比Unown有趣！ (maybe a 更 thrown in).
	; The way the broken English works seems similar enough.
	para "They no understand"
	line "#MON fossils!"
	
	para "Compare UNOWN,"
	line "they more have"
	cont "interest!"
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  7,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event 10,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  7,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event 11,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  6,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	object_event  0,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RoAFossilScientist, -1
	object_event  3,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterPokeCom, -1
