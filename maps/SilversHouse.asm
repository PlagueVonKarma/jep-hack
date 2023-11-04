; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const SILVERSHOUSE_MOM

SilversHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SilversMom:
	jumptextfaceplayer SilversMomText

SilversMomText:
	text "The other day,"
	line "I saw a strangely-"
	cont "colored PIDGEY!"
	done

SilversHousePCJournal:
	jumpstd PCJournalScript

SilversHouseAnimeTV:
	jumpstd AnimeTVScript1

SilversHouseStove:
	jumpstd GenericStoveScript

SilversHouseSink:
	jumpstd GenericSinkScript

SilversHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, SILENT_HILLS, 5
	warp_event  5,  9, SILENT_HILLS, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, SilversHousePCJournal
	bg_event  4,  1, BGEVENT_READ, SilversHouseAnimeTV
	bg_event  9,  1, BGEVENT_READ, SilversHouseStove
	bg_event  8,  1, BGEVENT_READ, SilversHouseSink

	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilversMom, -1
