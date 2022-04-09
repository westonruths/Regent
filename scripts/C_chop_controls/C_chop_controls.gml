// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function C_chop_controls(){
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Plant Cutting"
		detail = "Next is the chop plants button. Use this to select what trees you want to chop down. You can also select what plants you want your settlers to harvest."
		prompt_sprite = spr_axe_btn
		storyteller_script = D_build_controls
	}		
}