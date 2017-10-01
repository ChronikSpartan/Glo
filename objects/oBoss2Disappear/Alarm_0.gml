instance_destroy(oBoss1Disappear, true);
if (audio_is_playing(noMemories))
{
	audio_stop_sound(noMemories);
	audio_play_sound(theSilence,0,1);
	audio_sound_gain(theSilence, 1, 2000);
}
else 
{
	audio_play_sound(theSilence,0,1);
	audio_sound_gain(theSilence, 1, 2000);
}

if (audio_is_playing(rumours)) audio_stop_sound(rumours);
if (audio_is_playing(slapHook)) audio_stop_sound(slapHook);
if (audio_is_playing(noMemories)) audio_stop_sound(noMemories);
if (audio_is_playing(wildDreams)) audio_stop_sound(wildDreams);
if (audio_is_playing(theTrap)) audio_stop_sound(theTrap);