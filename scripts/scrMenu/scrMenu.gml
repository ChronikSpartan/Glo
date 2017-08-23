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
	default: break;
}