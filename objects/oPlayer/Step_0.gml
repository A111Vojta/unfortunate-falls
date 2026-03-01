x_speed = 0; // reset horizontal speed 

y_speed += 0.17; // add gravity to y_speed

if keyboard_check(vk_right) {  // if the right arrow key is pressed

    x_speed = walk_speed;// set the horizontal speed to heidi's walk_speed
	image_xscale = 1; // flip heidi's sprite so she faces right
	sprite_index = sPlayerWalk;

} else if keyboard_check(vk_left) {  // otherwise, if the left arrow key is pressed

    x_speed = -walk_speed;  // set the horizontal speed to negative heidi's walk_speed, making her move left
	image_xscale = -1; // reset her sprite so she faces left
	sprite_index = sPlayerWalk;
	
} else {

	sprite_index = sPlayerIdle;

}


if y_speed >= 1 { // if player is falling

	sprite_index = sPlayerDown; // change sprite to look down

} else if y_speed <= 0.16 { // if the player is moving upwards( must be less than the gravity) 

	sprite_index = sPlayerUp; // change the sprite to look up

} else if y_speed == 0 { //if the vertical speed is 0

	sprite_index = sPlayerIdle; // idle

}


if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground

    if (keyboard_check_pressed(vk_up)) { // and the up arrow key is pressed

        y_speed = -3; // make heidi jump by setting her y_speed to a negative value

    } else { // otherwise, if heidi is on the ground but not jumping

        y_speed = 0; // set her y_speed to 0 so she doesn't fall through the ground

    }

}

move_and_collide(x_speed, y_speed, oSolid);

if (place_meeting(x, y, oSpikes)) { // if heidi collides with the spikes

    room_restart() // restart the level

}

if (place_meeting(x, y, oBouncy)) {

    y_speed = -5

}

