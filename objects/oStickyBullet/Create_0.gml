steam_set_achievement("GLO_STICK");
global.shots++;

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(stickyShoot, pitch);
audio_play_sound(stickyShoot,0,0);
//direction = oAimPoint.image_angle;
//image_angle = direction;

speed = 8;

if(gamepad_is_connected(0))
{
	var h_point = gamepad_axis_value(0, gp_axisrh);
	var v_point = gamepad_axis_value(0, gp_axisrv);
	if ((h_point !=0) || (v_point!=0))
	{
<<<<<<< HEAD
		direction = point_direction(0, 0, h_point, v_point);
=======
		image_angle = point_direction(0, 0, h_point, v_point);
>>>>>>> origin/master
	}
}
else
{
<<<<<<< HEAD
	direction = point_direction(x, y, mouse_x, mouse_y);
}
=======
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
direction = image_angle;
>>>>>>> origin/master

alarm_set(0, 240);

// Boss impact
bossImpact = 0;

instance_impact_id = 0;