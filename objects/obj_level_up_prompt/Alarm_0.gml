/// @description Insert description here
// You can write your code in this editor

//global.renown += renown_reward

//unpause()

repeat(tech_reward) {
	instance_create_layer(x+sprite_width/2, y + sprite_height/2, "Menu_Objects",obj_tech_point);
}

instance_destroy()