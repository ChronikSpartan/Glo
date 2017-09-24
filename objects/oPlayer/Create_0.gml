grav = 0.5;
terminalVelocity = 10;
hsp = 0;
hsp_carry = 0;
hsp_final = 0;
vsp = 0;
vsp_carry = 0;
vsp_final = 0;
jumpSpeed = 12;
movementSpeed = 5;
hsp_wjump = 0;

onLift = 0;

_kLeft = 0;
_kRight = 0;

cooldown = 0;

alternateCooldown = 0;

alternateBullets = 0;

wallStickyTimer = 5;
wasOnGround = 5;
jumpCount = 1;
jumpTimer = 10;
jumped = false;
spcKeyReleased = true;
playerState = "STANDING";
jumped = 0;

previousX = x;
previousY = y;

alarm_set(0,60);


gamepad_set_axis_deadzone(0, 0.4);