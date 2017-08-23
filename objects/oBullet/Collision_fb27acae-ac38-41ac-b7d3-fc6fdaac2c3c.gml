instance_destroy();
audio_play_sound(bulletImpact,0,0);

instance_create_layer(x + 0, y + 0, "Instances", oExplode);

with(other) var l2D914E1A_0 = setToBreak == "false";
if(l2D914E1A_0)
{
	with(other) {
	setToBreak = "true";
	
	}

	with(other) {
	alarm_set(0, 30);
	
	}
}