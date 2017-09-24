dir = -1;
grav = 0.25;
hsp = 0;
vsp = 0;
movementSpeed = 2;
bulletRate = 90;

fearOfHeights = 0;

setGlow = false;
bossGrace = 0;
hitPoints = 3;
waiting = false;
currentPathSpeed = 6;

pathInPlay = 1;
path_start(pBoss3P1, currentPathSpeed, path_action_stop, true);
alarm_set(3,bulletRate);