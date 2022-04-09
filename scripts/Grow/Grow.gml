// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Grow(){
	with (grow_target) {
		if build_counter >= max_build_counter && watered {
			with (other) {
				grow_target = noone
				sprite_index = spr_pawn_run
			}
		}
	}
	
	if (instance_exists(grow_target)) {
		_clear_previous_targets()
		
		if grow_target.build_counter < grow_target.max_build_counter {
			move_to_around_free_point(grow_target.x, grow_target.y)
			if path_position > 0.85 {
				direction = point_direction(x, y, grow_target.x, grow_target.y)
				sprite_index = spr_pawn_digging
				current_task = "Planting"
			} else {
				sprite_index = spr_pawn_run
				current_task = "Planting"
			}		
		} else if !grow_target.watered {
			move_to_around_free_point(grow_target.x, grow_target.y)
			if path_position > 0.85 {
				direction = point_direction(x, y, grow_target.x, grow_target.y)
				sprite_index = spr_pawn_watering
				current_task = "Watering"
			} else {
				sprite_index = spr_pawn_run
				current_task = "Watering"
			}					
		}

		
	} else {
		var max_dist  = 9999
			
		with(obj_crop) {
			var tmp_target = id
			var chosen = false
			
			with(obj_pawn) {
				if (grow_target == tmp_target) {
					chosen = true;
				}
			}
			
			if !chosen && ((build_counter < max_build_counter) || !watered) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.grow_target = id
					max_dist = dist
				}
			}
		}
			
		with(grow_target){
			chosen = true;
		}
	}
}