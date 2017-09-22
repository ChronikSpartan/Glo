audio_play_sound(stickyStick,0,0);
speed = 0;
instance_impact_id = other;
// correct position
other.y += sign(other.vsp);