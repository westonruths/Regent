// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Construct(){
	if (instance_exists(construct_target)) {
		_clear_previous_targets()
			
		move_to_around_free_point(construct_target.x, construct_target.y)
		if path_position > 0.85 {
			direction = point_direction(x, y, construct_target.x, construct_target.y)
			sprite_index = spr_pawn_hammering
			current_task = "Constructing"

			if instance_position(construct_target.x, construct_target.y, obj_pawn) {
				construct_target = noone
			}
		} else {
			sprite_index = spr_pawn_run
			move_to_around_free_point(construct_target.x, construct_target.y)
			current_task = "Constructing"
		}
		
		if instance_exists(construct_target) {
			if !construct_target.deconstruct && construct_target.hp == construct_target.hp_max && construct_target.object_index != obj_construction  {
				//print(name, "stopping construction", construct_target)
				construct_target = noone
			}
		}
		
		//if construct_target.build_cost.built && construct_target.object_index == obj_construction {
		//	construct_target = noone
		//}
		
		//if !construct_target.deconstruct {
		//	construct_target = noone	
		//}
	} else {
		var max_dist  = 9999
			
		with(obj_construction) {
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (construct_target == tmp_target) {
					chosen = true;
				}
				
				if instance_position(x, y, tmp_target) {
					chosen = true
				}
			}
				
			if (!chosen && build_cost.done() && place_empty(x,y,obj_pawn)) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.construct_target = id
					max_dist = dist
				}
			}
		}
		
		// check for buildings that need to be deconstructed
		with(obj_building) {
			if !deconstruct {continue}
			
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (construct_target == tmp_target) {
					chosen = true;
				}
				
				if instance_position(x, y, tmp_target) {
					chosen = true
				}
			}
				
			if (!chosen && deconstruct) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.construct_target = id
					max_dist = dist
				}
			}
		}

		// check for buildings that need to be repaired
		with(obj_building) {
			if hp == hp_max {continue}
			
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (construct_target == tmp_target) {
					chosen = true;
				}
			}
				
			if (!chosen) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.construct_target = id
					max_dist = dist
				}
			}
		}
	}
}