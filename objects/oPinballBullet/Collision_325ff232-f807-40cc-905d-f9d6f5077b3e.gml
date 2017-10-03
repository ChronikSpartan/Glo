/// @description Execute Code
move_bounce_solid(true);

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(pinballBounce, pitch);
audio_play_sound(pinballBounce,0,0);

colour = (random_range(0, 6));

// correct position
other.x += sign(other.hsp);