instance_destroy(oBoss1Disappear, true);
if (audio_is_playing(theSilence))
{
	audio_stop_sound(theSilence);
	audio_play_sound(wildDreams,0,1);
	audio_sound_gain(wildDreams, 1, 2000);
}
else 
{
	audio_play_sound(wildDreams,0,1);
	audio_sound_gain(wildDreams, 1, 2000);
}

if (audio_is_playing(rumours)) audio_stop_sound(rumours);
if (audio_is_playing(slapHook)) audio_stop_sound(slapHook);
if (audio_is_playing(noMemories)) audio_stop_sound(noMemories);
if (audio_is_playing(theSilence)) audio_stop_sound(theSilence);
if (audio_is_playing(theTrap)) audio_stop_sound(theTrap);