x_speed = 0;
y_speed += grav;

if keyboard_check(vk_right) {
	x_speed = movement_speed;
	image_xscale = -1; 
} else if keyboard_check(vk_left) {
	x_speed = -movement_speed;
	image_xscale = 1;
}

if(place_meeting(x,y+1,oSolid)){
	if(keyboard_check(vk_up)) {
		y_speed = -6;
	} else {
		y_speed=0;
	}
}

move_and_collide(x_speed, y_speed, oSolid)

if (place_meeting(x,y,oSpikes)){
	room_restart();
}

if (y > room_height or y < 0 or x > room_width or x < 0) { // if the player is outside of the room

    room_restart(); 

}

if (place_meeting(x,y,oFlag) && (room == Room2)){
	room_goto(Room_WIN);
}

if (place_meeting(x,y,oFlag)&& (room == Room1)){
	room_goto(Room2);
}