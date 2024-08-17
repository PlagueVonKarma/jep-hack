Music_LavenderCrypt:
	channel_count 4
	channel 1, Music_LavenderCrypt_Ch1
	channel 2, Music_LavenderCrypt_Ch2
	channel 3, Music_LavenderCrypt_Ch3
	channel 4, Music_LavenderCrypt_Ch4

Music_LavenderCrypt_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 2
	tempo 211
	duty_cycle 2
	volume_envelope 0, 7
	vibrato 2, 2, 2
	note C_, 1
	rest 16
	rest 15
	note_type 12, 15, 8
	rest 12
	volume_envelope 11, 7
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 8
	note E_, 8
	note F#, 8
	note A_, 8
	note G_, 4
	note G_, 4
	note F#, 4
	note F#, 4
	note E_, 2
	note C#, 2
	octave 3
	note C_, 8
	octave 2
	note B_, 8
	note A#, 8
	note G_, 8
	note F#, 8
	note E_, 8
	note D_, 4
	note G_, 1
	rest 7
	note G_, 1
	rest 7
	octave 1
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	octave 2
	note C_, 8
	note D_, 4
	note C_, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note C_, 8
	rest 8
	octave 1
	note B_, 8
	rest 8
	note G_, 8
	rest 12
	octave 2
	note C_, 8
	rest 8
	octave 1
	note B_, 8
	rest 8
	note G_, 8
	rest 12
	octave 4
	note C_, 8
	octave 3
	note B_, 8
	note G_, 8
	note E_, 8
	octave 4
	note C_, 8
	octave 3
	note B_, 4
	note G_, 4
	note E_, 4
	octave 4
	note C_, 8
	octave 3
	note B_, 8
	note G_, 8
	note E_, 8
	octave 4
	note C_, 8
	octave 3
	note B_, 4
	note G_, 4
	note_type 6, 11, 7
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 5
	note_type 12, 11, 6
.loop1:
	duty_cycle 2
	octave 4
	volume_envelope 11, 7
	note C_, 3
	octave 3
	note B_, 3
	note G_, 3
	note E_, 3
	octave 5
	sound_loop 2, .loop1
	sound_call .sub1
	duty_cycle 2
	octave 4
	volume_envelope 11, 7
	note C_, 3
	octave 3
	note B_, 3
	octave 4
	note C_, 3
	octave 3
	note B_, 3
	volume_envelope 10, 7
	note G_, 3
	note E_, 3
	octave 4
	volume_envelope 9, 7
	note C_, 3
	octave 3
	note B_, 3
	volume_envelope 8, 7
	note G_, 3
	note E_, 3
	octave 4
	volume_envelope 7, 7
	note C_, 3
	octave 3
	note B_, 3
	volume_envelope 6, 7
	note G_, 3
	note E_, 3
	octave 4
	volume_envelope 5, 7
	note C_, 3
	octave 3
	note B_, 3
	volume_envelope 4, 7
	note G_, 3
	note E_, 3
	octave 4
	volume_envelope 3, 7
	note C_, 3
	octave 3
	volume_envelope 2, 7
	note B_, 3
	volume_envelope 1, 7
	note G_, 3
	note E_, 3
	note_type 12, 11, 6
	rest 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 2
	octave 4
	volume_envelope 11, 7
	note C_, 3
	octave 3
	note B_, 3
	note G_, 3
	note E_, 3
	octave 4
	sound_ret

Music_LavenderCrypt_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 5
	vibrato 0, 2, 1
	duty_cycle 1
	volume_envelope 15, 2
.loop1:
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 15, 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note F#, 2
	rest 2
	sound_loop 2, .loop1
	sound_call .sub1
	rest 2
	note_type 12, 15, 2
	octave 5
	duty_cycle 3
	vibrato 20, 3, 4
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	sound_call .sub1
	note_type 12, 15, 2
	rest 2
	octave 4
	sound_call .sub2
	rest 2
	octave 4
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 15, 2
	note A_, 2
	octave 5
	rest 2
	note E_, 2
	rest 2
	note A_, 2
	rest 2
	note E_, 2
	note_type 12, 15, 2
	rest 2
	note A_, 2
	note E_, 2
	octave 4
	volume_envelope 12, 7
	note G_, 8
	note F#, 8
	note F_, 8
	note D_, 8
	note C#, 8
	octave 3
	note B_, 8
	note A_, 4
	octave 5
	note C_, 8
	octave 4
	note B_, 4
	note G_, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note G_, 8
	octave 5
	note C_, 8
	octave 4
	note B_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	octave 5
	note C_, 4
	octave 4
	sound_call .sub3
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 12, 7
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	pitch_slide 3, 3, C#
	note C#, 4
	sound_call .sub3
	note_type 12, 12, 7
	duty_cycle 3
	vibrato 20, 3, 4
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note_type 6, 15, 7
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note_type 12, 15, 7
	sound_call .sub4
	rest 4
	sound_call .sub4
	note_type 12, 15, 7
	rest 4
	duty_cycle 3
	note D_, 6
	rest 2
	note E_, 6
	rest 2
	note G_, 3
	rest 1
	note A#, 12
	rest 4
	note F#, 12
	rest 4
	note A#, 16
	rest 16
	rest 16
	rest 16
	rest 12
	octave 5
	volume_envelope 1, 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	volume_envelope 2, 2
	note B_, 2
	rest 2
	note F#, 2
	rest 2
	volume_envelope 3, 2
	note C_, 2
	rest 2
	volume_envelope 4, 2
	note G_, 2
	rest 2
	volume_envelope 5, 2
	note B_, 2
	rest 2
	volume_envelope 7, 2
	note F#, 2
	rest 2
	note C_, 2
	rest 2
	volume_envelope 8, 2
	note G_, 2
	rest 2
	volume_envelope 9, 2
	note B_, 2
	rest 2
	volume_envelope 10, 2
	note F#, 2
	rest 2
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 15, 2
	note C_, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note F#, 2
	sound_ret

.sub2:
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 15, 2
	note B_, 2
	octave 5
	rest 2
	note F#, 2
	rest 2
	note A#, 2
	rest 2
	note E_, 2
	sound_ret

.sub3:
	duty_cycle 3
	vibrato 20, 3, 4
	volume_envelope 12, 7
	note G_, 8
	note G_, 8
	sound_ret

.sub4:
	duty_cycle 3
	note C_, 12
	sound_ret

Music_LavenderCrypt_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	note_type 12, 1, 0
	rest 16
	rest 4
	vibrato 5, 2, 2
	octave 2
	volume_envelope 1, 10
	note D_, 4
	note E_, 4
	note F#, 4
	note G_, 4
	note C_, 4
	note D_, 4
	note D_, 4
	note E_, 4
	octave 1
	note B_, 8
	rest 4
	octave 3
	note E_, 2
	note D#, 2
	note F#, 2
	note D#, 2
	note E_, 12
	note F#, 12
	note D_, 12
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 3
	note E_, 1
	note D#, 1
	note F#, 1
	note D#, 1
	note E_, 1
	octave 4
	rest 16
	rest 11
	sound_call .sub1
	rest 4
	sound_call .sub1
	note_type 12, 1, 10
	vibrato 5, 2, 2
	octave 3
	note E_, 4
	rest 8
	note G_, 8
	note E_, 8
	note G_, 8
	octave 4
.loop1:
	vibrato 5, 2, 2
	octave 3
	volume_envelope 1, 10
	note E_, 4
	note G_, 4
	octave 4
	sound_loop 2, .loop1
	vibrato 5, 2, 2
	octave 3
	volume_envelope 1, 10
	note F#, 2
	note G_, 2
	octave 4
.loop2:
	vibrato 5, 2, 2
	octave 3
	volume_envelope 1, 10
	note G_, 3
	octave 4
	rest 1
	sound_loop 12, .loop2
	vibrato 5, 2, 2
	octave 3
	volume_envelope 1, 10
	note G_, 2
	note_type 6, 1, 10
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 5
	note_type 12, 1, 0
.loop3:
	vibrato 5, 2, 2
	octave 4
	volume_envelope 1, 10
	note C_, 3
	octave 3
	note B_, 3
	note G_, 3
	note E_, 3
	octave 5
	sound_loop 3, .loop3
	vibrato 5, 2, 2
	octave 4
	volume_envelope 1, 10
	note C_, 3
	octave 3
	note B_, 3
	note G_, 16
	volume_envelope 2, 10
	note G_, 16
	volume_envelope 3, 10
	note G_, 16
	octave 8
	rest 14
	sound_loop 0, .mainLoop

.sub1:
	vibrato 5, 2, 2
	octave 3
	volume_envelope 1, 10
	note E_, 8
	volume_envelope 3, 10
	note E_, 8
	volume_envelope 1, 10
	note D_, 8
	volume_envelope 3, 10
	note D_, 8
	volume_envelope 1, 10
	note C_, 8
	volume_envelope 3, 10
	note C_, 8
	octave 4
	sound_ret

Music_LavenderCrypt_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	octave 7
	toggle_noise
	toggle_noise 3
.loop1:
	drum_note 3, 8
	drum_note 7, 8
	drum_note 3, 8
	drum_note 7, 8
	drum_note 3, 8
	drum_note 7, 8
	sound_call .sub1
	sound_loop 7, .loop1
	rest 2
	octave 7
	sound_call .sub1
	drum_speed 12
	rest 2
	octave 7
	sound_call .sub1
	drum_speed 12
	rest 2
	octave 7
	sound_call .sub1
	octave 8
	drum_speed 12
	rest 16
	rest 16
	rest 2
	sound_loop 0, .mainLoop

.sub1:
	drum_note 7, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_note 7, 1
	sound_ret
