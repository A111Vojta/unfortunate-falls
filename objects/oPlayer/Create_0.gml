x_speed = 0; 

y_speed = 0; 

walk_speed = 1; 

spawnx = 0;
spawny = 0;

if global.roomnumber == 1 and global.FrontEnter == 1 {
	spawnx = 295;
	spawny = 120;
}

if global.roomnumber == 2 and global.FrontEnter == 1 {
	spawnx = 295;
	spawny = 120;
}

if global.roomnumber == 3 and global.FrontEnter == 1 {
	spawnx = 295;
	spawny = 30;
} 

if global.FrontEnter == 1 {
	oPlayer.x = spawnx;
	oPlayer.y = spawny;
}