/// @description Insert description here
// You can write your code in this editor
event_inherited()

with (obj_ui_task) {
	if selected && self.id != other.id {
		with (other) { visible = false }
	}
}

if !instance_exists(obj_close_task) {
	selected = false
}

if x == global.build_x && y == global.view_height - sprite_height * 1 {
	if sprite_index != spr_lt_box {
		unpause()
		alarm[0] = 1
	}
}