/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	exit;
} else {
	path_speed = spd * global.game_speed
	image_speed = 1 * global.game_speed
}

// Check for character death
if (hp <= 0) {
	path_speed = 0;
	sprite_index = spr_goblin_dead
	exit
}

//detect loss in health
if (hp < old_hp) {
	sprite_index = spr_goblin_hurt
	old_hp = hp
	hunt_target = noone //see if there is a closer target
}
if (sprite_index == spr_goblin_hurt && image_index < image_number - 1) {
	path_speed = 0;
	exit
}
old_hp = hp
