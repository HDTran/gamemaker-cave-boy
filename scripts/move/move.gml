/// @description move(collision_object)
/// @param collision_object
var collision_object = argument0;

// horizontal collisions
if (place_meeting(x + xspeed, y, collision_object)) {
	while (!place_meeting(x + sign(xspeed), y, collision_object)) {
		x += sign(xspeed);	
	}
	xspeed = 0;
}

x += xspeed;

// vertical collisions
if (place_meeting(x, y + yspeed, collision_object)) {
	while (!place_meeting(x, y + sign(yspeed), collision_object)) {
		y += sign(yspeed);	
	}
	yspeed = 0;
}

y += yspeed;