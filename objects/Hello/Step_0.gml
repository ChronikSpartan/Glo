if(place_meeting(x+250,y+250,oPlayer) || place_meeting(x-250,y-250,oPlayer) ||
place_meeting(x+250,y-250,oPlayer) || place_meeting(x-250,y+250,oPlayer) ||
place_meeting(x+250,y,oPlayer) || place_meeting(x-250,y,oPlayer)||
place_meeting(x,y+250,oPlayer) || place_meeting(x,y-250,oPlayer) || place_meeting(x,y,oPlayer)) 
{
	seeText = 1;
}

if(seeText && alpha < 1) alpha += 0.1;