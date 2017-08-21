//image_angle = point_direction(x, y, mouse_x, mouse_y);
//image_angle = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
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

if(object_exists(oPlayer))
{
	with(oPlayer)
	{
		oAimPoint.x = x;
		oAimPoint.y = y;
	}
}