ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "ETHAN@" ; games
	db "GOLD@" ; manga
	db "JIMMY@" ; legend of thunder
	db "CHRIS@" ; vanilla
	db 2 ; title indent
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "KRIS@" ; game
	db "MARINA@" ; legend of thunder
	db "CRYSTAL@" ; manga
	db "CHRIS@" ; golden boys - plays with the male player version as well, showing it's a unisex name
	db 2 ; title indent
	db " NAME @" ; title

EnbyNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .OtherNames
	db 1 ; ????
	db 0 ; default option

.OtherNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
EnbyPlayerNameArray:
	db "TOPAZ@"
	db "SAM@"
	db "CRYS@"
	db "RAY@"
	db 2 ; displacement
	db " NAME @" ; title
	