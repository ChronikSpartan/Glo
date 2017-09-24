numberOfDots = random_range(10,20);

repeat(numberOfDots)
{
	instance_create_layer(x + 0, y + 0, "Instances", oReleaseDot);
}
if(!stopDots) alarm_set(0,90);