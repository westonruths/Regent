/// @description Insert description here
// You can write your code in this editor
event_inherited()

image_speed = spd * global.game_speed
path_speed = spd * global.game_speed

if (global.time_pause) {
	exit;
} 

if (hp <= 0) {
	instance_destroy();
	repeat(irandom_range(1,4)) {
		instance_create_layer(x,y,"Items",obj_meat)
	}
}

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

if (old_targetX != targetX || old_targetY != targetY) {
	if mp_grid_path(global.enemy_grid, path, x, y, targetX, targetY, true)  {
		path_start(path, spd, path_action_stop, false)
	} else {
		image_index = 0
	}
}
old_targetX = targetX
old_targetY = targetY

if path_position > 0.85 {
	image_index = 0
}


