// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mine(){
	var main_pawn = self
		
	if (instance_exists(mine_target)) {
		_clear_previous_targets()
		
		move_to_around_free_point(mine_target.x, mine_target.y)
		if path_position > 0.85 && distance_to_object(mine_target) < global.grid_resolution {
			direction = point_direction(x, y, mine_target.x, mine_target.y)
			sprite_index = spr_pawn_mine
			current_task = "Mining"
		} else {
			sprite_index = spr_pawn_run
			current_task = "Mining"
		}
	} else {
		var max_dist  = 9999
		
		var size = ds_list_size(global.selected_mtns);
		for(var i=0; i<size; i++){
		    var mtn = ds_list_find_value(global.selected_mtns,i);
			with(mtn) {
				var tmp_target = id
				var chosen = false
				var spot_free = false
			
				if !selected continue
			
				with(obj_pawn) {
					if mine_target == tmp_target {
						chosen = true
						break
					}
				}
			
				with(main_pawn) {
					spot_free = check_around_free_point(other.x, other.y)
				}
				
				if (!chosen && selected && spot_free) {
					var dist = distance_to_object(other)
					if (dist < max_dist) {
						other.mine_target = id
						max_dist = dist
					}
				}
			}
		}
	}
}