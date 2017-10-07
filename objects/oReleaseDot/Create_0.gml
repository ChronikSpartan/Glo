friction = 0.09;
vsp = 2;

dotSpeed = random_range(10,15);
dotColour = random_range(0, 6);

direction = choose(0, 22, 45, 67, 90, 112, 135, 157, 180, 202, 225, 257, 270, 292, 315, 337);

speed = dotSpeed;

alarm_set(0, random_range(300,600));