//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//draw_set_font(wallFont);
//draw_set_color(c_black);

//var m;
//for(m = 0; m < array_length_1d(menu); m += 1)
//{
//	draw_text(x + (m * space), y + space, string(menu[m]));
//}

draw_set_color(c_black);
draw_rectangle(0,0, room_width, room_height, 0);
draw_set_halign(fa_center);
draw_set_font(wallFont);
draw_set_color(c_white);
var m;
for(m = 0; m < array_length_1d(menu); m += 1)
{
	draw_text(x  + (m * space), (room_height/1.5), string(menu[m]));
}
	
selectorX = (room_width/2);
selectorY = (room_height/1.5) - space/2;
draw_sprite(sGlogo, 0, room_width/2, room_height/3);
draw_sprite_ext(sGradient, 0, selectorX + random_range(-1, 1), selectorY + random_range(-1, 1), 0.25, 0.25, 0, c_white, 1);	
draw_sprite_ext(sPlayer, 0, selectorX, selectorY, 0.25, 0.25, 0, c_white, 1);	
draw_text(150, 10, "Esc/Select: Exit");
draw_set_colour(c_black);