if(global.deathsInLevel == 10)
{
	steam_set_achievement("TEN_DEATHS");
}
if(global.deathsInLevel == 100)
{
	steam_set_achievement("ONE_HUNDRED_DEATHS");
}
if(global.bombKills == 2)
{
	steam_set_achievement("TWO_BADDIES_ONE_BOMB");
}
if(!instance_exists(oBombDot)) global.bombKills = 0;

if(global.sliderKills == 5)
{
	steam_set_achievement("BOUNCY");
}
if(global.sliderKilled && !counting)
{	
	counting = 1;
	alarm_set(0, 180);
}