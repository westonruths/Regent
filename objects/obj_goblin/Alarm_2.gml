/// @description Update path
// You can write your code in this editor

goblin_attack()
goblin_retreat()

if (old_targetX != targetX || old_targetY != targetY) {
	//move towards point

}

if mp_grid_path(global.enemy_grid, path, x, y, targetX, targetY, false)  {
	path_start(path, spd * global.game_speed, path_action_stop, true)
} 

old_targetX = targetX
old_targetY = targetY

alarm[2] = 10