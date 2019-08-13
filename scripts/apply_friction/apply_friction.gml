/// @description apply_friction(amount)
/// @param amount
var amount = argument0;

// first check to see if we're moving
if (xspeed != 0) {
	if (abs(xspeed) - amount > 0) {
		xspeed -= amount * image_xscale; // image_xscale changes based on where they're facing left/right	
	} else {
		xspeed = 0;	
	}
}