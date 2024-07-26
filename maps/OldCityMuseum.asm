; This seems to have been Mr. Pokemon's house in SW97. The egg is on the far right.

; Here, we've changed it to an art museum, a la RSE's. Only here, the sculptor will construct statues of legendary Pokemon.
; Technically, we could make it the player's, but the problem is, it implies we'd have icons for all 466+ Pokemon in our dex, which is very unfeasible.
; So let's make him do statues of the Legendary Beasts!

; He should have connections with Mr. Pokemon.
; Include an item maniac?

	object_const_def

OldCityMuseum_MapScripts:
	def_scene_scripts

	def_callbacks

; Will eventually be complete.
OldCityInteriorMuseumSign:
	jumptext OldCityMuseumInteriorSignText

OldCityMuseumInteriorSignText:
	text "NOW LOOKING FOR"
	line "DONATIONS"
	cont "      - CURATOR"
	done

; These exhibits will only appear when he's inspired.
OldCityMuseumExhibit1:
	jumptext OldCityMuseumExhibit1Text

OldCityMuseumExhibit2:
	jumptext OldCityMuseumExhibit2Text

OldCityMuseumExhibit3:
	jumptext OldCityMuseumExhibit3Text

OldCityMuseumExhibit1Text:
	text "SUICUNE"
	line "Comment to be"
	cont "written."
	done

OldCityMuseumExhibit2Text:
	text "ENTEI"
	line "Comment to be"
	cont "written."
	done

OldCityMuseumExhibit3Text:
	text "RAIKOU"
	line "Comment to be"
	cont "written."
	done

OldCityMuseumCuratorScript:
	opentext
	writetext OldCityMuseumCuratorText
	waitbutton
	closetext
	end

OldCityMuseumCuratorText:
	text "Hello! I am a"
	line "local sculptor!"
	
	para "I wish to fill"
	line "this museum with"
	cont "statues of legen-"
	cont "dary #MON!"
	
	para "If you have a"
	line "subject, please"
	cont "allow me a look!"
	done

OldCityMuseum_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, OLD_CITY, 7
	warp_event  2,  5, OLD_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_READ, OldCityInteriorMuseumSign
	bg_event  5,  3, BGEVENT_READ, OldCityMuseumExhibit1
	bg_event  9,  3, BGEVENT_READ, OldCityMuseumExhibit2
	bg_event 13,  3, BGEVENT_READ, OldCityMuseumExhibit3

	def_object_events
	object_event  6,  4, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, OldCityMuseumCuratorScript, -1
	object_event  5,  3, SPRITE_SUICUNE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OldCityMuseumExhibit1, -1
	object_event  9,  3, SPRITE_ENTEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OldCityMuseumExhibit2, -1
	object_event 13,  3, SPRITE_RAIKOU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OldCityMuseumExhibit3Text, -1
