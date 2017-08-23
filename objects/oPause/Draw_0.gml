if(pause)
{
	viewPosX = camera_get_view_x(view_camera[0]);
	viewPosY = camera_get_view_y(view_camera[0]);
	draw_set_color(c_black);
	draw_rectangle(viewPosX,viewPosY,room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(wallFont);
	draw_set_color(c_white);
	var m;
	for(m = 0; m < array_length_1d(menu); m += 1)
	{
		draw_text(viewWidth/2 + viewPosX, (viewHeight/2) + (m * space) + viewPosY, string(menu[m]));
	}
	
	selectorX = (viewWidth/2) - 128 + viewPosX;
	selectorY = (viewHeight/2) + 18 + (menuPos * space) + viewPosY;
	draw_sprite_ext(sGradient, 0, selectorX + random_range(-1, 1), selectorY + random_range(-1, 1), 0.25, 0.25, 0, c_white, 1);	
	draw_sprite_ext(sPlayer, 0, selectorX, selectorY, 0.25, 0.25, 0, c_white, 1);	
	draw_set_colour(c_black);
}