/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

title = ""
detail = ""
prompt_sprite = noone

x_indicator = -100
y_indicator = -100

tutorial_indicator = instance_create_layer(x_indicator, y_indicator, "Menu_Prompt_Btns", obj_tutorial_indicator)

status = 0

instance_create_layer(370-70, 180, "Menu_Prompt_Btns",obj_accept_tutorial);
instance_create_layer(370+70, 180, "Menu_Prompt_Btns",obj_decline_tutorial);