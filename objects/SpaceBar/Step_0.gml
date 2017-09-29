if(keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0) || keyboard_check(ord("D")) || keyboard_check(vk_right)  || (gamepad_axis_value(0, gp_axislh) > 0))
{
	show = 0;
}

if(show == 0) glowSize -= 0.02;

if(glowSize == 0) instance_destroy();