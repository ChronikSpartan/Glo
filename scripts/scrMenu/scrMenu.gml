switch(menuPos)
{
	case 0:
	{
		room_goto(levelSelectScreen);
		break;
	}
	case 1:
	{
		room_goto_next()
		break;
	}
	case 2:
	{
		game_end();
		break;
	}
	default: break;
}