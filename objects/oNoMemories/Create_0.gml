if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
	if (audio_is_playing(noMemories))
	{
		audio_stop_sound(noMemories);
		audio_play_sound(noMemories,0,1);
		audio_sound_gain(noMemories, 1, 2000);
	}
	else 
	{
		audio_play_sound(noMemories,0,1);
		audio_sound_gain(noMemories, 1, 2000);
	}
}
else if (!audio_is_playing(noMemories))
{
	audio_play_sound(noMemories, 0, 1);
}