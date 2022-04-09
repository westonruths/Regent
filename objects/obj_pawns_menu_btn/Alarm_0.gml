/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	//unpause();
	exit;
} else {
	unpause()
}

global.menu_open = true;

instance_create_layer(global.view_width-(global.view_width/3),0,"Menu_Background",obj_pawns_menu_back);

//initialize build menu
var i = 0;
with(obj_pawn) {
	var pawn_btn = instance_create_layer(global.build_x, global.build_y+5 + i*50,"Menu_Objects",obj_pawn_btn);
	with (pawn_btn) {
		pawn = other
	}
	i++
}

instance_create_layer(global.view_width-30,15,"Menu_Btns",obj_close_menu);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu_Btns",obj_pawns_menu);