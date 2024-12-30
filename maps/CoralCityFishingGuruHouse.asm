; The greatest fisherman of all time! The father of the three Fishing Brothers!
; Complete with translation fixes...
	object_const_def
	const CORALCITYFISHINGGURUHOUSE_WOMAN

CoralCityFishingGuruHouse_MapScripts:
	def_scene_scripts

	def_callbacks

; This guy will give the player the Perfect Rod, which always reels in a Pokemon.
; Or...something like that.
; I'm not actually sure.
CoralCityFishingGuruHouseGuruScript:
	jumptextfaceplayer CoralCityFishingGuruHouseGuruText

CoralCityFishingGuruHouseGuruText:
	text "Comment to be"
	line "written."
	done

; unused for now
CoralCityFishingGuruHouseGuruGive:
	text "Oh, you've met my"
	line "sons? Haha! They're"
	cont "a funny bunch."
	
	para "Me? I taught 'em"
	line "all! My legacy will"
	cont "live on!"
	
	para "Say, how about a"
	line "keepsake?"
	done

CoralCityFishingGuruHouseGuruTextGive2:
	text "That ROD will reel"
	line "in just about any-"
	cont "thing."
	
	para "It'll never miss a"
	line "single #MON!"
	
	para "Have fun, now!"
	done

CoralCityFishingGuruHouseGuruTextPostGive:
	text "Say, have you seen"
	line "the FISHING MASTER?"
	
	para "The one from JOHTO?"
	
	para "I set a MAGIKARP"
	line "record eons ago…"
	cont "but that RALPH"
	cont "smashed it!"
	
	para "I was dishonoured!"
	
	para "These days, I look"
	line "at different types"
	cont "of MAGIKARP. They"
	cont "have different pa-"
	cont "tterns, you see."
	done

CoralCityFishingGuruHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CORAL_CITY, 6
	warp_event  5,  7, CORAL_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoralCityFishingGuruHouseGuruScript, -1
