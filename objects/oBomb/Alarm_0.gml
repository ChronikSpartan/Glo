instance_destroy();

instance_create_layer(x + 0, y + 0, "Instances", oBombExplode);

numberOfDots = random_range(10,20);

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bombExplode, pitch);
audio_play_sound(bombExplode,0,0);

repeat(numberOfDots)
{
	instance_create_layer(x + 0, y + 0, "Instances", oBombDot);
}