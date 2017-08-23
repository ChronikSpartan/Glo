var move = 0;
move -= max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")),gamepad_button_check_pressed(0,gp_padl),0);
move += max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")),gamepad_button_check_pressed(0,gp_padr),0);


if(move != 0)
{
	
	// Check next move before commiting
	var nextMove = menuPos + move;
	// Wrap around menu
	if (nextMove < 0) nextMove = array_length_1d(menu) - 1;
	if (nextMove > array_length_1d(menu) - 1) nextMove = 0;
	
	// Move if level unlocked
	if(levelArray[nextMove] > 0)
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

x = room_width/2 - (menuPos * space); // This aligns the level text

