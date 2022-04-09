/// @description Insert description here
// You can write your code in this editor

if(room != rm_game) {
	exit;
}

// janky camera setup to start near center of map
if (first_step) {
	first_step = false
	
	with (obj_camera) {
		//x = xstart
		//y = ystart
		xTo = xstart
		yTo = ystart
		camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
	}
}