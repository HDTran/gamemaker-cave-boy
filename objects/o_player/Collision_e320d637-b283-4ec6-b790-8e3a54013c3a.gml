/// @description Colliding with an enemy

// check if we're above them
var above_enemy = y < other.y + yspeed;
var falling = yspeed > 0;

if (above_enemy && (falling || state == player.ledge_grab)) {
	// keep player above the enemy
	if (!place_meeting(x, yprevious, o_solid)) {
		y = yprevious;
	}
	
	// get as close to the enemy as possible
	while (!place_meeting(x, y + 1, other)) {
		y++;
	}
	
	with (other) {
		instance_destroy();	
	}
	
	// bounce off the enemy
	yspeed = -(16 / 3);
	audio_play_sound(a_step, 6, false);
} else {
	// take damage because we're not above
	take_damage();
}