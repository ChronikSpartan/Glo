global.kills++;
numberOfBits = random_range(4,8);

repeat(numberOfBits)
{
<<<<<<< HEAD
	instance_create_layer(x + 0, y + 0, "EnemyLayer", oFloaterBits);
=======
	instance_create_layer(x + 0, y + 0, "Instances", oFloaterBits);
>>>>>>> origin/master
}
instance_create_layer(x + 0, y + 0, "Instances", oExplode);
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(creeperDeath, pitch);
audio_play_sound(creeperDeath,0,0);