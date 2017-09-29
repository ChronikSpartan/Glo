if (file_exists("save.sav"))
{
	ini_open("save.sav");
	argument0[0] = ini_read_real("MEMORY", "1", 0);
	argument0[1] = ini_read_real("MEMORY", "2", 0);
	argument0[2] = ini_read_real("MEMORY", "3", 0);
	argument0[3] = ini_read_real("MEMORY", "4", 0);
	argument0[4] = ini_read_real("MEMORY", "5", 0);
	argument0[5]  = ini_read_real("MEMORY", "6", 0);
	argument0[6]  = ini_read_real("MEMORY", "7", 0);
	argument0[7]  = ini_read_real("MEMORY", "8", 0);
	argument0[8]  = ini_read_real("MEMORY", "9", 0);
	argument0[9]  = ini_read_real("MEMORY", "10", 0);
	argument0[10]  = ini_read_real("MEMORY", "11", 0);
	argument0[11]  = ini_read_real("MEMORY", "12", 0);
	argument0[12]  = ini_read_real("MEMORY", "13", 0);
	argument0[13]  = ini_read_real("MEMORY", "14", 0);
	argument0[14]  = ini_read_real("MEMORY", "15", 0);
	argument0[15]  = ini_read_real("MEMORY", "16", 0);
	argument0[16]  = ini_read_real("MEMORY", "17", 0);
	argument0[17]  = ini_read_real("MEMORY", "18", 0);
	argument0[18]  = ini_read_real("MEMORY", "19", 0);
	argument0[19]  = ini_read_real("MEMORY", "20", 0);
	argument0[20]  = ini_read_real("MEMORY", "21", 0);
	argument0[21]  = ini_read_real("MEMORY", "22", 0);
	argument0[22]  = ini_read_real("MEMORY", "23", 0);
	argument0[23]  = ini_read_real("MEMORY", "24", 0);
	argument0[24]  = ini_read_real("MEMORY", "25", 0);
	argument0[25]  = ini_read_real("MEMORY", "26", 0);
	ini_close();
}

return argument0;