if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 0, 100);
}
if (audio_is_playing(noMemories))
{
	audio_sound_gain(noMemories, 0, 100);

}
if (audio_is_playing(rumours))
{
	audio_sound_gain(rumours, 0, 100);

}
if (audio_is_playing(theSilence))
{
	audio_sound_gain(theSilence, 0, 100);

}
if (audio_is_playing(theTrap))
{
	audio_sound_gain(theTrap, 0, 100);

}

if(audio_is_playing(slapHook) || audio_is_playing(noMemories) || audio_is_playing(rumours) || audio_is_playing(theSilence) || audio_is_playing(theTrap))
{
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

alarm_set(0, 100);