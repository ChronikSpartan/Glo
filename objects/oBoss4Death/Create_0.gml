instance_create_layer(0,0,"Instances",oBossDeathShake);
alarm_set(0, 100);

steam_set_achievement("COMPLETE_FIRST_LEVEL");
steam_set_achievement("BEAT_BOSS_1");
steam_set_achievement("BEAT_BOSS_2");
steam_set_achievement("BEAT_BOSS_3");
steam_set_achievement("BEAT_BOSS_4");
if(global.speedRunShow) steam_set_achievement("SPEED_RUNNER");
if(global.oneSitting)
{
	steam_set_achievement("COMPLETE_IN_ONE");
	if(global.deathsOverall == 0) steam_set_achievement("ONE_SITTING_NO_DEATHS");
}
