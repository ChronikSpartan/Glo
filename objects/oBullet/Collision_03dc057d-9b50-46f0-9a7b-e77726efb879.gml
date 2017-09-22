instance_destroy();
audio_play_sound(bulletImpact,0,0);
instance_create_layer(x + 0, y + 0, "Instances", oExplode);

// correct position
other.y += sign(other.vsp);