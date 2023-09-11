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
	db "ETHAN@"
	db "GOLD@"
	db "CHRIS@"
	db "JIMMY@"
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
	db "KRIS@"
	db "MARINA@"
	db "AMANDA@"
	db "JODI@"
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
	