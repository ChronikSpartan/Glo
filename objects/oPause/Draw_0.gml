if(pause)
{
	viewPosX = camera_get_view_x(view_camera[0]);
	viewPosY = camera_get_view_y(view_camera[0]);
	draw_set_color(c_black);
	draw_rectangle(viewPosX,viewPosY,room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(wallFont);
	draw_set_color(c_white);
	
<<<<<<< HEAD
	if(room == world1Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 1"));
	if(room == world1Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 2"));
	if(room == world1Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 3"));
	if(room == world1Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 4"));
	if(room == world1Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 5"));
	if(room == world1Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 6"));
	if(room == world1Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 7"));
	if(room == world1Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 8"));
	if(room == world1Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 9"));
	if(room == world1Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 10"));
	if(room == world1Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 11"));
	if(room == world1Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 12"));
	if(room == world1Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 13"));
	if(room == world1Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 14"));
	if(room == world1Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 15"));
	if(room == world1Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 16"));
	if(room == world1Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 17"));
	if(room == world1Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 18"));
	if(room == world1Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 19"));
	if(room == world1Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 20"));
	if(room == world1Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 21"));
	if(room == world1Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 22"));
	if(room == world1Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 23"));
	if(room == world1Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 24"));
	if(room == world1Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 25"));
	if(room == world1Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Boss 1"));
	if(room == world2Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 26"));
	if(room == world2Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 27"));
	if(room == world2Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 28"));
	if(room == world2Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 29"));
	if(room == world2Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 30"));
	if(room == world2Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 31"));
	if(room == world2Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 32"));
	if(room == world2Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 33"));
	if(room == world2Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 34"));
	if(room == world2Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 35"));
	if(room == world2Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 36"));
	if(room == world2Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 37"));
	if(room == world2Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 38"));
	if(room == world2Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 39"));
	if(room == world2Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 40"));
	if(room == world2Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 41"));
	if(room == world2Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 42"));
	if(room == world2Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 43"));
	if(room == world2Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 44"));
	if(room == world2Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 45"));
	if(room == world2Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 46"));
	if(room == world2Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 47"));
	if(room == world2Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 48"));
	if(room == world2Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 49"));
	if(room == world2Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 50"));
	if(room == world2Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Boss 2"));
	if(room == world3Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 51"));
	if(room == world3Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 52"));
	if(room == world3Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 53"));
	if(room == world3Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 54"));
	if(room == world3Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 55"));
	if(room == world3Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 56"));
	if(room == world3Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 57"));
	if(room == world3Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 58"));
	if(room == world3Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 59"));
	if(room == world3Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 60"));
	if(room == world3Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 61"));
	if(room == world3Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 62"));
	if(room == world3Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 63"));
	if(room == world3Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 64"));
	if(room == world3Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 65"));
	if(room == world3Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 66"));
	if(room == world3Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 67"));
	if(room == world3Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 68"));
	if(room == world3Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 69"));
	if(room == world3Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 70"));
	if(room == world3Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 71"));
	if(room == world3Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 72"));
	if(room == world3Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 73"));
	if(room == world3Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 74"));
	if(room == world3Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 75"));
	if(room == world3Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Boss 3"));
	if(room == world4Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 76"));
	if(room == world4Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 77"));
	if(room == world4Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 78"));
	if(room == world4Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 79"));
	if(room == world4Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 80"));
	if(room == world4Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 81"));
	if(room == world4Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 82"));
	if(room == world4Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 83"));
	if(room == world4Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 84"));
	if(room == world4Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 85"));
	if(room == world4Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 86"));
	if(room == world4Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 87"));
	if(room == world4Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 88"));
	if(room == world4Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 89"));
	if(room == world4Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 90"));
	if(room == world4Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 91"));
	if(room == world4Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 92"));
	if(room == world4Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 93"));
	if(room == world4Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 94"));
	if(room == world4Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 95"));
	if(room == world4Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 96"));
	if(room == world4Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 97"));
	if(room == world4Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 98"));
	if(room == world4Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 99"));
	if(room == world4Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Level 100"));
	if(room == world4Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("Final Boss"));
=======
	if(room == world1Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 1"));
	if(room == world1Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 2"));
	if(room == world1Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 3"));
	if(room == world1Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 4"));
	if(room == world1Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 5"));
	if(room == world1Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 6"));
	if(room == world1Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 7"));
	if(room == world1Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 8"));
	if(room == world1Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 9"));
	if(room == world1Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 10"));
	if(room == world1Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 11"));
	if(room == world1Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 12"));
	if(room == world1Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 13"));
	if(room == world1Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 14"));
	if(room == world1Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 15"));
	if(room == world1Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 16"));
	if(room == world1Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 17"));
	if(room == world1Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 18"));
	if(room == world1Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 19"));
	if(room == world1Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 20"));
	if(room == world1Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 21"));
	if(room == world1Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 22"));
	if(room == world1Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 23"));
	if(room == world1Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 24"));
	if(room == world1Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - 25"));
	if(room == world1Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("1 - Boss"));
	if(room == world2Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 1"));
	if(room == world2Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 2"));
	if(room == world2Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 3"));
	if(room == world2Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 4"));
	if(room == world2Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 5"));
	if(room == world2Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 6"));
	if(room == world2Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 7"));
	if(room == world2Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 8"));
	if(room == world2Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 9"));
	if(room == world2Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 10"));
	if(room == world2Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 11"));
	if(room == world2Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 12"));
	if(room == world2Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 13"));
	if(room == world2Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 14"));
	if(room == world2Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 15"));
	if(room == world2Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 16"));
	if(room == world2Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 17"));
	if(room == world2Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 18"));
	if(room == world2Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 19"));
	if(room == world2Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 20"));
	if(room == world2Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 21"));
	if(room == world2Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 22"));
	if(room == world2Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 23"));
	if(room == world2Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 24"));
	if(room == world2Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - 25"));
	if(room == world2Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("2 - Boss"));
	if(room == world3Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 1"));
	if(room == world3Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 2"));
	if(room == world3Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 3"));
	if(room == world3Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 4"));
	if(room == world3Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 5"));
	if(room == world3Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 6"));
	if(room == world3Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 7"));
	if(room == world3Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 8"));
	if(room == world3Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 9"));
	if(room == world3Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 10"));
	if(room == world3Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 11"));
	if(room == world3Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 12"));
	if(room == world3Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 13"));
	if(room == world3Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 14"));
	if(room == world3Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 15"));
	if(room == world3Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 16"));
	if(room == world3Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 17"));
	if(room == world3Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 18"));
	if(room == world3Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 19"));
	if(room == world3Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 20"));
	if(room == world3Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 21"));
	if(room == world3Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 22"));
	if(room == world3Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 23"));
	if(room == world3Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 24"));
	if(room == world3Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - 25"));
	if(room == world3Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("3 - Boss"));
	if(room == world4Level1) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 1"));
	if(room == world4Level2) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 2"));
	if(room == world4Level3) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 3"));
	if(room == world4Level4) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 4"));
	if(room == world4Level5) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 5"));
	if(room == world4Level6) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 6"));
	if(room == world4Level7) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 7"));
	if(room == world4Level8) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 8"));
	if(room == world4Level9) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 9"));
	if(room == world4Level10) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 10"));
	if(room == world4Level11) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 11"));
	if(room == world4Level12) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 12"));
	if(room == world4Level13) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 13"));
	if(room == world4Level14) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 14"));
	if(room == world4Level15) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 15"));
	if(room == world4Level16) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 16"));
	if(room == world4Level17) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 17"));
	if(room == world4Level18) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 18"));
	if(room == world4Level19) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 19"));
	if(room == world4Level20) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 20"));
	if(room == world4Level21) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 21"));
	if(room == world4Level22) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 22"));
	if(room == world4Level23) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 23"));
	if(room == world4Level24) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 24"));
	if(room == world4Level25) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - 25"));
	if(room == world4Boss) draw_text(viewWidth/2 + viewPosX + 10, (viewHeight/2) - 180 + viewPosY, string("4 - Boss"));
>>>>>>> origin/master
	
	var m;
	for(m = 0; m < array_length_1d(menu); m += 1)
	{
		draw_text(viewWidth/2 + viewPosX, (viewHeight/2) + (m * space) + viewPosY, string(menu[m]));
	}
	
	selectorX = (viewWidth/2) - 128 + viewPosX;
	selectorY = (viewHeight/2) + 18 + (menuPos * space) + viewPosY;
	draw_sprite_ext(sGradient, 0, selectorX + random_range(-1, 1), selectorY + random_range(-1, 1), 0.25, 0.25, 0, c_white, 1);	
	draw_sprite_ext(sPlayer, 0, selectorX, selectorY, 0.25, 0.25, 0, c_white, 1);	
	draw_set_colour(c_black);
}

draw_set_color(c_aqua);
draw_set_font(wallFont);
draw_set_halign(fa_left);

// Draw Speed Run Timer
if(global.speedRunShow)
{
	if(global.seconds < 10 && global.minutes < 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":0" + string(global.minutes) + ":0" + string(global.seconds));
	}
	else
	if(global.seconds >= 10 && global.minutes < 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":0" + string(global.minutes) + ":" + string(global.seconds));
	}
	else
	if(global.seconds < 10 && global.minutes >= 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":" + string(global.minutes) + ":0" + string(global.seconds));
	}
	else
	if(global.seconds >= 10 && global.minutes >= 10)
	{
		draw_text(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]), string(global.hours) + ":" + string(global.minutes) + ":" + string(global.seconds));
	}
}

draw_set_halign(fa_center);