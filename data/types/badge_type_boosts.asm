BadgeTypeBoosts:
; entries correspond to wJohtoBadges constants
	db FLYING       ; ZEPHYRBADGE
	db BUG          ; HIVEBADGE
	db NORMAL       ; PLAINBADGE
	db GHOST        ; FOGBADGE
	db STEEL        ; MINERALBADGE
	db FIGHTING     ; STORMBADGE
	db ICE          ; GLACIERBADGE
	db DRAGON       ; RISINGBADGE
	; fallthrough
; entries correspond to wKantoBadges constants
	db ROCK         ; BOULDERBADGE
	db WATER        ; CASCADEBADGE
	db ELECTRIC     ; THUNDERBADGE
	db GRASS        ; RAINBOWBADGE
	db POISON       ; SOULBADGE
	db PSYCHIC_TYPE ; MARSHBADGE
	db FIRE         ; VOLCANOBADGE
	db GROUND       ; EARTHBADGE
; Nihon Badges
; Unsure what to do with these, so let's leave it for now.
; South's will boost Fairy, though.
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db CURSE_TYPE
	db -1 ; end
