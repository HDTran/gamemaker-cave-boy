/// @description Controller the player's state

#region Set up controls for the player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);
#endregion

#region State Machine
	switch (state) {
		#region Move State
			case player.moving:
				// change direction of sprite
				if (xspeed != 0) {
					image_xscale = sign(xspeed);	
				}
				
				// check whether we're moving left or right
				if (right || left) {
					xspeed = (right - left) * acceleration;
					xspeed = clamp(xspeed, -max_speed, max_speed);
				} else {
					apply_friction(acceleration);
				}
				
				move(o_solid);
			break;
		#endregion
		#region Ledge Grab State
			case player.ledge_grab:
			break;
		#endregion
		#region Door State
			case player.door:
			break;
		#endregion
		#region Hurt State
			case player.hurt:
			break;
		#endregion
		#region Death State
			case player.death:
			break;
		#endregion
	}
#endregion