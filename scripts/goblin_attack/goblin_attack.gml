// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goblin_attack(){

	if instance_exists(hunt_target) {
		if hunt_target.hp <= 0 {
			hunt_target = noone
			sprite_index = spr_goblin_idle
			exit
		}
		
		if distance_to_object(hunt_target) < global.grid_resolution {
			direction = point_direction(x, y, hunt_target.x, hunt_target.y)
			sprite_index = spr_goblin_attack
			path_speed = 0
			targetX = x
			targetY = y
			
			with(hunt_target) {
				defend_target = other.id
			}
		} else {
			move_to_around_free_point(hunt_target.x, hunt_target.y)
			sprite_index = spr_goblin_run
		}
	} else {
		var max_dist  = 9999
			
		with(obj_pawn) {
			var tmp_target = id
			var chosen = false
			
			if !mp_grid_path(global.enemy_grid, path, x, y, tmp_target.x, tmp_target.y, false) {
				chosen = true	
			}
				
			if (!chosen && hp > 0) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.hunt_target = id
					max_dist = dist
				}
			}
		}
		
		if instance_exists(hunt_target) {
			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(hunt_target.x, hunt_target.y, obj_room_wall)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}

			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(hunt_target.x, hunt_target.y, obj_tree)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}
			
			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(hunt_target.x, hunt_target.y, obj_mtn_wall)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}

			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(x, y, obj_mtn_wall)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}

			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(x, y, obj_tree)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}
			
			if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
				var _nearest = instance_nearest(x, y, obj_room_wall)
				if instance_exists(_nearest) { hunt_target = _nearest }
			}
		}
	}
}