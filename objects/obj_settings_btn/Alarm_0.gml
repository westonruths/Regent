/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	exit;
} else {
	unpause()
}

global.menu_open = true;

instance_create_layer(global.view_width-(global.view_width/3),0,"Menu_Background",obj_settings_menu);

instance_create_layer(global.build_x+85, global.build_y+20,"Menu",obj_save_btn);
instance_create_layer(global.build_x+85, global.build_y+70,"Menu",obj_quit_btn);
instance_create_layer(global.build_x+75, global.build_y+130,"Menu",obj_feedback_btn);

instance_create_layer(global.view_width-30,15,"Menu_Btns",obj_close_menu);
