<<<<<<< HEAD
=======
numberOfBits = random_range(4,8);

repeat(numberOfBits)
{
	instance_create_layer(x + 0, y + 0, "Instances", oBreakableBits);
}

if (audio_is_playing(breakableShake)) audio_stop_sound(breakableShake);

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(breakableExplode, pitch);
audio_play_sound(breakableExplode, 0, 0);
	
>>>>>>> origin/master
instance_destroy();