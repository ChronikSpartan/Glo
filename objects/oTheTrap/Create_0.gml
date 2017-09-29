if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
	if (audio_is_playing(theTrap))
	{
		audio_stop_sound(theTrap);
		audio_play_sound(theTrap,0,1);
		audio_sound_gain(theTrap, 1, 2000);
	}
	else 
	{
		audio_play_sound(theTrap,0,1);
		audio_sound_gain(theTrap, 1, 2000);
	}
}
else if (!audio_is_playing(theTrap))
{
	audio_play_sound(theTrap, 0, 1);
}