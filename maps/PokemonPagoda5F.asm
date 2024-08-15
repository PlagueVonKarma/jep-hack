	object_const_def

PokemonPagoda5F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonPagoda5FStatue:
	jumptext PokemonPagoda5FStatueText

PokemonPagoda5FSign:
	jumptext PokemonPagoda5FSignText

PokemonPagoda5FStatueText:
	text "It's a statue of"
	line "ABRA."
	done

; Very very very much set to change.
PokemonPagoda5FSignText: ; 女娲补天
	text "There was once"
	line "a beast with the"
	cont "strength and"
	cont "spirit to trans-"
	cont "form the world."
	
	para "By patching a"
	line "heavenly hole,"
	cont "it prevented our"
	cont "disaster."
	done

ElderRoenScript:
	faceplayer
	opentext
	writetext ElderRoenFirstText
	waitbutton
	closetext
	end

ElderRoenFirstText:
	text "Comment to be"
	line "written."
	done

PokemonPagoda5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, POKEMON_PAGODA_4F, 2

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, PokemonPagoda5FSign
	bg_event  2,  0, BGEVENT_READ, PokemonPagoda5FStatue

	def_object_events
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ElderRoenScript, -1
