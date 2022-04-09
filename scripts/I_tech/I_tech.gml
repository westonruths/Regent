// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function I_tech(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Technology"
		detail = "You'll also see the technology button in the top right. Click it to show the technology tree and to decide what to spend your scrolls on."
		prompt_sprite = spr_book
		storyteller_script = J_finish
	}		
}