/// @description Go up in score
o_player_stats.sapphires += 1;

with (other) {
	instance_destroy();	
}

audio_play_sound(a_tink, 3, false);