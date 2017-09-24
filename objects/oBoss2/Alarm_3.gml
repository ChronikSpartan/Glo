instance_destroy(oShake);
if(instance_exists(oPlayer))
{
	x = oPlayer.previousX;
	y = oPlayer.previousY;
}

alarm_set(5,teleportSpeed);