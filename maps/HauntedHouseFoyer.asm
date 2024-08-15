; This is based on the unused Haunted House landmark from GSC's source code.
; Nothing is known about it except for the dummied-out name.
; Given the time frame, my idea is it may have been derived from the PC-98 Corpse Party game, which is time-appropriate and was very popular with game junkies.
; Given Game Freak ran game magazines and was basically run by nerds, I imagine they'd have heard of and/or played it. The Game Boy can easily replicate much of the graphics.
; It's not just Heavenly Host, though! It's very different! But expect some cool features a la it. Like, say...the loose boards!

; A lot of inspiration is also taken from the Old Chateau, given GSC has a deep connection with DP.

	object_const_def

HauntedHouseFoyer_MapScripts:
	def_scene_scripts

	def_callbacks

HauntedHouseFoyerTornPosterScript:
	jumptext HauntedHouseFoyerTornPosterText

HauntedHouseFoyerTornPosterText:
	text "Comment to be"
	line "written."
	done

HauntedHouseFoyerIntactPosterScript:
	jumptext HauntedHouseFoyerIntactPosterText

HauntedHouseFoyerIntactPosterText:
	text "Comment to be"
	line "written."
	done

HauntedHouseFoyerOldBooks:
	jumpstd OldBooksScript

HauntedHouseFoyerOldMagazines:
	jumpstd OldMagazinesScript

HauntedHouseFoyer_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  9, ROUTE_45, 1
	warp_event  6,  9, ROUTE_45, 2
	warp_event  5,  4, HAUNTED_HOUSE_1F, 13
	warp_event  6,  4, HAUNTED_HOUSE_1F, 14
	warp_event  3,  1, HAUNTED_HOUSE_2F, 2
	warp_event  8,  1, HAUNTED_HOUSE_2F, 4

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, HauntedHouseFoyerTornPosterScript
	bg_event  7,  1, BGEVENT_READ, HauntedHouseFoyerIntactPosterScript
	bg_event 11,  4, BGEVENT_READ, HauntedHouseFoyerOldBooks
	bg_event  0,  4, BGEVENT_READ, HauntedHouseFoyerOldBooks
	bg_event  1,  4, BGEVENT_READ, HauntedHouseFoyerOldMagazines

	def_object_events
