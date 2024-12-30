; west-south house
	object_const_def
	const SAVOYCITYBIGHOUSE1_GRAMPS
	const SAVOYCITYBIGHOUSE1_SONEGG
	const SAVOYCITYBIGHOUSE1_YOUNGSTER

SavoyCityBigHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

; I decided to reference Finnegans Wake by James Joyce: He's reading p74!
; The theme of this town is unintelligible slang, so it fits.
SavoyCityBigHouse1GrampsScript:
	jumptextfaceplayer SavoyCityBigHouse1GrampsText

SavoyCityBigHouse1GrampsText:
	text "For in those deyes"
	line "his Deyus shall"
	cont "speak of Allprohome"
	cont "and call to himm:"
	
	para "Allprohome!"
	
	para "… … …"
	
	para "What in daylights"
	line "is this book nat-" ; nattering is, itself, old cockney slang.
	cont "tering about?"
	done

SavoyCityBigHouse1SoneggScript:
	faceplayer
	opentext
	writetext SavoyCityBigHouse1SoneggText
	cry SONEGG
	waitbutton
	closetext
	end

SavoyCityBigHouse1SoneggText:
	text "SONEGG: Twit!"
	line "Twoo!"
	done

; Sonegg is the regional bird, but it's unique, so we should have players figure it out early.
; Here, we're purposefully making the evolution ambiguous. The games like doing this.
SavoyCityBigHouse1YoungsterScript:
	jumptextfaceplayer SavoyCityBigHouse1YoungsterText

SavoyCityBigHouse1YoungsterText:
	text "My pal's SONEGG"
	line "evolved into a"
	cont "TREBIR…"
	
	para "But my other mate's"
	line "evolved into…"
	
	para "CACAWPHONY!"
	
	para "What will mine"
	line "become, then?"
	done

SavoyCityBigHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAVOY_CITY, 7
	warp_event  5,  7, SAVOY_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse1GrampsScript, -1
	object_event  1,  4, SPRITE_SMALL_BIRD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse1SoneggScript, -1
	object_event  2,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse1YoungsterScript, -1
