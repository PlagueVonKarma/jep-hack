; Star Fox Fortuna Theme demake
; Composed by Hajime Hirasawa.
; I thought that I've moved on from making demakes, but I will make an exception for my favorite game of all time. The music made by Hajime Hirasawa is on a whole different level, and his work was the ultimate motivation
; for me to become a VGM composer. Consider this to be a bit of an hommage to the man who sent me down this way.
; Demake by LuciShrimp. 

Music_FortunaSF:
	channel_count 4
	channel 1, Music_FortunaSF_Ch1
	channel 2, Music_FortunaSF_Ch2
	channel 3, Music_FortunaSF_Ch3
	channel 4, Music_FortunaSF_Ch4

Music_FortunaSF_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	octave 2
	tempo 171
	vibrato 4, 1, 1
	duty_cycle 2
	volume_envelope 7, 7
	note F_, 1
	rest 1
	sound_call .sub1
	rest 4
	note_type 12, 4, 7
	rest 1
	octave 2
	duty_cycle 2
	volume_envelope 7, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 7, 7
	note D#, 1
	rest 4
	note_type 12, 4, 7
	rest 1
	volume_envelope 7, 7
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	octave 2
	note_type 4, 4, 7
	rest 1
	volume_envelope 7, 7
	note A#, 1
	rest 5
	note F_, 1
	rest 4
	note_type 12, 4, 7
	rest 3
	sound_call .sub1
	note_type 12, 4, 7
	rest 2
	octave 2
	note_type 4, 4, 7
	rest 1
	note_type 12, 7, 7
	duty_cycle 2
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 2
	note A#, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 4
	note_type 12, 4, 7
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	pitch_slide 3, 1, C_
	sound_call .sub3
	octave 3
	volume_envelope 8, 7
	sound_call .sub2
	volume_envelope 8, 7
	duty_cycle 2
	note G#, 4
	volume_envelope 6, 7
	note G#, 4
	volume_envelope 4, 7
	note G#, 4
	volume_envelope 3, 7
	note G#, 4
	volume_envelope 2, 7
	note G#, 4
	volume_envelope 1, 7
	note G#, 4
	note G#, 4
	sound_call .sub2
	duty_cycle 2
	octave 3
	note_type 2, 8, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 8, 7
	note C#, 3
	octave 3
	note_type 2, 4, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 4, 7
	note C#, 3
	octave 3
	note_type 2, 2, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 2, 7
	note C#, 3
	octave 3
	note_type 2, 1, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 1, 7
	note C#, 3
	octave 3
	note_type 2, 8, 7
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note_type 12, 8, 7
	note C_, 3
	octave 3
	note_type 2, 4, 7
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note_type 12, 4, 7
	note C_, 3
	octave 3
	note_type 2, 1, 7
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note_type 12, 1, 7
	note C_, 3
	octave 3
	note_type 12, 8, 7
	note C_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 8, 7
	note F_, 1
	rest 1
	note_type 12, 8, 7
	note F_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 8, 7
	octave 4
	note C_, 1
	octave 3
	note_type 1, 4, 7
	rest 4
	note_type 12, 8, 8
	vibrato 15, 1, 1
	note B_, 8
	volume_envelope 8, 7
	vibrato 0, 1, 1
	note B_, 4
	volume_envelope 8, 8
	note G_, 4
	note A#, 8
	note G#, 4
	note G_, 4
	volume_envelope 8, 7
	note G#, 4
	volume_envelope 6, 7
	note G#, 4
	volume_envelope 4, 7
	note G#, 4
	volume_envelope 3, 7
	note G#, 4
	volume_envelope 2, 7
	note G#, 4
	volume_envelope 1, 7
	note G#, 4
	note G#, 4
	sound_call .sub2
	duty_cycle 2
	octave 3
	vibrato 0, 1, 1
	note_type 2, 8, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 8, 7
	note C#, 3
	octave 3
	note_type 2, 4, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 4, 7
	note C#, 3
	octave 3
	note_type 2, 2, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 2, 7
	note C#, 3
	octave 3
	note_type 2, 1, 7
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 12, 1, 7
	note C#, 3
	octave 2
	note_type 2, 8, 7
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note_type 12, 8, 7
	note B_, 3
	octave 2
	note_type 2, 4, 7
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note_type 12, 4, 7
	note B_, 3
	note_type 2, 8, 7
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note_type 12, 8, 7
	note C_, 3
	octave 3
	note_type 2, 4, 7
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note_type 12, 4, 7
	note C_, 3
	note_type 12, 5, 8
	pitch_slide 1, 4, F_
	note F#, 2
	pitch_slide 1, 4, E_
	note F_, 2
	pitch_slide 1, 4, D#
	note E_, 2
	pitch_slide 1, 4, D_
	note D#, 2
	pitch_slide 1, 4, C#
	note D_, 2
	pitch_slide 1, 4, C_
	note C#, 2
	pitch_slide 2, 4, B_
	note C_, 2
	octave 3
	pitch_slide 2, 3, A#
	note B_, 2
	pitch_slide 2, 3, A_
	note A#, 2
	pitch_slide 2, 3, G#
	note A_, 2
	pitch_slide 1, 3, G_
	note G#, 2
	pitch_slide 2, 3, F#
	note G_, 2
	pitch_slide 2, 3, F_
	note F#, 2
	pitch_slide 2, 3, E_
	note F_, 2
	octave 2
	sound_call .sub3
	note_type 12, 15, 8
	octave 8
	sound_loop 0, .mainLoop

.sub1:
	duty_cycle 2
	volume_envelope 7, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 2
	note A#, 1
	note_type 4, 0, 8
	rest 1
	volume_envelope 7, 7
	note G_, 1
	rest 4
	note_type 12, 0, 8
	rest 1
	volume_envelope 7, 7
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note_type 4, 7, 7
	note G#, 1
	note G_, 7
	note_type 1, 0, 8
	rest 4
	note_type 12, 7, 7
	note G#, 1
	rest 2
	octave 3
	note F_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 7, 7
	note F_, 1
	sound_ret

.sub2:
	duty_cycle 2
	volume_envelope 8, 7
	note C_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 8, 7
	note F_, 1
	rest 1
	note_type 12, 8, 7
	note F_, 1
	note_type 4, 4, 7
	rest 1
	volume_envelope 8, 7
	octave 4
	note C_, 1
	octave 3
	note_type 1, 4, 7
	rest 4
	note_type 12, 8, 8
	vibrato 15, 1, 1
	note B_, 8
	volume_envelope 8, 7
	vibrato 0, 1, 1
	note B_, 4
	volume_envelope 8, 8
	note G_, 4
	note A#, 8
	note G#, 4
	note G_, 4
	sound_ret

.sub3:
	pitch_slide 2, 1, C_
	volume_envelope 7, 7
	note G#, 4
	sound_ret

Music_FortunaSF_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 1
	note_type 4, 15, 8
	octave 2
	sound_call .sub2
	note_type 12, 15, 8
	rest 2
	octave 4
	note_type 4, 5, 4
	sound_call .sub5
	octave 3
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 15, 8
	sound_call .sub1
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	octave 3
	vibrato 7, 1, 1
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note F_, 3
	rest 1
	note G_, 1
	note_type 1, 15, 8
	rest 4
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 8, 4
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note G_, 3
	rest 1
	octave 2
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note G_, 3
	rest 1
	octave 2
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note F_, 3
	rest 1
	octave 2
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 8, 4
	octave 3
	note F_, 3
	rest 1
	note D_, 1
	note_type 1, 15, 8
	rest 4
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 8, 4
	note A#, 1
	note_type 1, 15, 8
	rest 4
	note_type 4, 5, 4
	octave 4
	sound_call .sub4
	note_type 1, 15, 8
	rest 4
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	octave 2
	sound_call .sub3
	note_type 12, 15, 8
	rest 2
	octave 4
	note_type 4, 5, 4
	sound_call .sub4
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 4
	octave 2
	note_type 4, 15, 8
	rest 1
	duty_cycle 3
	vibrato 7, 1, 1
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note_type 12, 8, 4
	note C_, 10
.loop1:
	rest 1
	octave 2
	note_type 4, 15, 8
	rest 1
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 7
	note C_, 1
	octave 2
	note B_, 7
	octave 3
	rest 1
	note C_, 3
	note_type 12, 15, 8
	rest 2
	octave 4
	note_type 4, 5, 4
	sound_call .sub5
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 4
	octave 2
	note_type 4, 15, 8
	rest 1
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 7
	note C_, 1
	octave 2
	note B_, 7
	octave 3
	rest 1
	note C_, 3
	note_type 12, 15, 8
	rest 2
	octave 4
	note_type 4, 5, 4
	sound_call .sub5
	note_type 12, 15, 8
	rest 1
	note_type 1, 15, 8
	rest 4
	octave 2
	note_type 4, 15, 8
	rest 1
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	octave 2
	rest 1
	volume_envelope 4, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 7
	note C_, 1
	octave 2
	note B_, 7
	octave 3
	rest 1
	note C_, 3
	rest 6
	octave 4
	sound_call .sub5
	note_type 1, 4, 7
	rest 4
	note_type 4, 15, 8
	rest 4
	octave 2
	volume_envelope 4, 4
	note F_, 1
	octave 3
	rest 1
	note F_, 3
	octave 2
	rest 1
	note F_, 1
	octave 3
	rest 1
	note F_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note E_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note E_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 4
	note D#, 3
	octave 2
	rest 1
	note F_, 1
	note_type 1, 15, 8
	rest 4
	octave 3
	note_type 4, 4, 4
	note D_, 3
	rest 1
	note C#, 1
	note_type 1, 15, 8
	rest 4
	note_type 12, 15, 8
	rest 1
	octave 2
	note_type 4, 15, 8
	rest 1
	volume_envelope 4, 4
	note F_, 1
	rest 1
	note B_, 3
	rest 1
	note F_, 1
	rest 1
	note B_, 3
	rest 3
	note B_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 4, 7
	note B_, 1
	volume_envelope 4, 4
	note A#, 7
	rest 1
	octave 3
	note C_, 3
	note_type 4, 15, 8
	rest 6
	octave 4
	sound_call .sub5
	octave 3
	note_type 4, 15, 8
	rest 1
	note_type 12, 8, 4
	sound_loop 2, .loop1
	note_type 12, 15, 8
	octave 8
	rest 16
	rest 16
	sound_loop 0, .mainLoop

.sub1:
	rest 1
	duty_cycle 3
	octave 2
	vibrato 7, 1, 1
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	octave 4
	sound_ret

.sub2:
	rest 1
	duty_cycle 3
	vibrato 7, 1, 1
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 7
	note C_, 1
	octave 2
	note B_, 7
	octave 3
	rest 1
	note C_, 3
	sound_ret

.sub3:
	rest 1
	duty_cycle 3
	vibrato 7, 1, 1
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 4
	note D#, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note D_, 3
	rest 1
	note C_, 1
	rest 1
	note_type 12, 15, 8
	rest 1
	note_type 4, 15, 8
	rest 1
	octave 2
	volume_envelope 8, 4
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note C_, 3
	rest 3
	note C_, 3
	note_type 12, 15, 8
	rest 1
	note_type 4, 8, 7
	note C_, 1
	octave 2
	note B_, 7
	octave 3
	rest 1
	note C_, 3
	sound_ret

.sub4:
	note F_, 3
	rest 1
	note F_, 1
	sound_ret

.sub5:
	volume_envelope 4, 4
	note F_, 3
	rest 1
	note F_, 1
	sound_ret

Music_FortunaSF_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 2
	volume_envelope 1, 2
	sound_call .sub4
	rest 4
	octave 2
	sound_call .sub1
	note_type 1, 1, 2
	rest 4
	note_type 12, 1, 2
	octave 2
.loop1:
	sound_call .sub2
	octave 2
	rest 4
	sound_loop 5, .loop1
	sound_call .sub3
	note_type 1, 1, 2
	rest 4
	note_type 12, 1, 2
	octave 2
.loop2:
	note F_, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note D_, 1
	rest 1
	note_type 12, 1, 2
	note F_, 1
	rest 3
	note C_, 2
	note D#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	rest 1
	note_type 12, 1, 2
	octave 1
	note A#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note G#, 1
	rest 1
	note_type 12, 1, 0
	rest 4
	note_type 4, 1, 2
	note F_, 3
	rest 1
	octave 2
	note F_, 3
	rest 1
	octave 1
	note F_, 4
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 8
	note_type 1, 1, 0
	rest 4
	note_type 12, 1, 2
	note F_, 1
	rest 4
	octave 2
	sound_loop 3, .loop2
	octave 2
	sound_call .sub3
	note_type 1, 1, 2
	rest 4
	note_type 12, 1, 2
	octave 2
	sound_call .sub4
	octave 8
	note_type 12, 1, 2
	rest 4
	sound_loop 0, .mainLoop

.sub1:
	note F_, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note D_, 1
	rest 1
	note_type 12, 1, 2
	note F_, 1
	rest 3
	note C_, 2
	note D#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	rest 1
	note_type 12, 1, 2
	octave 1
	note A#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note G#, 1
	rest 1
	note_type 12, 1, 0
	rest 4
	note_type 4, 1, 2
	note F_, 3
	rest 1
	octave 2
	note F_, 3
	rest 1
	octave 1
	note F_, 4
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 3
	note_type 12, 1, 2
	rest 1
	note_type 4, 1, 2
	note F_, 3
	rest 1
	note F_, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note E_, 3
	rest 1
	note E_, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note D#, 3
	rest 1
	note D#, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note D_, 3
	rest 1
	note D_, 1
	sound_ret

.sub2:
	note F_, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note D_, 1
	rest 1
	note_type 12, 1, 2
	note F_, 1
	rest 3
	note C_, 2
	note D#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	rest 1
	note_type 12, 1, 2
	octave 1
	note A#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note G#, 1
	rest 1
	note_type 12, 1, 0
	rest 4
	note_type 4, 1, 2
	note F_, 3
	rest 1
	octave 2
	note F_, 3
	rest 1
	octave 1
	note F_, 4
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 8
	note_type 1, 1, 0
	rest 4
	note_type 12, 1, 2
	note F_, 1
	sound_ret

.sub3:
	note F_, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note D_, 1
	rest 1
	note_type 12, 1, 2
	note F_, 1
	rest 3
	note C_, 2
	note D#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	rest 1
	note_type 12, 1, 2
	octave 1
	note A#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note G#, 1
	rest 1
	note_type 12, 1, 0
	rest 4
	note_type 4, 1, 2
	note F_, 3
	rest 1
	octave 2
	note F_, 3
	rest 1
	octave 1
	note F_, 4
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 3
	note_type 12, 1, 2
	rest 1
	note_type 4, 1, 2
	note F_, 3
	rest 1
	note F_, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note E_, 3
	rest 1
	note E_, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note D#, 3
	rest 1
	note D#, 1
	note_type 1, 1, 2
	rest 4
	note_type 4, 1, 2
	note D_, 3
	rest 1
	note D_, 1
	sound_ret

.sub4:
	note F_, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note D_, 1
	rest 1
	note_type 12, 1, 2
	note F_, 1
	rest 3
	note C_, 2
	note D#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note C_, 1
	rest 1
	note_type 12, 1, 2
	octave 1
	note A#, 1
	note_type 4, 1, 0
	rest 1
	volume_envelope 1, 2
	note G#, 1
	rest 1
	note_type 12, 1, 0
	rest 4
	note_type 4, 1, 2
	note F_, 3
	rest 1
	octave 2
	note F_, 3
	rest 1
	octave 1
	note F_, 4
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 3
	note_type 12, 1, 0
	rest 1
	note_type 4, 1, 2
	note F_, 8
	note_type 1, 1, 0
	rest 4
	note_type 12, 1, 2
	note F_, 1
	sound_ret

Music_FortunaSF_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	octave 5
	toggle_noise
	toggle_noise 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_speed 8
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_speed 12
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_speed 8
	rest 2
	drum_note 7, 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_note 8, 1
	rest 1
	drum_note 9, 1
	drum_speed 12
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_speed 8
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	drum_speed 12
	drum_note 7, 1
	drum_speed 4
	rest 3
	drum_speed 12
	drum_note 7, 1
	drum_speed 4
	rest 1
	drum_note 7, 2
	drum_speed 6
	drum_note 4, 1
	drum_speed 4
	rest 4
	drum_speed 1
	rest 2
	drum_speed 8
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_speed 12
	drum_note 7, 1
	drum_speed 1
	rest 16
	rest 8
	drum_speed 12
	rest 3
.loop1:
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_speed 8
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_speed 12
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 2
	drum_speed 8
	drum_note 7, 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_note 8, 1
	drum_speed 12
	rest 1
	drum_speed 8
	drum_note 10, 1
	drum_speed 12
	sound_loop 3, .loop1
	octave 5
	drum_speed 12
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 1
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 3
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_speed 8
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	drum_speed 12
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_speed 4
	rest 1
	drum_note 7, 2
	drum_speed 6
	drum_note 4, 1
	drum_speed 4
	rest 4
	drum_speed 1
	rest 2
	drum_speed 8
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_note 10, 1
	rest 1
	drum_note 8, 1
	drum_speed 12
	drum_note 4, 1
	rest 2
	drum_note 4, 1
	drum_note 7, 1
	rest 1
	drum_note 4, 1
	rest 3
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	rest 1
	drum_speed 8
	drum_note 4, 1
	rest 1
	drum_note 7, 1
	drum_speed 12
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_speed 4
	rest 1
	drum_note 7, 2
	drum_note 4, 1
	rest 5
	drum_speed 8
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_speed 12
	rest 3
	octave 8
	drum_speed 1
	rest 12
	drum_speed 12
	sound_loop 0, .mainLoop
