/// @description Insert description here
// You can write your code in this editor
with(active_wpn){
	instance_destroy();
}

with(tool) { instance_destroy() }

with(hair) { instance_destroy() }

with(selector) { instance_destroy() }

with(mood) { instance_destroy() }

var listSize = array_length(jobs);
for(var i = 0; i < listSize; i++) {
	with(task_cells[i]) {
		instance_destroy()
	}
}
