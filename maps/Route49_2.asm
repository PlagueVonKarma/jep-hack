; Text on this route uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const ROUTE_49_2_BEAUTY

Route49_2_MapScripts:
	def_scene_scripts

	def_callbacks

Route49Sign1_2:
	jumptext Route49Sign1_2Text

Route49Sign1_2Text:
	text "ROUTE 49" ; Originally Route 1, but since Johto exists now, we use Route 49.
	line "OLD CITY -" ; Localisation TBD
	cont "SILENT HILLS"
	done

; Reusing previously unused Beauty here.
TrainerBeautyTheresa:
	trainer BEAUTY, THERESA, EVENT_BEAT_BEAUTY_THERESA, BeautyTheresaSeenText, BeautyTheresaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyTheresaAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text here too.
BeautyTheresaSeenText:
	text "Oh! Such a cute"
	line "TRAINER!"
	para "Would you battle"
	line "me?"
	done

BeautyTheresaBeatenText:
	text "Awhhh..."
	done

BeautyTheresaAfterText:
	text "Hm? The cave?"
	
	para "I try to avoid"
	line "it. The boys in"
	cont "there are too"
	cont "immature!"
	
	done

Route49_2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 27, QUIET_CAVE, 3
	warp_event  9, 27, QUIET_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event 10, 20, BGEVENT_READ, Route49Sign1_2

	def_object_events
	object_event  7, 15, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyTheresa, -1
