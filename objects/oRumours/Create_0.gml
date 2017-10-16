if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
}
if (audio_is_playing(noMemories))
{
	audio_sound_gain(noMemories, 0, 100);

}
if (audio_is_playing(wildDreams))
{
	audio_sound_gain(wildDreams, 0, 100);

}
if (audio_is_playing(theSilence))
{
	audio_sound_gain(theSilence, 0, 100);

}
if (audio_is_playing(theTrap))
{
	audio_sound_gain(theTrap, 0, 100);

}

if(audio_is_playing(slapHook) || audio_is_playing(noMemories) || audio_is_playing(wildDreams) || audio_is_playing(theSilence) || audio_is_playing(theTrap))
{
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

alarm_set(0, 100);