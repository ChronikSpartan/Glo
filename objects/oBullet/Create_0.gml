//direction = oAimPoint.image_angle;
//image_angle = direction;
global.shots++;

speed = 8;

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

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bullet, pitch);

audio_play_sound(bullet,0,0);