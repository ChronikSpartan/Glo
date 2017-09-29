
var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),gamepad_button_check_pressed(0,gp_padu),0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),gamepad_button_check_pressed(0,gp_padd),0);


if(move != 0)
{
	
	// Check next move before commiting
	var nextMove = menuPos + move;
	// Wrap around menu
	if (nextMove < 0) nextMove = array_length_1d(menu) - 1;
	if (nextMove > array_length_1d(menu) - 1) nextMove = 0;
	
	// Move if level unlocked
	if(memory[nextMove] > 0)
	{
		audio_play_sound(menuMove,0,0);
		menuPos = nextMove;
	}
}

var press;
press = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space),gamepad_button_check_released(0,gp_face1), 0);

if(press == 1) 
{
	audio_play_sound(menuSelect,0,0);
	scrLevelSelect();
}

//x = room_width/2 - (menuPos * space); // This aligns the level text

//var move = 0;

//move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),gamepad_button_check_pressed(0,gp_padu),0);
//move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),gamepad_button_check_pressed(0,gp_padd),0);

//if(move != 0)
//{
//	audio_play_sound(menuMove,0,0);
//	menuPos += move;
//	// Wrap around menu
//	if (menuPos < 0) menuPos = array_length_1d(menu) - 1;
//	if (menuPos > array_length_1d(menu) - 1) menuPos = 0;
//}

//var press;
//press = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_shift), keyboard_check_released(vk_space), gamepad_button_check_released(0,gp_face1), 0);

//if(press == 1) 
//{
//	audio_play_sound(menuSelect,0,0);
//	scrMenu();
//}

with(oSelector)
{
	x = oMenu.x + 64;
	y = oMenu.y + oMenu.menuPos * oMenu.space;
}
