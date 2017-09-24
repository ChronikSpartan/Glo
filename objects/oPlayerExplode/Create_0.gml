instance_create_layer(0,0,"Instances",oShake);
alarm_set(0, 5);
instance_destroy(oPlayer);

explodeSize = 60;

explodeAlpha = 1;

numberOfBits = random_range(10,20);

repeat(numberOfBits)
{
	instance_create_layer(x + 0, y + 0, "Instances", oPlayerBits);
}