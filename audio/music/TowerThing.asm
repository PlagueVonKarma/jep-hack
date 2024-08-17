Music_TowerThing:						; Dramatic Tower/Cave theme
	channel_count 4						; Composed by LuciShrimp
	channel 1, Music_TowerThing_Ch1
	channel 2, Music_TowerThing_Ch2
	channel 3, Music_TowerThing_Ch3
	channel 4, Music_TowerThing_Ch4

Music_TowerThing_Ch1:
	volume 7, 7
	note_type 12, 10, 5
	octave 3
	vibrato 8, 4, 5
	duty_cycle 3
	tempo 256
	sound_call .sub2
	octave 8
.mainLoop:
	octave 3
	sound_call .sub1
	note_type 12, 10, 5
	octave 3
.loop1:
	octave 2
	tempo 250
	note E_, 4
	volume_envelope 10, 7
	note E_, 8
	volume_envelope 10, 5
	note F_, 4
	note D_, 4
	note E_, 4
	volume_envelope 10, 7
	note E_, 8
	volume_envelope 10, 5
	note G_, 4
	note F_, 4
	note E_, 2
	note E_, 4
	note F_, 2
	note E_, 4
	note F_, 4
	note F_, 4
	note G_, 2
	note D_, 4
	note G_, 2
	note D_, 4
	note D_, 4
	note F_, 4
	octave 3
	sound_loop 3, .loop1
	sound_call .sub2
	note_type 12, 10, 5
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	vibrato 8, 4, 5
	duty_cycle 3
	volume_envelope 10, 5
	octave 2
	tempo 250
	note E_, 2
	note G_, 1
	note D_, 1
	note G_, 4
	note E_, 2
	note F_, 4
	note E_, 1
	note F_, 1
	note G_, 4
	note A#, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note G_, 4
	note A_, 1
	note G_, 1
	note F_, 1
	note D_, 1
	note C_, 4
	note D_, 4
	note C_, 2
	octave 1
	note A_, 1
	note A#, 1
	note A_, 2
	octave 2
	note C_, 2
	note F_, 4
	octave 1
	note A#, 2
	note A_, 6
	octave 2
	note G_, 1
	note D_, 1
	octave 1
	note A#, 1
	note A_, 1
	octave 2
	note C_, 4
	note D_, 1
	note C_, 1
	octave 1
	note A#, 1
	note A_, 1
	note A#, 2
	octave 2
	note C_, 2
	octave 1
	note A#, 1
	octave 2
	note C_, 3
	sound_ret

.sub2:
	octave 2
	tempo 250
	note E_, 2
	note G_, 1
	note D_, 1
	note G_, 4
	note E_, 2
	note F_, 4
	note E_, 1
	note F_, 1
	note G_, 4
	note A#, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note G_, 4
	note A_, 1
	note G_, 1
	note F_, 1
	note D_, 1
	note C_, 4
	note D_, 4
	note C_, 2
	octave 1
	note A_, 1
	note A#, 1
	note A_, 2
	octave 2
	note C_, 2
	note F_, 4
	octave 1
	note A#, 2
	note A_, 6
	octave 2
	note G_, 1
	note D_, 1
	octave 1
	note A#, 1
	note A_, 1
	octave 2
	note C_, 4
	note D_, 1
	note C_, 1
	octave 1
	note A#, 1
	note A_, 1
	note A#, 2
	octave 2
	note C_, 2
	octave 1
	note A#, 1
	octave 2
	note C_, 3
	sound_ret

Music_TowerThing_Ch2:
	note_type 12, 15, 8
	octave 4
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
.mainLoop:
	octave 4
	volume_envelope 11, 5
	vibrato 24, 4, 4
	duty_cycle 3
	sound_call .sub1
	octave 2
	note A_, 4
	note A_, 8
	note A#, 4
	note G_, 4
	note A_, 4
	note A_, 8
	octave 3
	note C_, 4
	octave 2
	note A#, 4
	note A_, 2
	note A_, 4
	note A#, 2
	note A_, 4
	note A#, 4
	note A#, 4
	octave 3
	note C_, 2
	octave 2
	note G_, 4
	octave 3
	note C_, 2
	octave 2
	note G_, 4
	note G_, 4
	note A#, 4
	octave 4
.loop1:
	volume_envelope 11, 5
	octave 3
	note A_, 1
	note G_, 1
	note A_, 2
	octave 4
	volume_envelope 11, 7
	note E_, 8
	volume_envelope 11, 5
	note C_, 4
	note D_, 4
	octave 3
	note A_, 1
	note G_, 1
	note A_, 2
	octave 4
	volume_envelope 11, 7
	note E_, 8
	volume_envelope 11, 5
	octave 3
	note A#, 4
	note G_, 4
	note A_, 1
	note G_, 1
	octave 4
	note E_, 4
	note C_, 2
	note D_, 4
	octave 3
	note A#, 4
	note G_, 4
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note G_, 4
	note C_, 2
	note F_, 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 1
	note G_, 1
	note A#, 2
	octave 4
	sound_loop 2, .loop1
	note_type 12, 11, 5
	octave 3
	note A_, 8
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 11, 5
	vibrato 24, 4, 4
	duty_cycle 3
	octave 3
	note A_, 4
	note F_, 1
	note G_, 1
	note A_, 4
	note A#, 4
	note A_, 1
	note A#, 1
	octave 4
	note C_, 4
	note E_, 1
	note D_, 1
	octave 3
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note E_, 4
	note F_, 4
	note G_, 4
	note F_, 4
	note A_, 1
	note G_, 1
	note F_, 2
	note D_, 4
	note E_, 4
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	note E_, 4
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	note E_, 1
	note G_, 1
	note E_, 2
	note G_, 2
	note E_, 1
	note G_, 3
	octave 4
	sound_ret

Music_TowerThing_Ch3:
	note_type 12, 3, 4
	octave 1
	sound_call .sub2
	octave 3
.mainLoop:
	octave 2
	sound_call .sub1
	note_type 12, 1, 4
.loop1:
	volume_envelope 1, 4
	octave 2
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 5
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	octave 3
	rest 5
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	note E_, 1
	rest 3
	note A#, 1
	rest 1
	note E_, 1
	rest 3
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	octave 3
	rest 1
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	octave 3
	rest 3
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note D_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	octave 3
	rest 1
	sound_loop 3, .loop1
	note_type 12, 1, 4
	octave 1
	sound_call .sub2
	octave 3
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	octave 1
	volume_envelope 2, 4
	note A_, 2
	octave 2
	note C_, 4
	note E_, 4
	note C_, 2
	octave 1
	note G_, 2
	note A#, 1
	octave 2
	note D_, 1
	note F_, 2
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note C_, 4
	note E_, 4
	note C_, 2
	octave 1
	note G_, 1
	note A#, 1
	octave 2
	note D_, 2
	note G_, 2
	note D_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 1
	note F_, 1
	note D_, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note C_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	note D_, 1
	octave 1
	note A#, 1
	note G_, 2
	note A#, 4
	note G_, 2
	note G_, 1
	note A#, 2
	octave 2
	note E_, 1
	note G_, 2
	note E_, 2
	octave 3
	sound_ret

.sub2:
	volume_envelope 2, 4
	note A_, 2
	octave 2
	note C_, 4
	note E_, 4
	note C_, 2
	octave 1
	note G_, 2
	note A#, 1
	octave 2
	note D_, 1
	note F_, 2
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note C_, 4
	note E_, 4
	note C_, 2
	octave 1
	note G_, 1
	note A#, 1
	octave 2
	note D_, 2
	note G_, 2
	note D_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 1
	note F_, 1
	note D_, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note C_, 2
	note E_, 4
	note F_, 2
	note G_, 2
	note D_, 1
	octave 1
	note A#, 1
	note G_, 2
	note A#, 4
	note G_, 2
	note G_, 1
	note A#, 2
	octave 2
	note E_, 1
	note G_, 2
	note E_, 2
	sound_ret

Music_TowerThing_Ch4:
	toggle_noise 0
	drum_speed 12
	octave 5
.loop1:
	sound_call .sub1
	octave 8
.mainLoop:
	octave 5
	sound_call .sub1
	drum_speed 12
	octave 5
	sound_call .sub1
	drum_speed 12
	octave 5
	toggle_noise
	toggle_noise 4
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 5, 1
	rest 7
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 5, 1
	rest 7
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	rest 16
	rest 4
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 5, 1
	rest 7
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 5, 1
	rest 7
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	toggle_noise
	toggle_noise 4
	drum_note 9, 2
	octave 5
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 3
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 2
	drum_note 7, 1
	drum_note 7, 2
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 2
	drum_note 7, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 7, 1
	drum_note 9, 1
	sound_ret
