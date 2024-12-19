	object_const_def
	const RUDDYTOWNPOKECENTER1F_NURSE
	const RUDDYTOWNPOKECENTER1F_FISHER
	const RUDDYTOWNPOKECENTER1F_COOLTRAINER_F
	const RUDDYTOWNPOKECENTER1F_ROCKET

RuddyTownPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

RuddyTownPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

; I want this guy to give the player an item at some point.
; Moon Stone?
RuddyTownPokecenter1FBaldingGuyScript:
	jumptextfaceplayer RuddyTownPokecenter1FBaldingGuyText

RuddyTownPokecenter1FBaldingGuyText:
	text "Haaah! Another day"
	line "in the mines."
	done

RuddyTownPokecenter1FFisherScript:
	jumptextfaceplayer RuddyTownPokecenter1FFisherText

RuddyTownPokecenter1FFisherText:
	text "Sometimes, the"
	line "minecarts in the"
	cont "volcano don't"
	cont "move properly."
	
	para "Nothing a MACHAMP"
	line "can't solve!"
	done

RuddyTownPokecenter1FGuruScript:
	jumptextfaceplayer RuddyTownPokecenter1FGuruText

RuddyTownPokecenter1FGuruText:
	text "The hot water"
	line "attracts tons of"
	cont "rare water MON!"
	
	para "It's good drinking"
	line "too!"
	done

RuddyTownPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, RUDDY_TOWN, 3
	warp_event  4,  7, RUDDY_TOWN, 3
	warp_event  0,  7, NIHON_POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownPokecenter1FNurseScript, -1
	object_event 13,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownPokecenter1FGuruScript, -1
	object_event  7,  5, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuddyTownPokecenter1FBaldingGuyScript, -1
