friction = 0.09;
vsp = 2;

dotSpeed = random_range(5,10);
dotColour = random_range(0, 6);

direction = choose(135,90,45,180,0,225,270,315);

speed = dotSpeed;

alarm_set(0, random_range(100,400));