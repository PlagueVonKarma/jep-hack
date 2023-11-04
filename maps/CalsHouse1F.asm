; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

; Because there's no player here, we're taking the opportunity to expand on Cal.
; While usually a Trainer House stand-in in Viridian, he is characterised in some ways.
; For example, he says he's a traveling trainer in GSC.
; In Stadium 2, he is further characterised and even given a unique design.
; Everything just kind of falls into place, no?

	object_const_def
	const CALSHOUSE_MOM

CalsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

CalsMom:
	jumptextfaceplayer CalsMomText

CalsMomText:
	text "CAL? Oh, he's"
	line "always traveling."
	
	para "I said I had"
	line "nothing against"
	cont "#MON, but..."
	
	para "Sometimes, I"
	line "miss him."
	done

CalsHouseAnimeTV:
	jumpstd AnimeTVScript2

CalsHouseStove:
	jumpstd GenericStoveScript

CalsHouseSink:
	jumpstd GenericSinkScript

CalsHouseFridge:
	jumpstd GenericFridgeScript

CalsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, SILENT_HILLS, 2
	warp_event  7,  7, SILENT_HILLS, 2
	warp_event  9,  0, CALS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, CalsHouseAnimeTV
	bg_event  1,  1, BGEVENT_READ, CalsHouseStove
	bg_event  0,  1, BGEVENT_READ, CalsHouseSink
	bg_event  2,  1, BGEVENT_READ, CalsHouseFridge

	def_object_events
	object_event  7,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CalsMom, -1
