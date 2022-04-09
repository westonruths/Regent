/// @description Insert description here
// You can write your code in this editor
with(obj_menu_btn) {
	if hide_buttons { exit }
}

if selected || global.menu_open {exit}

with (obj_info_item) {
	alarm[4] = -1
}

with (obj_ui_task) {
	selected = false
}

global.menu_open = true

selected = true

sprite_index = spr_lt_box
image_xscale = global.view_width/3.1/sprite_get_width(spr_lt_box)
image_yscale = 13

x = global.build_x
y = global.view_height - sprite_height * 1

instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_task);

instance_create_layer(x+10,y+70,"Menu_Btns",obj_taskplace_btn);
instance_create_layer(x+80,y+70,"Menu_Btns",obj_taskremove_btn);
instance_create_layer(x+150,y+70,"Menu_Btns",obj_taskcamera_btn);