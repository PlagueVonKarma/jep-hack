	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2

PewterMuseumOfScience1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
Museum1FScientistScript:
	jumptextfaceplayer Museum1FScientistText
	
Museum1FGrampsScript:
	jumptextfaceplayer Museum1FGrampsText

Museum1FYoungsterScript:
	jumptextfaceplayer Museum1FYoungsterText

Museum1FFossilScientistScript:
	faceplayer
	opentext
	writetext Museum1FFossilScientistText
	waitbutton
	checkitem HELIX_FOSSIL
	iftrue .own_helix
	checkitem DOME_FOSSIL
	iftrue .own_dome
	checkitem WING_FOSSIL
	iftrue .ask_wing_fossil
	jumptext NoFossilsText

.own_helix
	checkitem DOME_FOSSIL
	iftrue .own_helix_and_dome
	checkitem WING_FOSSIL
	iftrue .ask_helix_wing
	writetext AskHelixFossilText
	yesorno
	iftrue ResurrectHelixFossil
	sjump .maybe_later

.own_dome
	checkitem WING_FOSSIL
	iftrue .ask_dome_wing
	writetext AskDomeFossilText
	yesorno
	iftrue ResurrectDomeFossil
	sjump .maybe_later

.own_helix_and_dome
	checkitem WING_FOSSIL
	iftrue .ask_helix_dome_wing
	loadmenu HelixDomeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectDomeFossil
	sjump .maybe_later

.ask_wing_fossil
	writetext AskWingFossilText
	yesorno
	iftrue ResurrectWingFossil
	sjump .maybe_later

.ask_helix_wing
	loadmenu HelixWingMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectWingFossil
	sjump .maybe_later

.ask_dome_wing
	loadmenu DomeWingMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectDomeFossil
	ifequal $2, ResurrectWingFossil
	sjump .maybe_later

.ask_helix_dome_wing
	loadmenu HelixDomeWingMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectDomeFossil
	ifequal $3, ResurrectWingFossil
.maybe_later:
	jumptext MaybeLaterText

HelixDomeMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Cancel@"

HelixWingMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Wing Fossil@"
	db "Cancel@"

DomeWingMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Dome Fossil@"
	db "Wing Fossil@"
	db "Cancel@"

HelixDomeWingMenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Wing Fossil@"
	db "Cancel@"

ResurrectHelixFossil:
	takeitem HELIX_FOSSIL
	scall ResurrectAFossilScript
	givepoke OMANYTE, 20
	sjump FinishResurrect

ResurrectDomeFossil:
	takeitem DOME_FOSSIL
	scall ResurrectAFossilScript
	givepoke KABUTO, 20
	sjump FinishResurrect

ResurrectWingFossil:
	takeitem WING_FOSSIL
	scall ResurrectAFossilScript
	givepoke AERODACTYL, 20
FinishResurrect:
	iffalse .PartyFull
	jumptext TakeGoodCareOfItText
	
.PartyFull:
	writetext NoRoomForFossilPokemonText
	waitbutton
	closetext
	end

ResurrectAFossilScript:
	writetext ResurrectingPokemonText
	waitbutton
	closetext
	turnobject PEWTERMUSEUMOFSCIENCE1F_SCIENTIST2, RIGHT
	pause 15
	playsound SFX_BOOT_PC
	waitsfx
	pause 30
	playsound SFX_4_NOTE_DITTY
	waitsfx
	pause 5
	waitsfx
	pause 30
	playsound SFX_SHUT_DOWN_PC
	waitsfx
	pause 15
	faceplayer
	opentext
	end

Museum1FReceptionistScript:
	readvar VAR_FACING
	ifequal DOWN, SneakScript
	ifequal LEFT, SneakScript
	jumptextfaceplayer WelcomeText

WelcomeText:
	text "Welcome!"

	para "Thanks to a gene-"
	line "rous donation"
	cont "by Silph Co.,"

	para "admission is free"
	line "of charge!"

	para "Please go ahead."
	done

SneakScript:
	jumptextfaceplayer SneakText

SneakText:
	text "You can't sneak"
	line "in the back way!"
	done

KabutopsFossilSignpostScript:
	refreshscreen
	pokepic KABUTOPS ;placeholder, will become KABUTOPS_FOSSIL later
	waitbutton
	closepokepic
	jumptext KabutopsFossilText

KabutopsFossilText:
	text "Kabutops Fossil"
	line "(Dome)"

	para "A primitive and"
	line "rare #mon."
	done

OmastarFossilSignpostScript:
	refreshscreen
	pokepic OMASTAR ;placeholder, will become OMASTAR_FOSSIL later
	waitbutton
	closepokepic
	jumptext OmastarFossilText
	
OmastarFossilText:
	text "Omastar Fossil"
	line "(Helix)"

	para "A primitive and"
	line "rare #mon."
	done

AerodactylFossilSignpostScript:
	refreshscreen
	pokepic AERODACTYL ;placeholder, will become AERODACTYL_FOSSIL later
	waitbutton
	closepokepic
	jumptext AerodactylFossilText

AerodactylFossilText:
	text "Aerodactyl Fossil"
	line "(Wing)"

	para "A primitive and"
	line "rare #mon."
	done

Museum1FScientistText:
	text "We are proud of"
	line "three fossils of"

	para "rare, prehistoric"
	line "#mon."

	para "I helped assemble"
	line "them!"
	done

Museum1FFossilScientistText:
	text "Did you know that"
	line "you can extract"

	para "#mon from"
	line "fossils?"

	para "If you ever need"
	line "to, let me take"
	cont "care of it!"
	done

Museum1FGrampsText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1FYoungsterText:
	text "There are two"
	line "places that I"
	cont "love!"

	para "One is the Ruins"
	line "of Alph in Johto."

	para "The other is the"
	line "Pewter Museum!"

	para "I get a sense of"
	line "history from both"
	cont "of them."
	done

Museum1FBookshelfSignpostText:
	text "Thick and well-"
	line "read books!"

	para "Archaeology Man-"
	line "ual, Lost #mon,"
	cont "#mon Ancestors,"

	para "Caring at the"
	line "Loamy Layer of"
	cont "Kanto…"
	done

AskHelixFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Helix Fossil?"
	done

AskDomeFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Dome Fossil?"
	done

AskWingFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Wing Fossil?"
	done

NoFossilsText:
	text "Hey! You don't"
	line "have any fossils."
	done

MaybeLaterText:
	text "Just talk to me"
	line "if you change"
	cont "your mind."
	done

ResurrectingPokemonText:
	text "OK! I'll resurrect"
	line "the #mon!"
	done

NoRoomForFossilPokemonText:
	text "Hey! You can't"
	line "carry another"
	cont "#mon, and your"
	cont "box is full, too!"
	done

TakeGoodCareOfItText:
	text "Take good care"
	line "of it!"
	done
	
PewterMuseumOfScience1F_MapEvents:
	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, KabutopsFossilSignpostScript
	bg_event  6,  3, BGEVENT_READ, OmastarFossilSignpostScript
	bg_event  3,  6, BGEVENT_READ, AerodactylFossilSignpostScript
	bg_event 12,  1, BGEVENT_READ, Museum1FBookshelfSignpostText
	bg_event 13,  1, BGEVENT_READ, Museum1FBookshelfSignpostText
	bg_event 14,  1, BGEVENT_READ, Museum1FBookshelfSignpostText
	bg_event 15,  1, BGEVENT_READ, Museum1FBookshelfSignpostText
	bg_event 17,  1, BGEVENT_READ, Museum1FBookshelfSignpostText
	bg_event 18,  1, BGEVENT_READ, Museum1FBookshelfSignpostText

	def_object_events
	object_event 18,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Museum1FFossilScientistScript, -1
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum1FReceptionistScript, -1
	object_event 16,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Museum1FScientistScript, -1
	object_event  1,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FGrampsScript, -1
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FYoungsterScript, -1
