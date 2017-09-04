if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
	if (audio_is_playing(rumours))
	{
		audio_stop_sound(rumours);
		audio_play_sound(rumours,0,1);
		audio_sound_gain(rumours, 1, 2000);
	}
	else 
	{
		audio_play_sound(rumours,0,1);
		audio_sound_gain(rumours, 1, 2000);
	}
}
else if (!audio_is_playing(rumours))
{
	audio_play_sound(rumours, 0, 1);
}