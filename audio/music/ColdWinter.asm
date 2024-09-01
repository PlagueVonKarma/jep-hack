; Cave type theme
; 4/4 rhythm, composed in D Minor Natural
; A somewhat sombre and dramatic theme, with fast drums and a high tempo.
; The first square and the wave channels both play in a low octave while the lead channel(Wave 2) plays relatively high notes for a strong contrast.
; This theme started out by me jamming on my bass, and turned into this. I don't know, I just really like dramatic music.
; Composed by LuciShrimp.

Music_ColdWinter:
	channel_count 4
	channel 1, Music_ColdWinter_Ch1
	channel 2, Music_ColdWinter_Ch2
	channel 3, Music_ColdWinter_Ch3
	channel 4, Music_ColdWinter_Ch4

Music_ColdWinter_Ch1:
	volume 7, 7
	note_type 12, 15, 8
	octave 2
	tempo 211
	sound_call .sub1
	octave 8
.mainLoop:
	octave 2
.loop1:
	vibrato 12, 2, 2
	duty_cycle 2
	volume_envelope 11, 7
	note D_, 1
	note F_, 1
	note G_, 2
	octave 2
	note A_, 4
	note D_, 4
	note E_, 4
	note C_, 1
	note F_, 1
	note G_, 2
	note A_, 4
	note C_, 1
	note F_, 2
	note G_, 1
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note D_, 8
	note C_, 8
	note E_, 8
	note D_, 4
	octave 1
	note A#, 2
	octave 2
	note C_, 2
	sound_loop 4, .loop1
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	vibrato 12, 2, 2
	duty_cycle 2
	volume_envelope 11, 7
	note D_, 1
	note F_, 1
	note G_, 2
	octave 2
	note A_, 4
	note D_, 4
	note E_, 4
	note C_, 1
	note F_, 1
	note G_, 2
	note A_, 4
	note C_, 1
	note F_, 2
	note G_, 1
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note D_, 8
	note C_, 8
	note E_, 8
	note D_, 4
	octave 1
	note A#, 2
	octave 2
	note C_, 2
	sound_ret

Music_ColdWinter_Ch2:
	note_type 12, 1, 7
	octave 4
	vibrato 21, 3, 3
	duty_cycle 3
	note D_, 8
	octave 3
	volume_envelope 2, 7
	note A#, 8
	octave 4
	volume_envelope 4, 7
	note C_, 8
	octave 3
	volume_envelope 0, 7
	note G_, 8
	volume_envelope 6, 7
	note A#, 8
	volume_envelope 8, 7
	note F_, 8
	volume_envelope 10, 7
	note A_, 8
	volume_envelope 14, 7
	note G_, 4
	note F_, 4
	octave 8
.mainLoop:
	octave 4
	volume_envelope 15, 7
	note D_, 16
	note F_, 8
	note E_, 6
	octave 3
	note A#, 1
	octave 4
	note C_, 1
	note D_, 16
	octave 3
	note A#, 8
	octave 4
	note C_, 4
	note D_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	octave 5
	sound_call .sub2
	note F_, 1
	note G_, 1
	octave 4
	note A_, 8
	note G_, 8
	octave 5
	note C_, 3
	octave 4
	note A#, 1
	note A_, 3
	note G_, 1
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note_type 12, 15, 8
	octave 5
	sound_call .sub2
	octave 4
	note_type 12, 15, 7
	note F_, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 8
	octave 5
	note D_, 3
	octave 4
	note A#, 1
	note G_, 3
	note A_, 1
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 8
	octave 3
	note A#, 8
	octave 4
	note C_, 8
	octave 3
	note G_, 8
	note A#, 8
	note F_, 8
	note A_, 8
	note G_, 4
	note F_, 4
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub2:
	octave 4
	volume_envelope 15, 7
	note A_, 8
	note F_, 8
	note A#, 4
	note G_, 8
	note E_, 2
	sound_ret

Music_ColdWinter_Ch3:
	note_type 12, 1, 0
	octave 2
	sound_call .sub1
	octave 8
.mainLoop:
	octave 2
	sound_call .sub1
	note_type 12, 1, 0
.loop1:
	vibrato 5, 1, 0
	volume_envelope 1, 10
	note D_, 2
	octave 1
	note A_, 1
	octave 2
	note F_, 1
	note A_, 2
	note A_, 4
	note A_, 2
	note D_, 2
	note A_, 2
	note C_, 2
	octave 1
	note A#, 1
	octave 2
	note F_, 1
	note A_, 2
	note A_, 4
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	octave 1
	note A#, 2
	note G_, 1
	octave 2
	note D_, 1
	note F_, 2
	note F_, 4
	note F_, 2
	note G_, 2
	note A_, 2
	octave 1
	note A_, 2
	note F_, 1
	octave 2
	note D_, 1
	note F_, 2
	note F_, 2
	note E_, 4
	note D_, 2
	octave 1
	note A#, 1
	octave 2
	note C_, 1
	sound_loop 2, .loop1
	vibrato 5, 1, 0
	volume_envelope 1, 10
	note D_, 2
	octave 1
	note A_, 1
	octave 2
	note F_, 1
	note A_, 2
	note D_, 4
	note D_, 4
	note D_, 2
	note C_, 2
	octave 1
	note A_, 1
	octave 2
	note F_, 1
	note A_, 2
	note C_, 4
	note C_, 4
	note C_, 2
	octave 1
	note A_, 2
	note F_, 1
	octave 2
	note D_, 1
	note F_, 2
	octave 1
	note A#, 4
	note A#, 4
	note A#, 2
	note A_, 2
	note F_, 1
	octave 2
	note D_, 1
	note F_, 2
	octave 1
	note A_, 4
	note A_, 4
	note A_, 2
	octave 2
	sound_loop 0, .mainLoop

.sub1:
	vibrato 5, 1, 0
	volume_envelope 1, 10
	note D_, 2
	octave 1
	note A_, 1
	octave 2
	note F_, 1
	note A_, 2
	note D_, 4
	note D_, 4
	note D_, 2
	note C_, 2
	octave 1
	note A_, 1
	octave 2
	note F_, 1
	note A_, 2
	note C_, 4
	note C_, 4
	note C_, 2
	octave 1
	note A_, 2
	note F_, 1
	octave 2
	note D_, 1
	note F_, 2
	octave 1
	note A#, 4
	note A#, 4
	note A#, 2
	note A_, 2
	note F_, 1
	octave 2
	note D_, 1
	note F_, 2
	octave 1
	note A_, 4
	note A_, 4
	note A_, 2
	octave 2
	sound_ret

Music_ColdWinter_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 6
	toggle_noise
	toggle_noise 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 3
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	octave 8
.mainLoop:
	octave 6
.loop1:
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 3, 1
	drum_note 3, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 3, 1
	drum_note 3, 1
	octave 6
	sound_loop 3, .loop1
	sound_call .sub1
	octave 6
	sound_call .sub2
	drum_speed 12
	octave 6
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
	sound_call .sub2
	octave 6
	drum_speed 12
.loop2:
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 1, 1
	drum_note 1, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 3, 1
	drum_note 3, 1
	octave 6
	sound_loop 3, .loop2
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 1, 1
	drum_note 1, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 1, 1
	drum_note 1, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 2, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	rest 1
	octave 7
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

.sub2:
	drum_note 7, 1
	drum_note 8, 1
	octave 7
	drum_note 1, 1
	drum_note 1, 1
	octave 6
	drum_note 7, 1
	drum_note 8, 1
	octave 7
	drum_note 1, 1
	drum_note 2, 1
	octave 6
	drum_note 7, 1
	drum_note 8, 1
	octave 7
	drum_note 1, 1
	drum_note 1, 1
	octave 6
	drum_note 7, 1
	drum_note 8, 1
	octave 7
	drum_note 1, 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	sound_ret
