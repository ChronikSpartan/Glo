vsp = dir * movementSpeed;

// Vertical Collision
if(place_meeting(x,y+vsp,oCollider))
{
	while(!place_meeting(x,y+sign(vsp),oCollider))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	dir *= -1;
}

if(place_meeting(x,y+vsp,oColliderGlow))
{
	while(!place_meeting(x,y+sign(vsp),oColliderGlow))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	dir *= -1;
}

if(place_meeting(x,y+vsp,oBreakableBlock))
{
	while(!place_meeting(x,y+sign(vsp),oBreakableBlock))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	dir *= -1;
}

if(place_meeting(x,y+vsp,oDeathBlock))
{
	while(!place_meeting(x,y+sign(vsp),oDeathBlock))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	dir *= -1;
}

y += vsp;

if(instance_exists(oPlayer))
{
	if (place_meeting(x,y-2,oPlayer) && (oPlayer.y < y + 2)) 
	{		
		
		oPlayer.y = y - 17;
		oPlayer.onLift = 1;
		oPlayer.onGround = true;
		if (vsp < 0)
		{
			with(oPlayer)
			{
				if(place_meeting(x, y-1, oCollider) || place_meeting(x, y-1, oColliderGlow) || place_meeting(x, y-1, oSlidingCollider) || place_meeting(x, y-1, oVertSlidingCollider) || place_meeting(x-1, y, oSlidingGlow)  || place_meeting(x-1, y, oVertSlidingGlow))
				{
					instance_change(oPlayerFallExplode, true);
				}
			}
		}
	}
	else oPlayer.onLift = 0;
	
	if (place_meeting(x,y+1,oPlayer) && (oPlayer.y > y + 2) && (vsp > 0)) 
	{		
		with(oPlayer)
		{
			if(place_meeting(x, y+1, oCollider) || place_meeting(x, y+1, oColliderGlow) || place_meeting(x, y+1, oSlidingCollider) || place_meeting(x, y+1, oVertSlidingCollider) || place_meeting(x+1, y, oSlidingGlow)  || place_meeting(x+1, y, oVertSlidingGlow))
			{
				instance_change(oPlayerFallExplode, true);
			}
		}
	}
}