var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),0);

if(move != 0)
{
	menuPos += move;
	// Wrap around menu
	if (menuPos < 0) menuPos = array_length_1d(menu) - 1;
	if (menuPos > array_length_1d(menu) - 1) menuPos = 0;
}

var press;
press = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), 0);

if(press == 1) scrMenu();

with(oSelector)
{
	x = oMenu.x + 64;
	y = oMenu.y + oMenu.menuPos * oMenu.space;
}