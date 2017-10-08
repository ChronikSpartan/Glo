numberOfDots = random_range(20,30);

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bomb, pitch);
audio_play_sound(bomb,0,0);

repeat(numberOfDots)
{
	instance_create_layer(x + 0, y + 0, "Instances", oReleaseDot);
}
if(!stopDots) alarm_set(0,90);