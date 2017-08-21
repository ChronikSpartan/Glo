direction = oAimPoint.image_angle;

speed = 8;

image_angle = direction;

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bullet, pitch);

audio_play_sound(bullet,0,0);