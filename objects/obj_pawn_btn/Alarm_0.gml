/// @description Insert description here
// You can write your code in this editor

with (obj_pawns_menu_back) {
	if abs(delta) > 1 {
		exit
	}
}

unpause()

with (obj_pawn_btn) {
	instance_destroy()
}

with pawn {
	alarm[0] = 1
}

with (obj_pawns_menu) {
	instance_destroy()
}