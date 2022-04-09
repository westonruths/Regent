// Logic to cut down trees
function PlantCut() {	
	var main_pawn = self
	with (fell_target) {
		if selected == false {
			other.fell_target = noone
		}
	}
		
	if (instance_exists(fell_target)) {
		_clear_previous_targets()
		
		if path_position > 0.85 && distance_to_object(fell_target) < global.grid_resolution {
			direction = point_direction(x, y, fell_target.x, fell_target.y)
			sprite_index = spr_pawn_chop
			current_task = "Plant cutting"
		} else {
			move_to_around_free_point(fell_target.x, fell_target.y)
			sprite_index = spr_pawn_run
			current_task = "Plant cutting"
		}
	} else {
		var max_dist  = 9999
		
		var _objects = [obj_harvestable, obj_tree]
	
		for (var i = 0; i < array_length(_objects); i++) {
			var _object = _objects[i]
		
			with(_object) {
				var tmp_target = id
				var chosen = false
				var spot_free = false
			
				if !selected continue
			
				with(obj_pawn) {
					if (fell_target == tmp_target) {
						chosen = true;
					}
				}
			
				if chosen continue
			
				with(main_pawn) {
					spot_free = check_around_free_point(other.x, other.y)
				}
				
				if (!chosen && selected && spot_free) {
					var dist = distance_to_object(other)
					if (dist < max_dist) {
						other.fell_target = id
						max_dist = dist
					}
				}
			}
		}
	}
}