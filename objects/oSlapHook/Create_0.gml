if (audio_is_playing(rumours))
{
	audio_sound_gain(rumours, 0, 1000);
}

if (!audio_is_playing(slapHook))
{
	audio_play_sound(slapHook, 0, 1);
}