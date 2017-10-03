steam_set_achievement("GLO_BALL");
global.shots++;

colour = 0;
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(pinballShoot, pitch);
audio_play_sound(pinballShoot,0,0);

//image_angle = direction;

speed = 10;

if(gamepad_is_connected(0))
{
	var h_point = gamepad_axis_value(0, gp_axisrh);
	var v_point = gamepad_axis_value(0, gp_axisrv);
	if ((h_point !=0) || (v_point!=0))
	{
		image_angle = point_direction(0, 0, h_point, v_point);
	}
}
else
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
direction = image_angle;

alarm_set(0, 300);