switch(menuPos)
{
	case 0:
	{
		room_restart();
		break;
	}
	case 1:
	{
		room_goto(startScreen);
		break;
	}
	default: break;
}