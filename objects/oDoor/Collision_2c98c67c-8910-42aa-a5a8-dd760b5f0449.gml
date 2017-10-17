with(other) instance_destroy();
audio_play_sound(menuSelect,0,0);
instance_change(oEnterDoor, true);

global.deathsInLevel = 0;
if(room == world1Level1){
steam_set_achievement("COMPLETE_FIRST_LEVEL");
}
if(room == world4Boss) steam_set_achievement("COMPLETE_ALL_LEVELS");