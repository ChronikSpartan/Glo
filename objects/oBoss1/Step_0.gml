// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

if ((hitPoints == 1) && (currentPathSpeed > 0))
{
	currentPathSpeed = 24;
	if((pathInPlay == 2) && path_position == 1)
	{
		currentPathSpeed = 0;
		alarm_set(2, 60);
		path_start(pBoss3, currentPathSpeed, path_action_restart, true);
		pathInPlay = 3;
	}
}

if((pathInPlay == 1) && (path_position == 1) && !waiting) 
{
	waiting = true;	
	alarm_set(0, 60);
}
else if((pathInPlay == 2) && (path_position == 1)) 
{
	currentPathSpeed = 6;
	path_start(pBoss1, currentPathSpeed, path_action_stop, true);
	pathInPlay = 1;
}

// Boss cooldown
if(bossGrace > 0) bossGrace -= 1;

//Enemy Collision
if(place_meeting(x,y,oPlayer))
{
	//Are we above enemy? (assuming CoG of both enemy and player is the same)
	if(oPlayer.y < y-8)
	{
		with (oPlayer) vsp = -jumpSpeed;
		if(bossGrace == 0)
		{
			var pitch = random_range(0.5, 1.5);
			audio_sound_pitch(bossHurt, pitch);
			audio_play_sound(bossHurt,0,0);
			alarm_set(1, 30);
			path_speed = 0;
			sprite_index = sBoss1Death;
			setGlow = true;
			hitPoints -= 1;
			bossGrace = 90;
		}
	}
	else
	{
		room_restart();
	}
}

if(hitPoints == 0)
{
	path_end();
	var pitch = random_range(0.5, 1.5);
	audio_sound_pitch(bossDead, pitch);
	audio_play_sound(bossDead,0,0);
	instance_change(oBoss1Death, true);
}