// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function F_hunt_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Hunt Commands"
		detail = "Use this control to select what animals you want your settlers to hunt."
		prompt_sprite = spr_bow_btn
		storyteller_script = G_settler_controls
	}		
}