switch(menuPos)
{
	case 0:
	{
		room_goto(levelSelectScreen);
		break;
	}
	case 1:
	{
		room_goto(world1Level1);
		global.speedRunShow = 1;
		global.speedRunCount = 1;
		global.seconds = 0;
		global.minutes = 0;
		global.hours = 0;
		break;
	}
	case 2:
	{
		room_goto(memoriesScreen);
		break;
	}
	case 3:
	{
		room_goto(controlsScreen);
		break;
	}
	case 4:
	{
		game_end();
		break;
	}
	default: break;
}