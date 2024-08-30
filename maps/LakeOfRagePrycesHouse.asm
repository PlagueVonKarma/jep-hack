	object_const_def
	const LAKEOFRAGEPRYCESHOUSE_PRYCE

LakeOfRagePrycesHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_OBJECTS, LakeOfRagePrycesHousePryce

LakeOfRagePrycesHousePryce:
	checkevent EVENT_LAKE_OF_RAGE_RED_GYARADOS
	iffalse .NoAppear
	sjump .Appear

.Appear:
	appear LAKEOFRAGEPRYCESHOUSE_PRYCE
	endcallback

.NoAppear:
	disappear LAKEOFRAGEPRYCESHOUSE_PRYCE
	endcallback

; For some reason these crash the game. Ok.
;PrycesHouseBookshelf1:
;	jumpstd DifficultBookshelfScript

;PrycesHouseBookshelf2:
;	jumpstd MagazineBookshelfScript

PrycesHousePryce:
	jumptextfaceplayer PrycesHousePryceText
	waitbutton
	closetext
	end

PrycesHousePryceText:
	text "Thank you for"
	line "saving my"
	cont "beloved home."
	
	para "My middle name"
	line "is WILLOW."
	
	para "They say willow"
	line "is flexible,"
	cont "and not easily"
	cont "broken, but..."
	
	para "Well, my legs"
	line "aren't what they"
	cont "used to be."
	
	para "As long as I"
	line "have my cane,"
	cont "though, I'll be"
	cont "fine."
	done

LakeOfRagePrycesHouseDelibirdScript:
	faceplayer
	opentext
	writetext LakeOfRagePrycesHouseDelibirdText
	cry DELIBIRD
	waitbutton
	closetext
	end

LakeOfRagePrycesHouseDelibirdText:
	text "Delideli!"
	done

LakeOfRagePrycesHouseSwinubScript:
	faceplayer
	opentext
	writetext LakeOfRagePrycesHouseSwinubText
	cry SWINUB
	waitbutton
	closetext
	end

LakeOfRagePrycesHouseSwinubText:
	text "Swine! Nub!"
	done

; To be used when there's a Seel overworld sprite taken from RBY
;LakeOfRagePrycesHouseSeelScript:
;	opentext
;	writetext LakeOfRagePrycesHouseSeelText
;	cry SEEL
;	waitbutton
;	closetext
;	end

;LakeOfRagePrycesHouseSeelText:
;	text "Seel! Seel!"
;	done

LakeOfRagePrycesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, LAKE_OF_RAGE, 6
	warp_event  4,  9, LAKE_OF_RAGE, 6

	def_coord_events

	def_bg_events
;	bg_event  3,  1, BGEVENT_READ, PrycesHouseBookshelf2
;	bg_event  1,  1, BGEVENT_READ, PrycesHouseBookshelf1

	def_object_events
	object_event  9,  6, SPRITE_PRYCE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PrycesHousePryce, EVENT_LAKE_OF_RAGE_RED_GYARADOS
	object_event  3,  5, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LakeOfRagePrycesHouseDelibirdScript, -1
	object_event 10,  6, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LakeOfRagePrycesHouseSwinubScript, -1
	;object_event  2,  5, SPRITE_SEEL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LakeOfRagePrycesHouseSeelScript, -1
