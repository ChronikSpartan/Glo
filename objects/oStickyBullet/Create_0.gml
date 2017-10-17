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
	direction = point_direction(0, 0, global.h_aim, global.v_aim);
}
else
{
	direction = point_direction(x, y, mouse_x, mouse_y);
}

alarm_set(0, 240);

// Boss impact
bossImpact = 0;

instance_impact_id = 0;