found = 0;
if(room == world1Level1) found = scrCheckMemories("1");
if(room == world1Level2) found = scrCheckMemories("2");

if(found) instance_destroy();