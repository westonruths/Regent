/// @description Insert description here
// You can write your code in this editor
if instance_exists(pawn) {
	if !pawn.drafted {
		exit
	}
}

if !selected {
	selected = true

	pawn.menu_open = false
	with(obj_close_menu) { instance_destroy() }
	with(obj_back_settlers) { instance_destroy() }
	
	
	global.menu_open = true

	sprite_index = spr_lt_box
	image_xscale = global.view_width/3.1/sprite_get_width(spr_lt_box)
	image_yscale = 13

	x = global.build_x
	y = global.view_height - sprite_height * 1

	instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_menu);
	instance_create_layer(x+10,y+70,"Menu_Btns",obj_taskplace_btn);
	with(instance_create_layer(x+75,y+75,"Menu_Btns",obj_draft_btn)) {
		pawn = other.pawn
	}
	instance_create_layer(x+168,y+70,"Menu_Btns",obj_taskcamera_btn);
}


