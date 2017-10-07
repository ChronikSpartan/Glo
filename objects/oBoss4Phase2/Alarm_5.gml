instance_create_layer(0,0,"Instances",oShake);
var pitch = random_range(0.5, 1.5);
audio_sound_pitch(bossTeleport, pitch);
audio_play_sound(bossTeleport,0,0);

if (hitPoints == 1) alarm_set(3, 30); else alarm_set(0, 30); 