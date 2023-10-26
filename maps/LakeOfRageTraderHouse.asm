	object_const_def
	const LAKEOFRAGETRADERHOUSE_TRADER

LakeOfRageTraderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; Tradeback NPC tutorial
TradebackNPCScript:
	faceplayer
	opentext
	special TradebackNPC
	waitbutton
	closetext
	end

LakeOfRageTraderHouseBookshelf2:
	jumpstd DifficultBookshelfScript

LakeOfRageTraderHouseBookshelf1:
	jumpstd MagazineBookshelfScript

LakeOfRageTraderHouseRadio:
	jumpstd Radio2Script

LakeOfRageTraderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 5
	warp_event  3,  7, LAKE_OF_RAGE, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, LakeOfRageTraderHouseBookshelf1
	bg_event  1,  1, BGEVENT_READ, LakeOfRageTraderHouseBookshelf2
	bg_event  7,  1, BGEVENT_READ, LakeOfRageTraderHouseRadio

	def_object_events
	object_event  2,  4, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TradebackNPCScript, -1
