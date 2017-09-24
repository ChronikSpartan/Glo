key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_jump_held = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
key_jump_released = keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1);
key_left = keyboard_check(ord("A"))|| (gamepad_axis_value(0, gp_axislh) < 0);
key_right = keyboard_check(ord("D")) || (gamepad_axis_value(0, gp_axislh) > 0);
right_mb = mouse_check_button(mb_right) || gamepad_button_check(0, gp_shoulderlb);
left_mb = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb);

//instance_create_layer(x,y, "Instances", oTrail);

// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var slidingColliderBelow = instance_place(x, y + 1, oSlidingCollider);
var slidingColliderRight = instance_place(x + 1, y, oSlidingCollider);
var slidingColliderLeft = instance_place(x - 1, y, oSlidingCollider);
var vertSlidingColliderBelow = instance_place(x, y + 1, oVertSlidingCollider);
var vertSlidingColliderRight = instance_place(x + 1, y, oVertSlidingCollider);
var vertSlidingColliderLeft = instance_place(x - 1, y, oVertSlidingCollider);
var colliderGlowBelow = instance_place(x, y + 1, oColliderGlow);
var colliderGlowRight = instance_place(x + 1, y, oColliderGlow);
var colliderGlowLeft = instance_place(x - 1, y, oColliderGlow);
var slidingGlowBelow = instance_place(x, y + 1, oSlidingGlow);
var slidingGlowRight = instance_place(x + 1, y, oSlidingGlow);
var slidingGlowLeft = instance_place(x - 1, y, oSlidingGlow);
var vertSlidingGlowBelow = instance_place(x, y + 1, oVertSlidingGlow);
var vertSlidingGlowRight = instance_place(x + 1, y, oVertSlidingGlow);
var vertSlidingGlowLeft = instance_place(x - 1, y, oVertSlidingGlow);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

var nearColliderRight = max(instance_place(x + 2, y, oCollider), instance_place(x + 3, y, oCollider), instance_place(x + 4, y, oCollider),0);
var nearColliderLeft = max(instance_place(x - 2, y, oCollider), instance_place(x - 3, y, oCollider), instance_place(x - 4, y, oCollider),0);
var nearSlidingColliderRight = max(instance_place(x + 2, y, oSlidingCollider), instance_place(x + 3, y, oSlidingCollider), instance_place(x + 4, y, oSlidingCollider),0);
var nearSlidingColliderLeft = max(instance_place(x - 2, y, oSlidingCollider), instance_place(x - 3, y, oSlidingCollider), instance_place(x - 4, y, oSlidingCollider),0);
var nearVertSlidingColliderRight = max(instance_place(x + 2, y, oVertSlidingCollider), instance_place(x + 3, y, oVertSlidingCollider), instance_place(x + 4, y, oVertSlidingCollider),0);
var nearVertSlidingColliderLeft = max(instance_place(x - 2, y, oVertSlidingCollider), instance_place(x - 3, y, oVertSlidingCollider), instance_place(x - 4, y, oVertSlidingCollider),0);
var nearColliderGlowRight = max(instance_place(x + 2, y, oColliderGlow), instance_place(x + 3, y, oColliderGlow), instance_place(x + 4, y, oColliderGlow),0);
var nearColliderGlowLeft = max(instance_place(x - 2, y, oColliderGlow), instance_place(x - 3, y, oColliderGlow), instance_place(x - 4, y, oColliderGlow),0);
var nearSlidingGlowRight = max(instance_place(x + 2, y, oSlidingGlow), instance_place(x + 3, y, oSlidingGlow), instance_place(x + 4, y, oSlidingGlow),0);
var nearSlidingGlowLeft = max(instance_place(x - 2, y, oSlidingGlow), instance_place(x - 3, y, oSlidingGlow), instance_place(x - 4, y, oSlidingGlow),0);
var nearVertSlidingGlowRight = max(instance_place(x + 2, y, oVertSlidingGlow), instance_place(x + 3, y, oVertSlidingGlow), instance_place(x + 4, y, oVertSlidingGlow),0);
var nearVertSlidingGlowLeft = max(instance_place(x - 2, y, oVertSlidingGlow), instance_place(x - 3, y, oVertSlidingGlow), instance_place(x - 4, y, oVertSlidingGlow),0);
var nearBreakableRight = max(instance_place(x + 2, y , oBreakableBlock), instance_place(x + 3, y , oBreakableBlock), instance_place(x + 4, y , oBreakableBlock),0);
var nearBreakableLeft = max(instance_place(x - 2, y, oBreakableBlock), instance_place(x - 3, y, oBreakableBlock), instance_place(x - 4, y, oBreakableBlock),0);

// Animation
if (jumped > 0)
{
	sprite_index = sPlayerJump;
	jumped -= 1;
}
/*else if (hsp > 0)
{
	sprite_index = sPlayerMove;
	image_xscale = 1;
	//playerState = "MOVE_RIGHT";
}
else if (hsp < 0)
{
	sprite_index = sPlayerMove;
	image_xscale = -1;
	//playerState = "MOVE_LEFT";
}
else if(!colliderBelow && !colliderGlowBelow && !breakableBelow)
{	
	if((colliderLeft > 0) || (breakableLeft > 0) || (colliderGlowLeft > 0))
	{
		//sprite_index = sPlayerOnWall;
		//image_xscale = 1;
		playerState = "WALL_LEFT";
	}
	else if((colliderRight > 0) || (breakableRight > 0) || (colliderGlowRight > 0))
	{
		//sprite_index = sPlayerOnWall;
		//image_xscale = -1;
		playerState = "WALL_RIGHT";
	}
	else sprite_index = sPlayer;
}*/
else sprite_index = sPlayer;

movement = 0;

// Poll inputs
if (key_left) _kLeft++; else _kLeft = 0;
if (key_right) _kRight++; else _kRight = 0;
//React to inputs
if (_kLeft && (!_kRight || (_kLeft < _kRight))) {
movement = -1;
} else if (_kRight && (!_kLeft || (_kRight < _kLeft))) {
movement = 1;
}

if(colliderBelow || slidingColliderBelow || vertSlidingColliderBelow || breakableBelow || colliderGlowBelow || slidingGlowBelow || vertSlidingGlowBelow) // Includin jumpCount stops movement on second jump
{
	if(movement!=0) hsp += movement * 0.5; else hsp = movement;
}
else if(colliderRight || slidingColliderRight || vertSlidingColliderRight ||breakableRight || colliderGlowRight || slidingGlowRight || vertSlidingGlowRight || colliderLeft || slidingColliderLeft || vertSlidingColliderLeft || breakableLeft || colliderGlowLeft || slidingGlowLeft || vertSlidingGlowLeft)
{
	// wait a frame here to make sticky and add friction
	if(vsp > 0)
	{
		terminalVelocity = terminalVelocity/1.5;
		grav = grav/2;
	}
	
	if(movement!=0)
	{
		if(wallStickyTimer == 0)
		{
			hsp += movement * 0.5;
			wallStickyTimer = 5;
		}
		else wallStickyTimer -= 1;
	}
	else
	{
		hsp = movement;
		wallStickyTimer = 5;
	}
}
else if(movement!=0) hsp += movement * 0.5;
else hsp = hsp/1.02;

if (hsp > movementSpeed) hsp = movementSpeed;

if (hsp < -movementSpeed) hsp = -movementSpeed;

if (vsp < terminalVelocity) vsp += grav;

// reset gravity and terminal velocity incase it was decreased by wall contact
if (!onLift) grav = 0.5; else grav = 0;
terminalVelocity = 10;

// Fall off screen
if(y > room_height)	
{
	instance_change(oPlayerFallExplode, true);
}

var horizontalJump = movementSpeed;

if (colliderBelow || slidingColliderBelow || vertSlidingColliderBelow || breakableBelow || colliderGlowBelow || slidingGlowBelow || vertSlidingGlowBelow)
{
	// Jump on ground
	jumpCount = 1;
	wasOnGround = 5;
	if (key_jump)
	{ 
		vsp = -jumpSpeed;
		audio_play_sound(jump,0,0);
		sprite_index = sPlayerJump;
		jumped = 5;
	}
}
else if (wasOnGround > 0)
{
	if (key_jump)
	{ 
		vsp = -jumpSpeed;
		audio_play_sound(jump,0,0);
		sprite_index = sPlayerJump;
		jumped = 5;
	}
	wasOnGround -= 1;
}
else
{
	if(key_jump)
	{
		//wall jump
		if ((colliderRight || slidingColliderRight || vertSlidingColliderRight || breakableRight || colliderGlowRight || slidingGlowRight || vertSlidingGlowRight || nearColliderRight || nearSlidingColliderRight || nearVertSlidingColliderRight || nearBreakableRight || nearColliderGlowRight || nearSlidingGlowRight || nearVertSlidingGlowRight))
		{			
				vsp = -jumpSpeed+5;
				hsp = -horizontalJump;	
				jumpCount = 1;	
		}			
		else if ((colliderLeft || slidingColliderLeft || vertSlidingColliderLeft || breakableLeft || colliderGlowLeft || slidingGlowLeft || vertSlidingGlowLeft || nearColliderLeft || nearSlidingColliderLeft || nearVertSlidingColliderLeft || nearBreakableLeft || nearColliderGlowLeft || nearSlidingGlowLeft || nearVertSlidingGlowLeft))
		{
				vsp = -jumpSpeed+5;
				hsp = horizontalJump;
				jumpCount = 1;
		}
		else if (jumpCount>0) // Air Jump
		{
			
			vsp = -jumpSpeed/2;
			audio_play_sound(jump,0,0);
			sprite_index = sPlayerJump;
			jumped = 5;
			jumpCount -= 1;
		}		
	}
}

// Variable Height Jump
if((vsp < 0) && (!key_jump_held))
{
	vsp = max(vsp, -jumpSpeed/4);
}


/////////////////////////////// Handle Block Collision////////////////////////
//Handle all HSP stuff and then VSP so that collisions don't stick in diagonal movement

hsp_final = hsp + hsp_carry;
hsp_carry = 0;

if(place_meeting(x+hsp_final,y,oCollider))
{
	while(!place_meeting(x+sign(hsp_final),y,oCollider))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oSlidingCollider))
{
	while(!place_meeting(x+sign(hsp_final),y,oSlidingCollider))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oVertSlidingCollider))
{
	while(!place_meeting(x+sign(hsp_final),y,oVertSlidingCollider))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oColliderGlow))
{
	while(!place_meeting(x+sign(hsp_final),y,oColliderGlow))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oSlidingGlow))
{
	while(!place_meeting(x+sign(hsp_final),y,oSlidingGlow))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oVertSlidingGlow))
{
	while(!place_meeting(x+sign(hsp_final),y,oVertSlidingGlow))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if(place_meeting(x+hsp_final,y,oBreakableBlock))
{
	while(!place_meeting(x+sign(hsp_final),y,oBreakableBlock))
	{
		x+= sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

x += hsp_final;

if(place_meeting(x,y+vsp,oCollider))
{
	while(!place_meeting(x,y+sign(vsp),oCollider))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oSlidingCollider))
{
	while(!place_meeting(x,y+sign(vsp),oSlidingCollider))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oVertSlidingCollider))
{
	while(!place_meeting(x,y+sign(vsp),oVertSlidingCollider))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oColliderGlow))
{
	while(!place_meeting(x,y+sign(vsp),oColliderGlow))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oSlidingGlow))
{
	while(!place_meeting(x,y+sign(vsp),oSlidingGlow))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oVertSlidingGlow))
{
	while(!place_meeting(x,y+sign(vsp),oVertSlidingGlow))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oBreakableBlock))
{
	while(!place_meeting(x,y+sign(vsp),oBreakableBlock))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

y += vsp;

///////////////////////////////////////////////////////////////////////////////

///////////////////////// Handle breakable blocks//////////////////////////////

var breakableInstanceRight = instance_place(x + 1, y, oBreakableBlock);
var breakableInstanceLeft = instance_place(x - 1, y, oBreakableBlock);
var breakableInstanceUp = instance_place(x, y - 1, oBreakableBlock);
var breakableInstanceDown = instance_place(x, y + 1, oBreakableBlock);

if(breakableInstanceRight > 0)
{
	// If Variable
	with(breakableInstanceRight) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceRight) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceRight) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceLeft > 0)
{
	// If Variable
	with(breakableInstanceLeft) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceLeft) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceLeft) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceUp > 0)
{
	// If Variable
	with(breakableInstanceUp) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceUp) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceUp) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceDown > 0)
{
	// If Variable
	with(breakableInstanceDown) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceDown) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceDown) {
		alarm_set(0, 20);
	
		}
	}
}
/////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////Handle shooting //////////////////////////////

if (left_mb)
{
	if(cooldown <= 0)
	{
		instance_create_layer(x, y, "Instances", oBullet);
	
		cooldown = 60;
	}
}

cooldown += -1;

// Handle alternate bullets

if(alternateBullets > 0)
{
	if (right_mb)
	{
		if(alternateCooldown <= 0)
		{
			if(bulletType == "sticky")
			{
				instance_create_layer(x, y, "EnemyLayer", oStickyBullet);
			}
		
			else
			{
				if(bulletType == "pinball")
				{
					instance_create_layer(x, y, "Instances", oPinballBullet);
				}
			
				else
				{
					if(bulletType == "bomb")
					{
						instance_create_layer(x, y, "Instances", oBomb);
					}
				}
			}
		
			alternateBullets += - 1;
		
			alternateCooldown = 20;
		}
	}
}

alternateCooldown += -1;

///////////////////////////////////////////////////////////////////////////////