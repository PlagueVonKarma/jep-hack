	object_const_def
	const ROUTE5_POKEFAN_M
	const ROUTE5_DUPLICA

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5PokefanMScript:
	jumptextfaceplayer Route5PokefanMText

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

; Duplica is an anime character based on the Copycat.
; Adding her here to populate this route with a trainer. Not normally done, but making Kanto feel alive is very important.
; Plus, since she's a Ditto specialist, we can add some extra Mimmeo lore to substantiate its existence.
TrainerLassDuplica:
	trainer LASS, DUPLICA, EVENT_BEAT_LASS_DUPLICA, LassDuplicaSeenText, LassDuplicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassDuplicaAfterBattleText
	waitbutton
	closetext
	end

LassDuplicaSeenText:
	text "You must know all"
	line "#MON to use DITTO!"
	done

LassDuplicaBeatenText:
	text "I've got a lot"
	line "to learn!"
	done

LassDuplicaAfterBattleText:
	text "MIMMEO is very"
	line "strange."
	
	para "It learns moves"
	line "that can help"
	cont "its TRANSFORM!"
	
	para "It slicks around" ; explaining its ridiculous speed with some quasi-lore.
	line "so quickly, too!"
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 17, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 17, ROUTE_5_SAFFRON_GATE, 2
	warp_event 10, 11, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 11, BGEVENT_READ, HouseForSaleSign

	def_object_events
	object_event 17, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event 18,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerLassDuplica, -1
