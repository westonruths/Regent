/// @description Insert description here
// You can write your code in this editor
event_inherited()

if instance_exists(food_item) {
	cooking_counter = 0
	item_cooking = food_item.sprite_index
	instance_destroy(food_item)
	
	detail = "Used to cook raw food \n Currently cooking " + string(food_item.title)
} else {
	detail = "Used to cook raw food"	
}

if cooking_counter >= max_counter {
	item_cooking = noone
	cooking_counter = 0
	instance_create_layer(x, y-4, "Items", obj_meal)
}