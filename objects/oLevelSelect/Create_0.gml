/// @description Execute Code
menu[0] = "1";
menu[1] = "2";
menu[2] = "3";
menu[3] = "4";
menu[4] = "5";
menu[5] = "6";
menu[6] = "7";
menu[7] = "8";
menu[8] = "9";
menu[9] = "10";
menu[10] = "11";
menu[11] = "12";
menu[12] = "13";
menu[13] = "14";
menu[14] = "15";
menu[15] = "16";
menu[16] = "17";
menu[17] = "18";
menu[18] = "19";
menu[19] = "20";
menu[20] = "21";
menu[21] = "22";
menu[22] = "23";
menu[23] = "24";
menu[24] = "25";
menu[25] = "Boss";

levelArray[0] = 0;
levelArray[1] = 0;
levelArray[2] = 0;
levelArray[3] = 0;
levelArray[4] = 0;
levelArray[5] = 0;
levelArray[6] = 0;
levelArray[7] = 0;
levelArray[8] = 0;
levelArray[9] = 0;
levelArray[10] = 0;
levelArray[11] = 0;
levelArray[12] = 0;
levelArray[13] = 0;
levelArray[14] = 0;
levelArray[15] = 0;
levelArray[16] = 0;
levelArray[17] = 0;
levelArray[18] = 0;
levelArray[19] = 0;
levelArray[20] = 0;
levelArray[21] = 0;
levelArray[22] = 0;
levelArray[23] = 0;
levelArray[24] = 0;
levelArray[25] = 0;

levelArray = scrLoadLevel(levelArray);

space = 64;
menuPos = 0;

with(oSelector)
{
	x = oLevelSelect.x + 64;
	y = oLevelSelect.y + 64;
}