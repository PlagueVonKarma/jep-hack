; Sevii Pokémon in grass

; General philosophies:
; - Alolan Pokemon will be encounterable, as the Sevii Islands are a tropical area.
; - It's still Kanto, so we will feature more Kanto than Johto Pokemon. Basically, this will use the "classic Johto" philosophy of hiding them in the back. 
; - Minimal, if any, Nihon Pokemon.

SeviiWaterWildMons:

	def_water_wildmons KINDLE_ROAD
	db 4 percent ; encounter rates: morn/day/nite
	dbw 30, GRENMAR ; Water/Fire, y'know, it's kinda cute
	dbw 31, SEADRA
	dbw 30, GYARADOS
	end_water_wildmons

	db -1 ; end
