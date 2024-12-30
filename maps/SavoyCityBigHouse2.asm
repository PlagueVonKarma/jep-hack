; west-south house
	object_const_def
	const SAVOYCITYBIGHOUSE2_GRAMPS
	const SAVOYCITYBIGHOUSE2_KID
	const SAVOYCITYBIGHOUSE2_YOUNGSTER

SavoyCityBigHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

; Gramps appeals to tradition.
SavoyCityBigHouse2GrampsScript:
	jumptextfaceplayer SavoyCityBigHouse2GrampsText

SavoyCityBigHouse2GrampsText:
	text "This city used to"
	line "be a simple port"
	cont "town."
	
	para "During the war,"
	line "we grew rapidly."
	
	para "But at what cost?"
	done

; N64s are in every regular Nihonian household by the looks of things.
; Maybe this could be made more interesting.
SavoyCityBigHouse2KidScript:
	jumptextfaceplayer SavoyCityBigHouse2KidText

SavoyCityBigHouse2KidText:
	text "The N64 is so"
	line "cool!"
	done

SavoyCityBigHouse2YoungsterScript:
	jumptextfaceplayer SavoyCityBigHouse2YoungsterText

SavoyCityBigHouse2YoungsterText:
	text "SEPIA CITY?"
	
	para "That's yesterday's"
	line "biz, bro!" ; purposeful "gender-neutral" bro. change to a 2000s-y, gender neutral reference, if you want, but i had trouble finding one and think this may be more interesting
	done

SavoyCityBigHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAVOY_CITY, 8
	warp_event  5,  7, SAVOY_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse2GrampsScript, -1
	object_event  2,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse2KidScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityBigHouse2YoungsterScript, -1
