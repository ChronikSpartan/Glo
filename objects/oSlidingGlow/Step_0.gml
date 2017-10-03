hsp = dir * movementSpeed;

// Horizontal Collision
if(place_meeting(x+hsp,y,oCollider))
{
	while(!place_meeting(x+sign(hsp),y,oCollider))
	{
		x+= sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x,y,oSlidingCollider))
{
	x-= sign(hsp);
	
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x,y,oSlidingGlow))
{
	x-= sign(hsp);
	
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x,y,oVertSlidingCollider))
{
	x-= sign(hsp);
	
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x,y,oVertSlidingGlow))
{
	x-= sign(hsp);
	
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x+hsp,y,oColliderGlow))
{
	while(!place_meeting(x+sign(hsp),y,oColliderGlow))
	{
		x+= sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x+hsp,y,oBreakableBlock))
{
	while(!place_meeting(x+sign(hsp),y,oBreakableBlock))
	{
		x+= sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}

if(place_meeting(x+hsp,y,oDeathBlock))
{
	while(!place_meeting(x+sign(hsp),y,oDeathBlock))
	{
		x+= sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}

x += hsp;

if(instance_exists(oPlayer))
{
	if (place_meeting(x,y-1,oPlayer)) oPlayer.hsp_carry = hsp;
	if (place_meeting(x,y,oPlayer)) 
	{	
		if(hsp > 0)
		{		
			oPlayer.x = x + 47;
			with(oPlayer)
			{
				if(place_meeting(x+1, y, oCollider) || place_meeting(x+1, y, oColliderGlow) || place_meeting(x+1, y, oSlidingCollider)  || place_meeting(x+1, y, oVertSlidingCollider) || place_meeting(x+1, y, oSlidingGlow)  || place_meeting(x+1, y, oVertSlidingGlow))
				{
					instance_change(oPlayerFallExplode, true);
				}
			}
		}
		
		if(hsp < 0)
		{
			oPlayer.x = x - 16;
			with(oPlayer)
			{
				if(place_meeting(x-1, y, oCollider) || place_meeting(x-1, y, oColliderGlow) || place_meeting(x-1, y, oSlidingCollider) || place_meeting(x-1, y, oVertSlidingCollider) || place_meeting(x-1, y, oSlidingGlow)  || place_meeting(x-1, y, oVertSlidingGlow))
				{
					instance_change(oPlayerFallExplode, true);
				}
			}
		}
	}
}