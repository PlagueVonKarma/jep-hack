; Old Chateau-inspired 1 Corridor multi-room map.

	object_const_def

HauntedHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

HauntedHouse1FGrandPianoScript: ; flashbang sm64 players
	jumptext HauntedHouse1FGrandPianoText

HauntedHouse1FGrandPianoText:
	text "It's a grand piano!"
	line "So big!"
	done

HauntedHouse1FGrandPianoRoomBookScript: ; flashbang sm64 players
	jumptext HauntedHouse1FGrandPianoRoomBookText

HauntedHouse1FGrandPianoRoomBookText:
	text "It's a book filled"
	line "with music sheets."
	
	para "There's lots of"
	line "angry scrawls in"
	cont "the margin…" ; Like many Asians, Jessie hated being forced to learn the piano.
	done

; A cool gimmick (and forced Corpse Party reference) is the use of loose boards to get over gaps.
; This is how you access Miyamoto's room.
HauntedHouseLooseBoardPromptText:
	text "The floor has been"
	line "smashed open!"
	
	para "There has to be"
	line "a way to cross…"
	done

HauntedHousePlaceTheBoardText:
	text "Place the LOOSE"
	line "BOARD?"
	done

HauntedHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 15, HAUNTED_HOUSE_1F, 5 ; far right
	warp_event 11, 15, HAUNTED_HOUSE_1F, 7 ; right
	warp_event  8, 15, HAUNTED_HOUSE_1F, 9 ; left
	warp_event  5, 15, HAUNTED_HOUSE_1F, 11 ; far left
	
	warp_event 31, 19, HAUNTED_HOUSE_1F, 1 ; bottom 1
	warp_event 32, 19, HAUNTED_HOUSE_1F, 1 ; bottom 2
	
	warp_event 31,  7, HAUNTED_HOUSE_1F, 2 ; top right 1
	warp_event 32,  7, HAUNTED_HOUSE_1F, 2 ; top right 2
	
	warp_event 17,  7, HAUNTED_HOUSE_1F, 3 ; top second from left 1
	warp_event 18,  7, HAUNTED_HOUSE_1F, 3 ; top second from left 2
	
	warp_event  3,  7, HAUNTED_HOUSE_1F, 4 ; top-right 1
	warp_event  4,  7, HAUNTED_HOUSE_1F, 4 ; top-right 2
	
	warp_event  9, 19, HAUNTED_HOUSE_FOYER, 3
	warp_event 10, 19, HAUNTED_HOUSE_FOYER, 4

	def_coord_events

	def_bg_events
	bg_event 31,  3, BGEVENT_READ, HauntedHouse1FGrandPianoScript
	bg_event 30,  3, BGEVENT_READ, HauntedHouse1FGrandPianoScript
	bg_event 33,  2, BGEVENT_READ, HauntedHouse1FGrandPianoRoomBookScript
	bg_event 32,  2, BGEVENT_READ, HauntedHouse1FGrandPianoRoomBookScript

	def_object_events
