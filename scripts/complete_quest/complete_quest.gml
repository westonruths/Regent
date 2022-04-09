// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function complete_quest(i){
	quest_array[i][1] = -1
	var complete = instance_create_layer(global.view_width/4, global.view_height/4,
		"Menu_Objects",obj_quest_complete);
	with (complete) {
		name = other.quest_array[i][0]
		renown_reward = other.quest_array[i][3]
	}
}
