instance_destroy(oLockedCollider);
audio_play_sound(getKey,0,0);
instance_create_layer(x,y,"Instances",oExplode);

if (instance_exists(oLockedDoor))
{
	with(oLockedDoor) instance_change(oDoor, true);
}

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(getKey, pitch);
audio_play_sound(getKey, 0, 0);
instance_destroy();