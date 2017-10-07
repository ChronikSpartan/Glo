// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

if (hitPoints == 1) teleportSpeed = 60;

// Boss cooldown
if(bossGrace > 0) bossGrace -= 1;

//Enemy Collision
if(place_meeting(x,y,oPlayer))
{
	//Are we above enemy? (assuming CoG of both enemy and player is the same)
	if(oPlayer.y < y-8)
	{
		with (oPlayer) 
		{
			vsp = -jumpSpeed;
		}
		
		if(bossGrace == 0)
		{
			instance_create_layer(0,0,"Instances",oShake);
			var pitch = random_range(0.5, 1.5);
			audio_sound_pitch(bossHurt, pitch);
			audio_play_sound(bossHurt,0,0);
			alarm_set(1, 30);
			path_speed = 0;
			sprite_index = sBoss1Death;
			setGlow = true;
			hitPoints -= 1;
			bossGrace = 90;
			alarm_set(6,60);
		}
	}
	else
	{
		instance_change(oPlayerExplode, true);
	}
}

if(hitPoints == 0)
{
	path_end();
	var pitch = random_range(0.5, 1.5);
	if (audio_is_playing(slapHook))
	{
		audio_sound_gain(slapHook, 0, 7000);
	}
	audio_sound_pitch(bossDead, pitch);
	audio_play_sound(bossDead,0,1);
	instance_change(oBoss2Death, true);
}