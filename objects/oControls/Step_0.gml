var goBack;
goBack = max(keyboard_check_released(vk_escape), gamepad_button_check_released(0,gp_select), 0);

if(goBack = 1) room_goto(startScreen);
