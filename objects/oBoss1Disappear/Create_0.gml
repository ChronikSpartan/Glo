alarm_set(0, 600);

if (audio_is_playing(bossDead))
{
	audio_stop_sound(bossDead);
}