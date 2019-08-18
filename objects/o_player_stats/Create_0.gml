/// @description Initialize some variables

hp = 3;
max_hp = 3;
sapphires = 0;

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// play title music 
audio_play_sound(a_title, 10, false);

// get rid of cursor
window_set_cursor(cr_none);

// randomize it up, change the seed the game starts with so all random calls are different -- random_set_seed() can let you get same seed
randomize();