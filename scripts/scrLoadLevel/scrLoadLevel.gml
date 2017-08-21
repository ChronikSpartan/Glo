if (file_exists("save.sav"))
{
	ini_open("save.sav");
	argument0[0] = ini_read_real("GAME PROGRESS", "1-1", 0);
	argument0[1] = ini_read_real("GAME PROGRESS", "1-2", 0);
	argument0[2] = ini_read_real("GAME PROGRESS", "1-3", 0);
	argument0[3] = ini_read_real("GAME PROGRESS", "1-4", 0);
	argument0[4] = ini_read_real("GAME PROGRESS", "1-5", 0);
	argument0[5]  = ini_read_real("GAME PROGRESS", "1-6", 0);
	argument0[6]  = ini_read_real("GAME PROGRESS", "1-7", 0);
	argument0[7]  = ini_read_real("GAME PROGRESS", "1-8", 0);
	argument0[8]  = ini_read_real("GAME PROGRESS", "1-9", 0);
	argument0[9]  = ini_read_real("GAME PROGRESS", "1-10", 0);
	argument0[10]  = ini_read_real("GAME PROGRESS", "1-11", 0);
	argument0[11]  = ini_read_real("GAME PROGRESS", "1-12", 0);
	argument0[12]  = ini_read_real("GAME PROGRESS", "1-13", 0);
	argument0[13]  = ini_read_real("GAME PROGRESS", "1-14", 0);
	argument0[14]  = ini_read_real("GAME PROGRESS", "1-15", 0);
	argument0[15]  = ini_read_real("GAME PROGRESS", "1-16", 0);
	argument0[16]  = ini_read_real("GAME PROGRESS", "1-17", 0);
	argument0[17]  = ini_read_real("GAME PROGRESS", "1-18", 0);
	argument0[18]  = ini_read_real("GAME PROGRESS", "1-19", 0);
	argument0[19]  = ini_read_real("GAME PROGRESS", "1-20", 0);
	argument0[20]  = ini_read_real("GAME PROGRESS", "1-21", 0);
	argument0[21]  = ini_read_real("GAME PROGRESS", "1-22", 0);
	argument0[22]  = ini_read_real("GAME PROGRESS", "1-23", 0);
	argument0[23]  = ini_read_real("GAME PROGRESS", "1-24", 0);
	argument0[24]  = ini_read_real("GAME PROGRESS", "1-25", 0);
	argument0[25]  = ini_read_real("GAME PROGRESS", "1-Boss", 0);
	ini_close();
}

return argument0;