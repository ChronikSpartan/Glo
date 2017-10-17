// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

if(place_meeting(x,y,oStickyBullet))
{
	image_xscale -= 0.005;
	image_yscale -= 0.005;
}
else
{
	image_xscale += 0.01;
	image_yscale += 0.01;
}


//Enemy Collision
if(place_meeting(x,y,oPlayer))
{
	instance_change(oPlayerExplode, true);
}

if(image_xscale < 0.1)
{
	image_xscale = 1;
	image_yscale = 1;
	instance_destroy(oStickyBullet);
	if (audio_is_playing(slapHook))
	{
		audio_sound_gain(slapHook, 0, 7000);
	}
	var pitch = random_range(0.5, 1.5);
	audio_sound_pitch(bossFinish2, pitch);
	audio_play_sound(bossFinish2,0,0);
	instance_change(oBoss4Death, true);
}