draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(wallFont);
draw_set_color(c_black);

var m;
for(m = 0; m < array_length_1d(menu); m += 1)
{
	draw_text(x + space, y + (m * space), string(menu[m]));
}