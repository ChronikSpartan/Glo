switch(menuPos)
{
	case 0:
	{
		room_goto(levelSelectScreen);
		break;
	}
	case 1:
	{
		game_end();
		break;
	}
	case 2:
	{
		room_goto(memoriesScreen);
		break;
	}
	default: break;
}