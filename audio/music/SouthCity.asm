Music_SouthCity:							; South City theme
	channel_count 4							; Composed by LuciShrimp
	channel 1, Music_SouthCity_Ch1
	channel 2, Music_SouthCity_Ch2
	channel 3, Music_SouthCity_Ch3
	channel 4, Music_SouthCity_Ch4

Music_SouthCity_Ch1:
	volume 7, 7
	octave 3
	tempo 212
	note_type 12, 12, 8
	sound_call .sub1
	note_type 12, 3, 8
	octave 8
.mainLoop:
	octave 3
	volume_envelope 12, 8
.loop1:
	duty_cycle 2
	volume_envelope 12, 7
	octave 2
	tempo 222
	note G_, 8
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	note E_, 8
	note G_, 8
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 8
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	octave 3
	sound_loop 2, .loop1
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 2
	octave 2
	tempo 222
	volume_envelope 12, 7
	note G_, 8
	note_type 12, 12, 7
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	note E_, 8
	note G_, 8
	note F#, 4
	note D_, 4
	octave 1
	note B_, 8
	octave 2
	note C_, 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	octave 3
	sound_ret

Music_SouthCity_Ch2:
	note_type 12, 12, 7
	vibrato 18, 2, 3
	octave 3
	duty_cycle 3
	sound_call .sub1
	rest 1
	octave 8
.mainLoop:
	volume_envelope 12, 7
	octave 4
	note C_, 2
	note D_, 1
	octave 3
	note A_, 1
	note B_, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note B_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note G_, 1
	note A_, 1
	octave 4
	note_type 9, 12, 7
	note D_, 2
	note_type 6, 12, 7
	note D#, 1
	note_type 12, 12, 7
	note E_, 4
	note D_, 4
	note E_, 2
	note F_, 1
	note C_, 1
	note D_, 2
	note C_, 2
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 3
	duty_cycle 2
	octave 2
	note F#, 1
	note A_, 3
	note G_, 1
	note B_, 3
	note G_, 1
	note A_, 3
	note F#, 1
	octave 4
	duty_cycle 3
	note C_, 8
	octave 3
	note B_, 8
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note G_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 8
	note A_, 6
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note G_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	sound_call .sub1
	octave 8
	note_type 12, 15, 8
	rest 1
	sound_loop 0, .mainLoop

.sub1:
	note G_, 1
	rest 1
	volume_envelope 6, 7
	note G_, 1
	rest 1
	volume_envelope 3, 7
	note G_, 1
	rest 1
	volume_envelope 1, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note F#, 1
	rest 1
	volume_envelope 6, 7
	note F#, 1
	rest 1
	volume_envelope 3, 7
	note F#, 1
	rest 1
	volume_envelope 1, 7
	note F#, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	rest 1
	volume_envelope 6, 7
	note E_, 1
	rest 1
	volume_envelope 3, 7
	note E_, 1
	rest 1
	volume_envelope 1, 7
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	rest 1
	volume_envelope 3, 7
	note D_, 1
	rest 1
	volume_envelope 1, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	volume_envelope 6, 7
	note G_, 1
	rest 1
	volume_envelope 3, 7
	note G_, 1
	rest 1
	volume_envelope 1, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	rest 1
	volume_envelope 6, 7
	note A_, 1
	rest 1
	volume_envelope 3, 7
	note A_, 1
	rest 1
	volume_envelope 1, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	volume_envelope 6, 7
	note B_, 1
	rest 1
	volume_envelope 3, 7
	octave 4
	note C_, 1
	rest 1
	volume_envelope 1, 7
	note C_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 6, 7
	note D_, 1
	rest 1
	volume_envelope 3, 7
	note C_, 1
	rest 1
	volume_envelope 1, 7
	note C_, 1
	octave 3
	sound_ret

Music_SouthCity_Ch3:
	note_type 12, 1, 5
	vibrato 8, 2, 3
	rest 16
	rest 16
	octave 4
	sound_call .sub1
	note_type 12, 3, 5
	octave 8
.mainLoop:
	volume_envelope 1, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 2, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 3, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	volume_envelope 1, 2
	octave 3
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 2, 2
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 3, 2
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	volume_envelope 1, 2
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 2, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 3, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	volume_envelope 1, 2
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	rest 1
	volume_envelope 2, 2
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	rest 1
	volume_envelope 3, 2
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	volume_envelope 1, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 2, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 3, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	volume_envelope 1, 2
	octave 3
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 2, 2
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 3, 2
	note F#, 1
	octave 4
	note C_, 1
	octave 3
	volume_envelope 1, 2
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 2, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	rest 1
	volume_envelope 3, 2
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	volume_envelope 1, 2
	note C_, 1
	note G_, 1
	rest 1
	volume_envelope 2, 2
	note C_, 1
	note G_, 1
	rest 1
	volume_envelope 3, 2
	note C_, 1
	note G_, 1
	volume_envelope 1, 2
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 2, 2
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 3, 2
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	volume_envelope 1, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 3, 2
	note F#, 1
	note B_, 1
	volume_envelope 1, 2
	note E_, 1
	note A_, 1
	rest 1
	volume_envelope 2, 2
	note E_, 1
	note A_, 1
	rest 1
	volume_envelope 3, 2
	note E_, 1
	note A_, 1
	volume_envelope 1, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 3, 2
	note F#, 1
	note B_, 1
	volume_envelope 1, 2
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 2, 2
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	volume_envelope 3, 2
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	volume_envelope 1, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 3, 2
	note F#, 1
	note B_, 1
	volume_envelope 1, 2
	note E_, 1
	note A_, 1
	rest 1
	volume_envelope 2, 2
	note E_, 1
	note A_, 1
	rest 1
	volume_envelope 3, 2
	note E_, 1
	note A_, 1
	volume_envelope 1, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 2, 2
	note F#, 1
	note B_, 1
	rest 1
	volume_envelope 3, 2
	note F#, 1
	note B_, 1
	volume_envelope 1, 2
	octave 4
	note D_, 2
	volume_envelope 2, 2
	octave 3
	note D_, 2
	volume_envelope 3, 2
	octave 4
	note D_, 2
	octave 3
	note D_, 2
	volume_envelope 1, 2
	octave 4
	note C_, 2
	volume_envelope 2, 2
	octave 3
	note C_, 2
	volume_envelope 3, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	volume_envelope 1, 2
	note B_, 2
	volume_envelope 2, 2
	octave 2
	note B_, 2
	volume_envelope 3, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	volume_envelope 1, 2
	octave 3
	note A_, 2
	volume_envelope 2, 2
	octave 2
	note A_, 2
	volume_envelope 3, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	volume_envelope 1, 2
	octave 4
	sound_call .sub1
	octave 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
	volume_envelope 1, 2
	note D_, 2
	volume_envelope 2, 2
	octave 3
	note D_, 2
	volume_envelope 3, 2
	octave 4
	note D_, 2
	octave 3
	note D_, 2
	volume_envelope 1, 2
	octave 4
	note E_, 2
	volume_envelope 2, 2
	octave 3
	note E_, 2
	volume_envelope 3, 2
	octave 4
	note E_, 2
	octave 3
	note E_, 2
	volume_envelope 1, 2
	octave 4
	note F#, 2
	volume_envelope 2, 2
	octave 3
	note F#, 2
	volume_envelope 3, 2
	octave 4
	note G_, 2
	octave 3
	note G_, 2
	volume_envelope 1, 2
	octave 4
	note A_, 2
	volume_envelope 2, 2
	octave 3
	note A_, 2
	volume_envelope 3, 2
	octave 4
	note G_, 2
	octave 3
	note A_, 2
	sound_ret

Music_SouthCity_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 8
	octave 5
	toggle_noise
	toggle_noise 3
	sound_call .sub1
	octave 8
	drum_speed 12
	toggle_noise
	toggle_noise 0
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 3
	drum_speed 6
.loop1:
	drum_note 4, 4
	drum_speed 12
	sound_call .sub2
	sound_loop 2, .loop1
	octave 5
	drum_speed 6
.loop2:
	drum_note 4, 2
	drum_note 4, 2
	drum_speed 12
	drum_note 7, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_speed 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_speed 12
	drum_note 7, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_speed 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_speed 12
	drum_note 7, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_speed 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_speed 12
	drum_note 7, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_speed 6
	drum_note 4, 1
	drum_note 4, 1
	sound_loop 2, .loop2
	drum_speed 6
	drum_note 4, 4
	drum_speed 12
	sound_call .sub2
	drum_speed 6
	drum_note 4, 4
	drum_speed 12
	sound_call .sub2
	drum_speed 12
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	drum_note 4, 2
	drum_note 3, 2
	drum_note 7, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

.sub2:
	drum_note 7, 1
	drum_note 7, 1
	drum_note 3, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 3, 2
	drum_note 7, 1
	drum_speed 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 4
	drum_speed 12
	drum_note 7, 1
	drum_note 7, 1
	drum_note 3, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 4, 1
	drum_note 7, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_speed 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	sound_ret
