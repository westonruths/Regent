/// @description Insert description here
// You can write your code in this editor

var collision_object = other

// Drop current item that we are holding
with(item_holding){
	instance_destroy()
}
item_holding = noone