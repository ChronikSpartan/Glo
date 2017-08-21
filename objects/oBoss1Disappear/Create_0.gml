alarm_set(0, 300);

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