instance_create_layer(x + 0, y + 0, "Instances", oExplode);
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(sliderDeath, pitch);
audio_play_sound(sliderDeath,0,0);