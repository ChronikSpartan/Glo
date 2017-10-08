instance_create_layer(0,0,"Instances",oShake);
alarm_set(0, 5);

global.deathsInLevel++;
global.deathsOverall++;

explodeSize = 60;

explodeAlpha = 1;

numberOfBits = random_range(10,15);
<<<<<<< HEAD
scrRecordDeaths();
=======
>>>>>>> origin/master


repeat(numberOfBits)
{
	with(oPlayer)
	{
		instance_create_layer(x + 0, y + 0, "EnemyLayer", oPlayerBits);
	}
}

instance_destroy(oPlayer);