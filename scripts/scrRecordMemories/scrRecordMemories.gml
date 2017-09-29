if (file_exists("save.sav"))
{
	ini_open("save.sav");
	ini_write_real("MEMORY", argument0, 1);
}

ini_close();