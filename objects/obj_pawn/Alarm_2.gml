/// @description Update path
// You can write your code in this editor
// Loop through and execute enabled tasks
targets[0] = mood_target
targets[1] = defend_target
targets[2] = eat_target
targets[3] = sleep_target
targets[4] = patient_target
targets[5] = doctor_target
targets[6] = cooking_target
targets[7] = hunt_target
targets[8] = construct_target
targets[9] = grow_target
targets[10] = mine_target
targets[11] = fell_target
targets[12] = haul_target
current_target = targets_listsize-1
Idle()
var listSize = array_length(task_cells);
for(var i = listSize - 1; i >= 1; i--) {
	if (task_cells[i].enabled) {
		script_execute(task_cells[i].job)
	}
	current_target--
}
// Sleep and then eat next
Sleep()
current_target--
Eat()
current_target--
// Do defend last since it is highest priority
if (task_cells[0].enabled) {
	script_execute(task_cells[0].job)
} else {
	Hide()	
}
current_target--
// Mood actions
Mood()
current_target--

Draft()

//move towards point
if (old_targetX != targetX || old_targetY != targetY) {

}

if mp_grid_path(global.grid, path, x, y, targetX, targetY, true)  {
	path_start(path, spd * global.game_speed, path_action_stop, true)
}

old_targetX = targetX
old_targetY = targetY

alarm[2] = 5

