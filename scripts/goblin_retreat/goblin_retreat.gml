// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goblin_retreat(){

	if start_num_pawns <= 0 {
		start_num_pawns = instance_number(obj_pawn) - 1
	}

	if instance_number(obj_pawn) < start_num_pawns {
		targetX = x
		targetY = 0
		
		if y <= global.top_game {
			instance_destroy()
		}
	}
	

}