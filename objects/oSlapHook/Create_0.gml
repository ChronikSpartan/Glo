if (audio_is_playing(rumours))
{
	audio_sound_gain(rumours, 0, 1000);
}
if (audio_is_playing(noMemories))
{
	audio_sound_gain(noMemories, 0, 1000);
}
if (audio_is_playing(wildDreams))
{
	audio_sound_gain(wildDreams, 0, 1000);
}
if (audio_is_playing(theSilence))
{
	audio_sound_gain(theSilence, 0, 1000);
}
if (audio_is_playing(theTrap))
{
	audio_sound_gain(theTrap, 0, 1000);
}
if (!audio_is_playing(slapHook))
{
	audio_play_sound(slapHook, 0, 1);
}

alarm_set(0, 100);