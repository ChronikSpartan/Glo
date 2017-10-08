var deathCheck = 0;

if (file_exists("save.sav"))
{
	ini_open("save.sav");
	deathCheck = ini_read_real("STATS", "deaths", 0);
}

ini_close();

return deathCheck;