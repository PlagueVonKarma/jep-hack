Music_NihonTown01:
	channel_count 4
	channel 1, Music_NihonTown01_Ch1
	channel 2, Music_NihonTown01_Ch2
	channel 3, Music_NihonTown01_Ch3
	channel 4, Music_NihonTown01_Ch4

Music_NihonTown01_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
	stereo_panning TRUE, FALSE
.mainLoop:
	duty_cycle 0
	tempo 107
	octave 3
	volume_envelope 13, 8
	transpose 0, 0
	note D#, 4
	rest 4
	note F#, 4
	rest 4
	note D#, 4
	rest 4
	note C#, 4
	rest 4
	note D#, 4
	rest 4
	note F#, 4
	rest 4
	note C#, 4
	rest 4
	octave 2
	note A#, 4
	octave 3
	rest 4
	note C#, 4
	rest 4
	note F_, 4
	rest 4
	note D#, 4
	rest 4
	note G#, 4
	rest 4
	octave 2
	note B_, 4
	octave 3
	rest 4
	note D#, 4
	rest 4
	note C#, 4
	rest 4
	octave 2
	note B_, 4
	rest 4
.loop1:
	octave 2
	note A#, 4
	rest 4
	note B_, 4
	octave 3
	rest 4
	note C#, 4
	rest 4
	note D#, 4
	rest 4
	note D#, 4
	rest 4
	note G#, 4
	rest 4
	note F#, 4
	rest 4
	note C#, 4
	rest 4
	note D#, 4
	rest 4
	octave 2
	note G#, 4
	octave 3
	rest 4
	note C#, 4
	rest 4
	octave 2
	note A#, 4
	octave 3
	rest 4
	note C#, 4
	rest 4
	note D#, 4
	rest 4
	octave 2
	note A#, 4
	octave 3
	rest 4
	note C#, 4
	rest 4
	octave 8
	sound_loop 2, .loop1
	sound_loop 0, .mainLoop

Music_NihonTown01_Ch2:
	note_type 12, 15, 8
	stereo_panning FALSE, TRUE
.mainLoop:
	transpose 1, 0
	duty_cycle 2
	octave 5
	volume_envelope 10, 8
	note F_, 4
	octave 4
	note F#, 4
	note F#, 4
	note F#, 4
	octave 5
	note C#, 4
	octave 4
	note C#, 4
	note C#, 4
	note C#, 4
	octave 5
	note D#, 4
	octave 4
	note D#, 4
	note D#, 4
	note D#, 4
	note A#, 4
	octave 3
	note A#, 4
	note A#, 4
	note A#, 4
	octave 4
	note A#, 4
	note C#, 4
	note C#, 4
	note C#, 4
	note G#, 4
	octave 3
	note G#, 4
	note G#, 4
	note G#, 4
	octave 4
	note G#, 4
	note D#, 4
	note D#, 4
	note D#, 4
	note F#, 4
	octave 3
	note F#, 4
	note F#, 4
	note F#, 4
.loop1:
	rest 4
	octave 4
	note A#, 4
	note A#, 4
	note A#, 4
	rest 4
	note G#, 4
	note G#, 4
	note G#, 4
	rest 4
	note G#, 4
	note G#, 4
	note G#, 4
	rest 4
	note F_, 4
	note F_, 4
	note F_, 4
	rest 4
	note D#, 4
	note D#, 4
	note D#, 4
	rest 4
	note F_, 4
	note F_, 4
	note F_, 4
	rest 4
	note A#, 4
	note A#, 4
	note A#, 4
	rest 4
	octave 3
	note A#, 4
	note A#, 4
	note A#, 4
	octave 8
	sound_loop 2, .loop1
	sound_loop 0, .mainLoop

Music_NihonTown01_Ch3:
	note_type 12, 1, 0
.mainLoop:
	note_type 12, 1, 0
	volume_envelope 1, 3
	octave 5
	vibrato 7, 1, 9
	note G#, 2
	note A#, 2
	note A#, 1
	note B_, 7
	note G#, 8
	note F_, 12
	note F#, 2
	note G#, 2
	note G#, 1
	note A#, 1
	rest 2
	note A#, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note C#, 12
	note D#, 2
	note F#, 2
	note F#, 1
	note G#, 7
	note F_, 8
	note C#, 4
	note F#, 1
	note G#, 7
	note F_, 4
	vibrato 5, 1, 9
	note F#, 14
	vibrato 0, 1, 9
	note F#, 14
.loop1:
	octave 5
	vibrato 7, 1, 9
	note D#, 4
	note F_, 1
	note F#, 11
	note F_, 4
	note C#, 12
	octave 4
	note B_, 4
	octave 5
	note D#, 1
	note F_, 3
	note D#, 4
	note F#, 4
	octave 4
	note A#, 4
	note B_, 1
	octave 5
	note C#, 11
	octave 4
	note G#, 4
	note A#, 1
	note B_, 11
	octave 5
	note D#, 4
	note C#, 12
	note F_, 4
	note F_, 1
	note F#, 11
	vibrato 0, 1, 9
	note F#, 16
	octave 8
	sound_loop 2, .loop1
	sound_loop 0, .mainLoop

Music_NihonTown01_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 12
	octave 3
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
.loop1:
	drum_speed 12
	drum_note 1, 1
	drum_speed 1
	rest 12
	drum_speed 12
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	rest 3
	drum_note 1, 1
	rest 1
	drum_note 1, 1
	rest 9
	drum_note 1, 1
	rest 15
	drum_note 1, 1
	octave 8
	rest 3
	sound_loop 0, .loop1
	sound_loop 0, .mainLoop
