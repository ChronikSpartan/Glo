if(global.speedRunCount)
{
	global.seconds += 1/room_speed;
	
	if((global.seconds < 60) && (global.seconds >59.9))
	{
		global.seconds = 0;
		global.minutes += 1;
	}
	
	if((global.minutes < 60) && (global.minutes >59.9))
	{
		global.minutes = 0;
		global.hours += 1;
	}
}