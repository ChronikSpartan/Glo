instance_destroy(oShake);
var new_location = irandom(3);

while (location == new_location)
{
	new_location = irandom(3);
}

location = new_location;

switch (location)
{
	case 0:
		x = 150;
		y = 150;
		break;
	case 1:
		x = 1060;
		y = 150;
		break;
	case 2:
		x = 1060;
		y = 555;
		break;
	case 3:
		x = 150;
		y = 555;
		break;
}
alarm_set(4,teleportSpeed);