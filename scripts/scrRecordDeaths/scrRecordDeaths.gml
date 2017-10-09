
var deathCheck = 0;

if (file_exists("save.sav"))
{
	ini_open("save.sav");
	deathCheck = ini_read_real("STATS", "deaths", 0);
	ini_write_real("STATS", "deaths", deathCheck + 1);
}

ini_close();