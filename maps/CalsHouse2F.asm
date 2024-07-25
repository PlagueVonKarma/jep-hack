; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

; Because there's no player here, we're taking the opportunity to expand on Cal.
; In base GSC, he's a trainer who travels to Viridian City to challenge the player, acting as a stand-in if you haven't used Mystery Gift before.
; In Stadium 2, he is given a unique design and uses largely random Pokemon.
; Everything just kind of falls into place, no?

; So here, we're having Cal be a trainer who enjoys using rental Pokemon. He loves to battle, but doesn't want to spend too much time training or catching his own. He gets more excitement out of quick-thinking and wit!

; He'll still have his Trainer House role, but we're changing that up a bit too!

	object_const_def
	const CALSHOUSE_KEN

CalsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

CalsHouseKen:
	jumptextfaceplayer CalsHouseKenText

CalsHouseKenText:
	text "CAL? He's my"
	line "brother!"
	
	para "He'd always go"
	line "out to places"
	cont "where strong"
	cont "TRAINERs are."
	
	para "WHITE CITY..."
	line "VIRIDIAN CITY..."
	
	para "Places like that!"
	line "He's so cool!"
	done

; Usually, there's a thing about Skarmory here, but Silver's House details it, so let's use this unused quote instead.
CalsHousePCText:
	jumpstd SilphPokegearScript

CalsHouse2FAnimeTV:
	jumpstd AnimeTVScript3

CalsHouseBookshelf1:
	jumpstd PictureBookshelfScript

CalsHouseBookshelf2:
	jumpstd MagazineBookshelfScript
	
CalsHouseN64:
	jumpstd Nintendo64Script

CalsHouseRadio:
	jumptext CalsHouseRadioText

; Using this translation
; https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Text
; Could be a jumpstd but I don't see it being used in many places...
CalsHouseRadioText:
	text "You're listening"
	line "to JOPM, NIHON's"
	cont "best-rated radio"
	cont "station!"
	
	para "Now presenting the"
	line "#MON News."
	
	para "...world-renowned"
	line "PROFESSOR reported"
	cont "missing in KANTO!"
	
	para "It's suspected"
	line "that PROF. OAK"
	cont "could have left"
	cont "for a new LAB, but"
	cont "we cannot disprove"
	cont "that foul play"
	cont "could be afoot."
	
	para "Even AIDEs are"
	line "concerned."
	
	para "...that concludes"
	line "today's news."
	
	para "Coming up, music"
	line "with MARY!"
	done
	

CalsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, CALS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, CalsHouse2FAnimeTV
	bg_event  5,  1, BGEVENT_READ, CalsHouseBookshelf1
	bg_event  1,  1, BGEVENT_READ, CalsHouseBookshelf1
	bg_event  3,  1, BGEVENT_READ, CalsHousePCText
	bg_event  7,  2, BGEVENT_READ, CalsHouseN64
	bg_event  2,  1, BGEVENT_READ, CalsHouseRadio

	def_object_events
	object_event  8,  1, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CalsHouseKen, -1
