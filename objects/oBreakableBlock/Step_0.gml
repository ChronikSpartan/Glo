if (setToBreak)
{
	directionWobbleX = irandom_range(0,1);

	if (directionWobbleX == 1) x++;
	else x--;
	if (!audio_is_playing(breakableShake))
	{
		var pitch = random_range(0.5, 1.5);
		audio_sound_pitch(breakableShake, pitch);
		audio_play_sound(breakableShake, 0, 0);
	}
}