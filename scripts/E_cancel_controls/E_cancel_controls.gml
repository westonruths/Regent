// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function E_cancel_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Cancel Construction"
		detail = "If you want to cancel construction or task your settlers to deconstruct a building, use this control to issue those commands."
		prompt_sprite = spr_cancel_circle
		storyteller_script = F_hunt_controls
	}		
}