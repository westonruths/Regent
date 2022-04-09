// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function B_mine_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Mining"
		detail = "In the bottom right corner you will see your task controls. \nThe first to look at is the mining button. Select this and choose what mountain blocks you want your settlers to mine."
		prompt_sprite = spr_pickaxe_btn
		storyteller_script = C_chop_controls
	}		
}