glowSize = 1;
stopDots = 0;
dotSequence = 1;
alpha1 = 0;
alpha2 = 0;
alarm_set(1,900);
alarm_set(2,900);
alarm_set(3,90);
alarm_set(4,250);
global.speedRunCount = 0;
global.finaleDotDirection = 180;

audio_play_sound(bossFinish, 0, 0);

if (audio_is_playing(bossDead))
{
	audio_stop_sound(bossDead);
}

if (!audio_is_playing(bossDisappear))
{
	audio_play_sound(bossDisappear, 0, 0);
}

if (audio_is_playing(bossDead))
{
	audio_stop_sound(bossDead);
}

instance_destroy(oBoss1Disappear, true);
if (audio_is_playing(wildDreams))
{
	audio_stop_sound(wildDreams);
	audio_play_sound(theTrap,1,1);
	audio_sound_gain(theTrap, 1, 60);
}
else 
{
	audio_play_sound(theTrap,1,1);
	audio_sound_gain(theTrap, 1, 60);
}

if (audio_is_playing(rumours)) audio_stop_sound(rumours);
if (audio_is_playing(slapHook)) audio_stop_sound(slapHook);
if (audio_is_playing(noMemories)) audio_stop_sound(noMemories);
if (audio_is_playing(wildDreams)) audio_stop_sound(wildDreams);
if (audio_is_playing(theSilence)) audio_stop_sound(theSilence);