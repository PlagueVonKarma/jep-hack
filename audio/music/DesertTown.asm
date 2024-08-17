Music_DesertTown:
	channel_count 4
	channel 1, Music_DesertTown_Ch1
	channel 2, Music_DesertTown_Ch2
	channel 3, Music_DesertTown_Ch3
	channel 4, Music_DesertTown_Ch4

Music_DesertTown_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	note_type 12, 15, 3
	vibrato 24, 3, 4
	duty_cycle 1
	octave 3
.loop1:
	volume_envelope 15, 3
	tempo 222
	octave 2
	vibrato 6, 5, 10
	note F#, 1
	note A_, 2
	octave 3
	note C#, 1
	note F#, 2
	note C#, 2
	octave 2
	note A_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	note G#, 1
	note B_, 2
	octave 3
	note F_, 1
	note F#, 2
	note F_, 2
	octave 2
	note B_, 1
	note G#, 1
	note B_, 1
	note G#, 1
	note A_, 1
	octave 3
	note C#, 2
	note F#, 1
	note D_, 2
	note F#, 2
	note D_, 1
	note C#, 1
	octave 2
	note A_, 1
	octave 3
	note C#, 1
	octave 2
	note G#, 1
	octave 3
	note C#, 2
	octave 2
	note G#, 1
	octave 3
	note C#, 1
	note F_, 1
	note C#, 1
	octave 2
	note G#, 1
	octave 3
	sound_loop 4, .loop1
	note_type 12, 15, 8
.loop2:
	volume_envelope 15, 3
	vibrato 6, 5, 10
	note C#, 4
	octave 3
	note F#, 2
	note D_, 2
	note F#, 2
	note F_, 2
	note C#, 4
	note F#, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note A_, 4
	note B_, 2
	note A_, 2
	note B_, 2
	note G#, 2
	note F#, 4
	note G#, 1
	note F#, 1
	note F_, 1
	note D_, 1
	sound_loop 2, .loop2
	octave 8
	sound_loop 0, .mainLoop

Music_DesertTown_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 4
	volume_envelope 15, 7
	vibrato 8, 2, 4
	duty_cycle 3
	sound_call .sub1
	note_type 6, 15, 7
	vibrato 20, 7, 15
	note C#, 8
	octave 3
	note B_, 8
	octave 4
	note_type 12, 15, 7
	sound_call .sub2
	octave 4
	vibrato 20, 7, 15
	note F#, 3
	note A_, 1
	note B_, 4
	note A_, 2
	note G#, 2
	note F_, 3
	note G#, 1
	note A_, 4
	note G#, 2
	note F#, 2
	note C#, 3
	note F#, 1
	note G#, 4
	note F#, 2
	note F_, 2
	note C#, 2
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note F_, 1
	sound_call .sub2
	note_type 12, 15, 7
	octave 4
	vibrato 20, 7, 15
	note C#, 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

.sub1:
	vibrato 20, 7, 15
	note C#, 3
	note_type 3, 15, 7
	note D_, 1
	note D#, 1
	octave 4
	note E_, 1
	note F_, 1
	note_type 12, 15, 7
	transpose 0, 0
	note F#, 4
	note_type 3, 15, 7
	note C#, 13
	note D_, 1
	note D#, 1
	note E_, 1
	note_type 12, 15, 7
	note F_, 12
	note D_, 12
	sound_ret

.sub2:
	vibrato 20, 7, 15
	note C#, 3
	note_type 3, 15, 7
	note D_, 1
	note D#, 1
	octave 4
	note E_, 1
	note F_, 1
	note_type 12, 15, 7
	note F#, 3
	note_type 3, 15, 7
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 13
	note D_, 1
	note D#, 1
	note E_, 1
	note_type 12, 15, 7
	note F_, 12
	note D_, 12
	note F_, 4
	note F#, 4
	octave 5
	sound_ret

Music_DesertTown_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 2
.loop1:
	sound_call .sub1
	note_type 12, 1, 0
.loop3:
	volume_envelope 1, 6
	vibrato 6, 2, 8
	octave 2
	note F#, 2
	note F#, 1
	note F#, 1
	note A_, 2
	note F#, 2
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	note A_, 2
	note G#, 2
	note G#, 1
	note G#, 1
	note B_, 2
	note G#, 2
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	note A_, 1
	note G#, 1
	note A_, 2
	octave 3
	note C#, 1
	octave 2
	note A_, 1
	note F#, 2
	note A_, 2
	octave 3
	note C#, 1
	octave 2
	note A_, 1
	note F#, 1
	note A_, 1
	note F_, 2
	note G#, 2
	note F#, 2
	note F_, 2
	sound_loop 2, .loop3
	octave 2
	sound_call .sub1
	octave 8
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

.sub1:
.loop2:
	volume_envelope 1, 6
	vibrato 6, 2, 8
	octave 2
	note F#, 2
	note A_, 2
	note F#, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	note G#, 4
	note B_, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note F#, 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note F#, 2
	note F_, 2
	note G#, 2
	note F#, 2
	note F_, 2
	sound_loop 2, .loop2
	sound_ret

Music_DesertTown_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 12
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 12
	sound_loop 0, .mainLoop
