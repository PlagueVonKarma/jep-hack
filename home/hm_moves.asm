; HM moves can't be forgotten

IsHM::
	cp HM01
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

IsHMMove::
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld hl, .HMMoves
	ld de, 2
	jp IsInWordArray

.HMMoves:
	dw CUT
	dw FLY
	dw SURF
	dw STRENGTH
	dw FLASH
	dw WATERFALL
	dw WHIRLPOOL
	dw UPROOT
	dw WATER_SPORT
	dw STRONG_ARM
	dw BRIGHT_MOSS ; this will be added as a hm in the 16bit patch
	dw WIND_RIDE
	dw -1 ; end
