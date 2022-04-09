// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemies(){
	repeat(global.day * 2) {
		var xx = room_width - 16 - random(3) * 5;
		var yy = spawn_list[| irandom(ds_list_size(spawn_list)-1)];;

		instance_create_layer(xx, yy, "Instances", obj_goblin)
	}
}