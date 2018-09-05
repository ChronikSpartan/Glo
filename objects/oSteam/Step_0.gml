global.steam_api = false;
if steam_initialised()
{
	if (steam_stats_ready() && steam_is_overlay_enabled())
    {
		global.steam_api = true;
    }
}