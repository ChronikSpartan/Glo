if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
	if (audio_is_playing(wildDreams))
	{
		audio_stop_sound(wildDreams);
		audio_play_sound(wildDreams,0,1);
		audio_sound_gain(wildDreams, 1, 2000);
	}
	else 
	{
		audio_play_sound(wildDreams,0,1);
		audio_sound_gain(wildDreams, 1, 2000);
	}
}
else if (!audio_is_playing(wildDreams))
{
	audio_play_sound(wildDreams, 0, 1);
}