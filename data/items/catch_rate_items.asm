; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db FAIRY_FEATHER, LEFTOVERS
	db ITEM_2D, BITTER_BERRY
	db ITEM_32, GOLD_BERRY
	db ITEM_5A, BERRY
	db ITEM_64, BERRY
	db ITEM_78, BERRY
	db HEART_STONE, BERRY
	db OLD_AMBER, BERRY
	db DOME_FOSSIL, BERRY
	db HELIX_FOSSIL, BERRY
	db WING_FOSSIL, BERRY
	db -1,      BERRY
	db 0 ; end
