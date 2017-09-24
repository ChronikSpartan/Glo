if(instance_exists(oPlayer))
{
	instance_create_layer(x, y, "EnemyLayer", oDarkBullet);
}
alarm_set(3,bulletRate);