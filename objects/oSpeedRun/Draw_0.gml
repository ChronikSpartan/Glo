draw_set_color(c_aqua);
draw_set_font(wallFont);
draw_set_halign(fa_left);

// Draw Speed Run Timer
if(global.speedRunShow)
{
	if(global.seconds < 10 && global.minutes < 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":0" + string(global.minutes) + ":0" + string(global.seconds));
	}
	else
	if(global.seconds >= 10 && global.minutes < 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":0" + string(global.minutes) + ":" + string(global.seconds));
	}
	else
	if(global.seconds < 10 && global.minutes >= 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":" + string(global.minutes) + ":0" + string(global.seconds));
	}
	else
	if(global.seconds >= 10 && global.minutes >= 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":" + string(global.minutes) + ":" + string(global.seconds));
	}
}

draw_set_halign(fa_center);