instance_create_layer(x + 0, y + 0, "Instances", oExplode);
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(creeperDeath, pitch);
audio_play_sound(creeperDeath,0,0);