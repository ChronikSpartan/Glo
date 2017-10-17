instance_create_layer(0,0,"Instances",oShake);
alarm_set(0, 20);

global.deathsInLevel++;
global.deathsOverall++;

explodeSize = 60;

explodeAlpha = 1;

numberOfBits = random_range(10,15);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> origin/master
>>>>>>> origin/master
scrRecordDeaths();

repeat(numberOfBits)
{
	with(oPlayer)
	{
		instance_create_layer(x + 0, y + 0, "EnemyLayer", oPlayerBits);
	}
}