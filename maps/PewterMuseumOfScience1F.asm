	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2

PewterMuseumOfScience1F_MapScripts:
	def_scene_scripts

	def_callbacks

; This scientist will use the HGSS Fossil Scientist's script, albeit slightly altered.
MuseumFossilScientist:
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
	writetext MuseumFossilScientistIntroText
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
	writetext MuseumFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext MuseumFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext MuseumFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext MuseumFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext MuseumFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext MuseumFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.ClubFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, XYLODON
	writetext MuseumFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_CLUB_FOSSIL
	takeitem HELIX_FOSSIL
	writetext MuseumFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.WingFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, FERADACTYL
	writetext MuseumFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_WING_FOSSIL
	takeitem HELIX_FOSSIL
	writetext MuseumFossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext MuseumFossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext MuseumFossilScientistTimeText
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
	writetext MuseumFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, DECILLA
	writetext MuseumFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext MuseumFossilScientistMonText
	givepoke DECILLA, 30
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext MuseumFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext MuseumFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext MuseumFossilScientistMonText
	givepoke KABUTO, 30
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext MuseumFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext MuseumFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext MuseumFossilScientistMonText
	givepoke OMANYTE, 30
	closetext
	end

.GiveXylodon:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_CLUB_FOSSIL
	writetext MuseumFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, XYLODON
	writetext MuseumFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext MuseumFossilScientistMonText
	givepoke XYLODON, 30
	closetext
	end

.GiveFeradactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_WING_FOSSIL
	writetext MuseumFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, FERADACTYL
	writetext MuseumFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext MuseumFossilScientistMonText
	givepoke FERADACTYL, 30
	closetext
	end

.NoRoom:
	writetext MuseumFossilScientistPartyFullText
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

MuseumFossilScientistIntroText:
	text "Did you know you"
	line "can revive #MON"
	cont "from fossils?"

	para "If you need to,"
	line "let me take care"
	cont "of it for you!"
	done

MuseumFossilScientistNoText:
	text "Ah, alright."

	para "Come again though,"
	line "you hear?"
	done

MuseumFossilScientistPartyFullText:
	text "Oops!"

	para "Your party is"
	line "full!"
	done

MuseumFossilScientistTimeText:
	text "It'll take a bit"
	line "to revive the"
	cont "fossil."

	para "PEWTER CITY is"
	line "great. Why not"
	cont "go on a little"
	cont "walkabout?"
	done

MuseumFossilScientistDoneText:
	text "There you are!"

	para "Here's your"
	line "#MON!"
	done

MuseumFossilScientistMonText:
	text "Ah, yes!"

	para "That's a fossil"
	line "@"
	text_ram wStringBuffer3
	text "!"

	para "Want me to revive"
	line "it?"
	done

MuseumFossilScientistGiveText:
	text "Alright! Careful,"
	line "now..."

	para "<PLAYER> handed"
	line "over the fossil."
	done

MuseumFossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

PewterMuseumOfScience1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MuseumFossilScientist, -1
