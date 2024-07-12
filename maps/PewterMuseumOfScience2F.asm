	object_const_def

PewterMuseumOfScience2F_MapScripts:
	def_scene_scripts

	def_callbacks

Museum2FText1Script:
	faceplayer
	opentext
	writetext Museum2FText1
	waitbutton
	closetext
	end

Museum2FText1:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

Museum2FText2Script:
	faceplayer
	opentext
	writetext Museum2FText2
	waitbutton
	closetext
	end

Museum2FText2:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

Museum2FText3Script:
	faceplayer
	opentext
	writetext Museum2FText3
	waitbutton
	closetext
	end

Museum2FText3:
	text "Our space exhibit"
	line "was very popular"
	cont "before, so we're"
	cont "keeping it."
	
	para "What if something" ; uncanny music
	line "happens, though?"
	cont "Like, an accident"
	cont "or something?" ; Could add a commentary on technology advancing for the sake of it, but it's long enough already.
	done

Museum2FText4Script:
	faceplayer
	opentext
	writetext Museum2FText4
	waitbutton
	closetext
	end

Museum2FText4:
	text "My dad caught me"
	line "a PIKACHU, but"
	cont "it needs a friend!"
	
	para "How about…KOTORA?"
	done

Museum2FText5Script:
	faceplayer
	opentext
	writetext Museum2FText5
	waitbutton
	closetext
	end

Museum2FText5:
	text "Everyone is on"
	line "about that KOTORA!"
	
	para "It is quite cute,"
	line "though…"
	done

Museum2FText6Script:
	opentext
	writetext Museum2FText6
	waitbutton
	closetext
	end

Museum2FText6:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

Museum2FText7Script:
	faceplayer
	opentext
	writetext Museum2FText7
	waitbutton
	closetext
	end

Museum2FText7:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done	

Museum2FText8Script:
	faceplayer
	opentext
	writetext Museum2FText8
	waitbutton
	closetext
	end

; Movie 3 reference!
Museum2FText8:
	text "It's an artist's"
	line "interpretation"
	cont "of ENTEI."
	
	para "It's flying"
	line "through an odd"
	cont "dimension!"
	done

MuseumBookshelf:
	jumpstd DifficultBookshelfScript

PewterMuseumOfScience2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 5

	def_coord_events

	def_bg_events
	bg_event 11,  2, BGEVENT_UP, Museum2FText6Script
	bg_event  2,  5, BGEVENT_UP, Museum2FText7Script
	bg_event  7,  0, BGEVENT_UP, Museum2FText8Script
	bg_event  5,  1, BGEVENT_UP, MuseumBookshelf
	bg_event  4,  1, BGEVENT_UP, MuseumBookshelf
	bg_event  3,  1, BGEVENT_UP, MuseumBookshelf
	bg_event  1,  1, BGEVENT_UP, MuseumBookshelf
	bg_event  2,  1, BGEVENT_UP, MuseumBookshelf
	bg_event  0,  1, BGEVENT_UP, MuseumBookshelf

	def_object_events
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FText1Script, -1
	object_event  1,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FText2Script, -1
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FText3Script, -1
	object_event 11,  4, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FText4Script, -1
	object_event 12,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FText5Script, -1
