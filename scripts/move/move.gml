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
y += yspeed;