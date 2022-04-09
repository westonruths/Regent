/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with(obj_item) {
	if other.id == stored_stockpile {
		stored = false
		stored_stockpile = noone
		x += random_range(-10,10)
		y += random_range(-10,10)
	}
}