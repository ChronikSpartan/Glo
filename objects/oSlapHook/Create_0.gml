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
<<<<<<< HEAD

if (audio_is_playing(slapHook))
{
	audio_sound_gain(slapHook, 1, 2000);
}
else 
{
	audio_play_sound(slapHook,0,1);
	audio_sound_gain(slapHook, 1, 2000);
=======
if (!audio_is_playing(slapHook))
{
	audio_play_sound(slapHook, 0, 1);
>>>>>>> origin/master
}

alarm_set(0, 100);