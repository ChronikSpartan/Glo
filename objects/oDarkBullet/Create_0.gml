image_xscale = 0.25;
image_yscale = 0.25;

if(instance_exists(oPlayer))
{
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
}

speed = 8;

image_angle = direction;

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bullet, pitch);

audio_play_sound(bullet,0,0);