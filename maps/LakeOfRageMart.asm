	object_const_def
	const LAKEOFRAGEMART_CLERK
	const LAKEOFRAGEMART_GRAMPS
	const LAKEOFRAGEMART_POKEFAN_F

LakeOfRageMart_MapScripts:
	def_scene_scripts

	def_callbacks

LakeOfRageMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAKEOFRAGE
	closetext
	end

LakeOfRageMartPokefanFScript:
	jumptextfaceplayer LakeOfRageMartPokefanFText

LakeOfRageMartGrampsScript:
	jumptextfaceplayer LakeOfRageMartGrampsText

LakeOfRageMartPokefanFText:
	text "This shop sells"
	line "so many STONEs!"
	
	para "I'm spoiled for"
	line "choice!"
	done

LakeOfRageMartGrampsText:
	text "The TRADER helped"
	line "me evolve my"
	cont "RAICHU!"
	
	para "...what's with"
	line "that look?"
	done

LakeOfRageMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 3
	warp_event  3,  7, LAKE_OF_RAGE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageMartClerkScript, -1
	object_event  6,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LakeOfRageMartPokefanFScript, -1
	object_event  9,  2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageMartGrampsScript, -1
