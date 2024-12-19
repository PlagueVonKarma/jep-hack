	object_const_def
	const SAVOYCITYPOKECENTER1F_NURSE
	const SAVOYCITYPOKECENTER1F_LASS
	const SAVOYCITYPOKECENTER1F_GENTLEMAN
	const SAVOYCITYPOKECENTER1F_GAMEBOY_GIRL

SavoyCityPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SavoyCityPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

; This was originally a Rocket, but...
; We had one in Old City too...
; So I changed this to a Game Boy Girl.
SavoyCityPokecenter1FGameBoyGirlScript:
	jumptextfaceplayer SavoyCityPokecenter1FGameBoyGirlText

SavoyCityPokecenter1FGameBoyGirlText:
	text "Mum told me to"
	line "wait for her here,"
	cont "so I'm playing"
	cont "games!" ; This was a Trip World reference but it was a bit too much.
	done

; Kuye is the strongest Lass on the planet, so someone should want to catfight with her.
SavoyCityPokecenter1FLassScript:
	jumptextfaceplayer SavoyCityPokecenter1FLassText

SavoyCityPokecenter1FLassText:
	text "Ugh! KUYE always"
	line "shows me up."
	
	para "I want to knock"
	line "her down a peg!"
	done

SavoyCityPokecenter1FGentlemanScript:
	jumptextfaceplayer SavoyCityPokecenter1FGentlemanText

SavoyCityPokecenter1FGentlemanText:
	text "I bought my son"
	line "a PUPPERON last"
	cont "week."
	
	para "He started saying"
	line "such strange"
	cont "words!"
	done

SavoyCityPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAVOY_CITY, 6
	warp_event  4,  7, SAVOY_CITY, 6
	warp_event  0,  7, NIHON_POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityPokecenter1FNurseScript, -1
	object_event 13,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityPokecenter1FLassScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityPokecenter1FGentlemanScript, -1
	object_event  7,  5, SPRITE_GAMEBOY_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SavoyCityPokecenter1FGameBoyGirlScript, -1
