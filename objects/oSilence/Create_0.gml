if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
	if (audio_is_playing(theSilence))
	{
		audio_stop_sound(theSilence);
		audio_play_sound(theSilence,0,1);
		audio_sound_gain(theSilence, 1, 2000);
	}
	else 
	{
		audio_play_sound(theSilence,0,1);
		audio_sound_gain(theSilence, 1, 2000);
	}
}
else if (!audio_is_playing(theSilence))
{
	audio_play_sound(theSilence, 0, 1);
}