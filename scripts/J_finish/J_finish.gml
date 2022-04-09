// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function J_finish(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Go Forth"
		detail = "It's now time to seize your destiny. Earn enough renown so that a regent can be crowned!"
		prompt_sprite = noone
		storyteller_script = unpause
	}		
	
	with (obj_play) {
		alarm[0] = 1
	}
}