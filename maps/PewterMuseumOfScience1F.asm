	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST1
	const PEWTERMUSEUMOFSCIENCE1F_POKEFANM
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST3

PewterMuseumOfScience1F_MapScripts:
	def_scene_scripts
	scene_const SCENE_MUSEUM_TICKET

	def_callbacks

MuseumTicket:
	opentext
	checkevent EVENT_GOT_TICKET
	iftrue .done
	special PlaceMoneyTopRight
	writetext Museum1FText_BuyTicket
	yesorno
	iffalse .done
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .cantafford
	takemoney YOUR_MONEY, 50
	waitsfx
	playsound SFX_TRANSACTION
	closetext
	applymovement PLAYER, MuseumComeInMovement
	sjump .superdone
.cantafford
	opentext
	writetext Museum1FText_NoMoney
	waitbutton
	closetext
.done
	opentext
	writetext Museum1FText_ComeAgain
	waitbutton
	closetext
	clearevent EVENT_GOT_TICKET ; This means you have to pay if you go back but that's just kinda funny.
	applymovement PLAYER, MuseumComeAgainMovement
.superdone
	end

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

MuseumOldManScript:
	faceplayer
	opentext
	writetext MuseumOldManText
	waitbutton
	closetext
	end

MuseumOldManText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

MuseumSadaScript:
	faceplayer
	opentext
	writetext MuseumSadaText
	waitbutton
	closetext
	end

MuseumSadaText:
	text "These books are"
	line "so cool!"
	
	para "I want to find"
	line "these #MON"
	cont "when I grow up!"
	done

MuseumAmberManScript:
	faceplayer
	opentext
	writetext MuseumAmberManText
	waitbutton
	closetext
	end

MuseumAmberManText:
	text "Huh? This stand?"
	
	para "I used to study"
	line "a piece of OLD"
	cont "AMBER, and had"
	cont "a kid take it"
	cont "to a SCIENTIST"
	cont "in CINNABAR."
	
	para "It turned out"
	line "to contain DNA"
	cont "of a DECILLA!"
	
	para "Crazy, huh?"
	done

Museum1FText_ComeAgain:
	text "Come again!"
	done

Museum1FText_BuyTicket:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

Museum1FText_BoughtTicket:
	text "Right, ¥50!"
	line "Thank you!"
	done

Museum1FText_NoMoney:
	text "You don't have"
	line "enough money."
	prompt

MuseumComeAgainMovement:
	step DOWN
	turn_head DOWN
	step_end

MuseumComeInMovement:
	step UP
	turn_head UP
	step_end

; We need this guy to check your facing or coords but idk how to do it rn and cba to search through code. sue me. ~ PvK
MuseumReceptionistScript:
	faceplayer
	opentext
	writetext MuseumReceptionistText
	waitbutton
	closetext
	end

; Temporary
HelixFossilScript:
	opentext
	writetext HelixFossilText
	waitbutton
	closetext
	end

HelixFossilText:
	text "OMANYTE FOSSIL"
	line "An ancient and"
	cont "primitive #-"
	cont "MON."
	done

CuratorScript:
	opentext
	writetext CuratorText
	waitbutton
	closetext
	end

CuratorText:
	text "It's a photo"
	line "of the museum's"
	cont "curator, PHINEAS"
	cont "FOGG."
	done

VioletBookScript:
	opentext
	writetext VioletBookText
	waitbutton
	closetext
	end

VioletBookText:
	text "Comment to be"
	line "written."
	done

ScarletBookScript:
	opentext
	writetext ScarletBookText
	waitbutton
	closetext
	end

ScarletBookText:
	text "Comment to be"
	line "written."
	done

MuseumReceptionistText:
	text "Welcome to the"
	line "PEWTER MUSEUM OF"
	cont "SCIENCE! We have"
	cont "just re-opened!"
	prompt

MuseumReceptionistLol:
	text "You can't sneak"
	line "in the back way!"
	
	para "Sigh…"
	
	para "A kid did this"
	line "once, you know."
	cont "Then he went on"
	cont "to become the"
	cont "CHAMPION."
	
	para "Huh?! You're the"
	line "JOHTO LEAGUE CHAMP?"
	
	para "Well, I'll be!"
	
	para "If you see our"
	line "champ, tell him"
	cont "we said hi!"
	done

AerodactylFossilScript:
	opentext
	writetext AerodactylFossilText
	waitbutton
	closetext
	end

AerodactylFossilText:
	text "AERODACTYL FOSSIL"
	line "The progenitor of"
	cont "birds that terror-"
	cont "ised our skies!"
	done

KabutopsFossilScript:
	opentext
	writetext KabutopsFossilText
	waitbutton
	setval KABUTOPS
	end

KabutopsFossilText:
	text "KABUTOPS FOSSIL"
	line "It attacked fish"
	cont "with its sickle-"
	cont "like arms!"
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
	coord_event  9,  4, SCENE_MUSEUM_TICKET, MuseumTicket
	coord_event 10,  4, SCENE_MUSEUM_TICKET, MuseumTicket

	def_bg_events
	bg_event  6,  1, BGEVENT_UP, HelixFossilScript
	bg_event  2,  6, BGEVENT_UP, AerodactylFossilScript
	bg_event  2,  3, BGEVENT_UP, KabutopsFossilScript
	bg_event  7,  0, BGEVENT_UP, CuratorScript
	bg_event  9,  1, BGEVENT_UP, VioletBookScript
	bg_event  8,  1, BGEVENT_UP, ScarletBookScript

	def_object_events
	object_event 12,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MuseumFossilScientist, -1
	object_event  1,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MuseumOldManScript, -1
	object_event 17,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MuseumAmberManScript, -1
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumReceptionistScript, -1
	object_event  7,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumSadaScript, -1
	