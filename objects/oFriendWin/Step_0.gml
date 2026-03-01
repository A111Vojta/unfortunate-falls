x_speed = 0; // reset horizontal speed 

y_speed += .17; // add gravity to y_speed


if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground

y_speed = -3;

}

move_and_collide(x_speed, y_speed, oSolid);