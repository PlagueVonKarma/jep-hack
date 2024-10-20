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
	octave 3
	transpose 0, 0
	tempo 113
	volume_envelope 15, 8
	note E_, 4
	rest 4
	note G_, 4
	rest 4
	note E_, 4
	rest 4
	note D_, 4
	rest 4
	note E_, 4
	rest 4
	note G_, 4
	rest 4
	note D_, 4
	rest 4
	octave 2
	note B_, 4
	octave 3
	rest 4
	note D_, 4
	rest 4
	note F#, 4
	rest 4
	note E_, 4
	rest 4
	note A_, 4
	rest 4
	note C_, 4
	rest 4
	note E_, 4
	rest 4
	note D_, 4
	rest 4
	note C_, 4
	octave 2
	rest 4
.loop1:
	octave 2
	note B_, 4
	rest 4
	octave 3
	note C_, 4
	rest 4
	note D_, 4
	rest 4
	note E_, 4
	rest 4
	note E_, 4
	rest 4
	note A_, 4
	rest 4
	note G_, 4
	rest 4
	note D_, 4
	rest 4
	note E_, 4
	rest 4
	octave 2
	note A_, 4
	octave 3
	rest 4
	note D_, 4
	rest 4
	octave 2
	note B_, 4
	octave 3
	rest 4
	note D_, 4
	rest 4
	note E_, 4
	rest 4
	octave 2
	note B_, 4
	octave 3
	rest 4
	note D_, 4
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
	volume_envelope 12, 8
	note F#, 4
	octave 4
	note G_, 4
	note G_, 4
	note G_, 4
	octave 5
	note D_, 4
	octave 4
	note D_, 4
	note D_, 4
	note D_, 4
	octave 5
	note E_, 4
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note B_, 4
	octave 3
	note B_, 4
	note B_, 4
	note B_, 4
	octave 4
	note B_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note A_, 4
	octave 3
	note A_, 4
	note A_, 4
	note A_, 4
	octave 4
	note A_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note G_, 4
	octave 3
	note G_, 4
	note G_, 4
	note G_, 4
.loop1:
	rest 4
	octave 4
	volume_envelope 12, 8
	note B_, 4
	note B_, 4
	note B_, 4
	rest 4
	note A_, 4
	note A_, 4
	note A_, 4
	rest 4
	note A_, 4
	note A_, 4
	note A_, 4
	rest 4
	note F#, 4
	note F#, 4
	note F#, 4
	rest 4
	note E_, 4
	note E_, 4
	note E_, 4
	rest 4
	note F#, 4
	note F#, 4
	note F#, 4
	rest 4
	note B_, 4
	note B_, 4
	note B_, 4
	rest 4
	octave 3
	note B_, 4
	note B_, 4
	note B_, 4
	octave 8
	sound_loop 2, .loop1
	sound_loop 0, .mainLoop

Music_NihonTown01_Ch3:
	note_type 12, 1, 0
.mainLoop:
	note_type 12, 1, 2
	vibrato 7, 1, 9
	octave 4
	note A_, 2
	note B_, 2
	note B_, 1
	octave 5
	note C_, 7
	octave 4
	note A_, 8
	note F#, 12
	note G_, 2
	note A_, 2
	note A_, 1
	note B_, 1
	rest 2
	note B_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note D_, 12
	note E_, 2
	note G_, 2
	note G_, 1
	note A_, 7
	note F#, 8
	note D_, 4
	note G_, 1
	note A_, 7
	note F#, 4
	vibrato 5, 1, 9
	note G_, 14
	vibrato 0, 1, 9
	note G_, 14
	octave 5
.loop1:
	vibrato 7, 1, 9
	octave 4
	note E_, 4
	note F#, 1
	note G_, 11
	note F#, 4
	note D_, 12
	note C_, 4
	note E_, 1
	note F#, 3
	note E_, 4
	note G_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 1
	note D_, 11
	octave 3
	note A_, 4
	note B_, 1
	octave 4
	note C_, 11
	note E_, 4
	note D_, 12
	note F#, 4
	note F#, 1
	note G_, 11
	vibrato 0, 1, 9
	note G_, 16
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
