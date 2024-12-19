	object_const_def
	const CORALCITYPOKECENTER1F_NURSE
	const CORALCITYPOKECENTER1F_SAILOR
	const CORALCITYPOKECENTER1F_FISHER
	const CORALCITYPOKECENTER1F_GENTLEMAN

CoralCityPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CoralCityPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CoralCityPokecenter1FSailorScript:
	jumptextfaceplayer CoralCityPokecenter1FSailorText

CoralCityPokecenter1FSailorText:
	text "Me? Oh, I'm a forei-"
	line "gner."
	
	para "My boys hauled up,"
	line "so I'm waiting for"
	cont "loading up to"
	cont "finish."
	done

CoralCityPokecenter1FFisherScript:
	jumptextfaceplayer CoralCityPokecenter1FFisherText

CoralCityPokecenter1FFisherText:
	text "OAK? Oh, he's al-"
	line "ways gone."
	
	para "It's so annoying!"
	line "Why is he even a"
	cont "GYM LEADER, then?"
	done

CoralCityPokecenter1FGentlemanScript:
	jumptextfaceplayer CoralCityPokecenter1FGentlemanText

CoralCityPokecenter1FGentlemanText:
	text "Oh, I adore"
	line "CARAPTHOR. It's"
	cont "so preppy!"
	done

CoralCityPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CORAL_CITY, 3
	warp_event  4,  7, CORAL_CITY, 3
	warp_event  0,  7, NIHON_POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityPokecenter1FNurseScript, -1
	object_event 13,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityPokecenter1FGentlemanScript, -1
	object_event  7,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityPokecenter1FSailorScript, -1
