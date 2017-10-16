var memoryCheck = 0;

if (file_exists("save.sav"))
{
	ini_open("save.sav");
	memoryCheck = ini_read_real("MEMORY", argument0, 0);
}

ini_close();

return memoryCheck;