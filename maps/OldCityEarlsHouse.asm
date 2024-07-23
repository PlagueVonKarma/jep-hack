; In the SW97 demo, Bill's House is in Old City.
; Fitting this in is a bit hard: The Sea Cottage is Bill's "home", which is housesat by his grandfather while Bill visits his family in Goldenrod.
; Technically, everything still works, but requires that the Sea Cottage is retconned to being Bill's holiday home or something. In the anime, he is an aristocrat, but isn't it a bit of a reach?
; So instead, I'm using it for Earl, who doesn't have a certain home and can talk about White City.
	object_const_def
	const OLDCITY_EARL

OldCityEarlsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

OldCityEarlScript:
	faceplayer
	applymovement OLDCITY_EARL, OldCityEarlSpin
	faceplayer
	opentext
	writetext OldCityEarlText1
	waitbutton
	closetext
	faceplayer
	applymovement OLDCITY_EARL, OldCityEarlSpin
	faceplayer
	opentext
	writetext OldCityEarlText2
	waitbutton
	closetext
	faceplayer
	applymovement OLDCITY_EARL, OldCityEarlSpin
	end

OldCityEarlText1:
	text "Oh! You it is!"
	
	para "Remember me do"
	line "you? My smartest"
	cont "student!"
	
	para "Live here in SEPIA"
	line "CITY I do, my aca-"
	cont "emy famous world-"
	cont "wide!"
	done

OldCityEarlText2:
	text "But also! Seminars"
	line "across NIHON, I"
	cont "hold! Many schools"
	cont "my expertise they"
	cont "desire!"
	
	para "Ooh, la la! Come"
	line "to WHITE CITY,"
	cont "you must!"
	
	para "Smartest students"
	line "go there!"
	done
	

OldCityEarlSpin:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_end

OldCityEarlsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, OLD_CITY, 13
	warp_event  3,  7, OLD_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OldCityEarlScript, -1
