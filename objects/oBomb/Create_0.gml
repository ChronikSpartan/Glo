direction = 90;

speed += 5;

alarm_set(0, 75);

var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bomb, pitch);
audio_play_sound(bomb,0,0);