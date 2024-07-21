; src - https://github.com/pokeachromicdevs/pokeoctober/commit/8114fead91828dd6d986fe120d6c5cd5e3c6cbf6

_UseHoney::
	call .CheckHoney
	and $7f
	ld [wFieldMoveSucceeded], a
	ret

.CheckHoney:
	call GetFacingTileCoord
	push de
		call CheckHeadbuttTreeTile
	pop de
	jr nz, .NoTree

	ld hl, wSweetHoneyEnabled
	bit SWEET_HONEY_F, [hl]
	jr z, .NoHoney
	
	res SWEET_HONEY_F, [hl]
	inc hl
	inc hl
	inc hl ; wSweetHoneyMapGroup
	ld a, [wMapGroup]
	ld [hli], a
	ld a, [wMapNumber]
	ld [hli], a
; X and Y
	ld [hl], d
	inc hl
	ld [hl], e
	
	farcall SetSweetHoneyTimer

	ld hl, UseHoneyScript
	call QueueScript
	ld a, $81 ; success
	ret

.NoTree:
	ld a, $80 ; fail
	ret

.NoHoney:
; TODO: this does not even run due to the "can't use!" text
	ld hl, NoHoneyScript
	call QueueScript
	ld a, $80 ; fail
	ret

UseHoneyScript:
	reloadmappart
	special UpdateTimePals

	opentext
	writetext .SpreadHoneyText
	playsound SFX_DEX_FANFARE_50_79
	waitsfx
	waitbutton
	closetext
	end

.SpreadHoneyText:
	text "<PLAYER> spread"
	line "SWEET HONEY on the"
	cont "tree!"
	done

NoHoneyScript:
	reloadmappart
	special UpdateTimePals

	opentext
	writetext .NoHoneyText
	playsound SFX_WRONG
	waitsfx
	waitbutton
	closetext
	end

.NoHoneyText:
	text "You don't have"
	line "SWEET HONEY!"
	done
