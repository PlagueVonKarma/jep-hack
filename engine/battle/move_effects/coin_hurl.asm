; Checks the user's money and divides by 100.
; Caps at base 150 power, from 15,000 yen, which is 00000000-00111010-10011000 in binary (the player's money box). This is achieved through skipping the calculation at a certain point.
; Against an enemy Pokemon, they'll always have base 90 Power.

; Given the way this works, Coin Hurl will rise in power *very* quickly, but, likewise, also reward good fiscal responsibility from the player. At 3,000 yen, it's almost useless. At 10,000 yen, you have max power Return.

; This move is only learned by Persian and Belledam. Persian has 75 Attack and is basically useless without the move; this gives it an RBY Slash-like counterpart to bring it back to its roots. Belledam, on the other hand, doesn't get STAB, so it's just a (very good) Double-Edge alternative. I really like this!

; To change scaling, simply change which bytes are checked for the cap, and work from there. Alternatively, change the division process, and so on. Lots of ways, ours is very simple.

; Have fun using Coin Hurl! - PvK

BattleCommand_CoinHurlPower:
	push bc
	ld hl, wMoney
	
	ld a, [wLinkMode]
	and a
	jr nz, .linked ; To test max power in the Debug Room, set to z.
	
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	jr .enemyMon ; If you're fighting an enemy Pokemon, then skip the calculation and force base 90 Power. We've already checked the link mode, so this only works in PvP.
.ok
	
	; Cap at base 150 power
	; There's no multi-byte compare instruction by default so we're doing it in a really funny way
	; s/o Shellnuts for helping!
	ld a, [wMoney] ; check high byte
	cp %00000001
	jr c, .linked ; if there's a 1 in here at all, just skip the calculation entirely, because you're over 15,000.
	ld a, [wMoney+1] ; check middle byte
	cp %00111010
	jr c, .linked ; Fuck off again if you're at the initial total.
	ld a, [wMoney+2] ; low byte, you can get here sometimes
	cp %10011000
	jr c, .linked
	xor a
	
	ld a, 100 ; Take current money and divide it by 100.
	ldh [hDivisor], a
	ld b, 4
	call Divide
	ldh a, [hQuotient + 3]
	ld d, a
	jr .end
.enemyMon ; Against an enemy Pokemon, base 75 power.
	ld d, 90
	jr .end
.linked ; In a Link Battle, it's always base 150 power. We also skip here if the player's money is over 15,000 yen.
	ld d, 150
	; fallthrough
.end
	pop bc
	ret