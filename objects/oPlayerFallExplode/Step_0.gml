/// @description Execute Code
explodeSize = explodeSize + 5;
explodeAlpha = explodeAlpha - 0.2;
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(playerDeath, pitch);
audio_play_sound(playerDeath,0,0);