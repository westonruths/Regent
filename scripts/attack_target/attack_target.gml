// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_target(enemy){
	// Fire at closest enemy
	if instance_exists(enemy) {
		direction = point_direction(x, y, enemy.x, enemy.y)
		sprite_index = spr_pawn_run
		
		with(tool){
			x = other.active_wpn.x
			y = other.active_wpn.y
		}
		
		// Move towards closest enemy to engage
		move_to_around_free_point(enemy.x, enemy.y)
		
		defend_target = enemy
	
		// Equip our primary weapon
		active_wpn_index = equipped_wpn
		
		with(active_wpn){
			target = other.defend_target
			weapon = other.active_wpn_index
		}
		
		if (distance_to_point(enemy.x,enemy.y) < active_wpn.range) {
			sprite_index = spr_pawn_idle
			targetX = x
			targetY = y
			
			// Drop current item that we are holding
			_clear_previous_targets()
		}
	}
}