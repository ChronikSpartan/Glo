
var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),gamepad_button_check_pressed(0,gp_padu),0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),gamepad_button_check_pressed(0,gp_padd),0);

var goBack;
goBack = max(keyboard_check_released(vk_escape), gamepad_button_check_released(0,gp_select), 0);

if(goBack = 1) room_goto(startScreen);

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

y = (room_height/1.5) + 18 + (menuPos * space);