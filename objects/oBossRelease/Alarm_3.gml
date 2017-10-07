
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bomb, pitch);
audio_play_sound(bomb,0,0);

instance_create_layer(x + 0, y + 0, "Instances", oReleaseDot2);
switch dotSequence
{
	case 1: global.finaleDotDirection = 158; break;
	case 2: global.finaleDotDirection = 135; break;
	case 3: global.finaleDotDirection = 113; break;
	case 4: global.finaleDotDirection = 90; break;
	case 5: global.finaleDotDirection = 68; break;
	case 6: global.finaleDotDirection = 45; break;
	case 7: global.finaleDotDirection = 22; break;
	case 8: global.finaleDotDirection = 0; break;
	case 9: global.finaleDotDirection = 22; break;
	case 10: global.finaleDotDirection = 45; break;
	case 11: global.finaleDotDirection = 68; break;
	case 12: global.finaleDotDirection = 90; break;
	case 13: global.finaleDotDirection = 113; break;
	case 14: global.finaleDotDirection = 135; break;
	case 15: global.finaleDotDirection = 158; break;
	case 16: global.finaleDotDirection = 180; break;
	
}

if(dotSequence < 16)
{
	dotSequence++;
	alarm_set(3,30);
} else alarm_set(0,90);