/// @description Insert description here
// You can write your code in this editor
with(other) {
	hp -= other.dmg
}

with(instance_create_layer(other.x, other.y-10,"Cover",obj_status)) { 
	text = string(other.dmg*-1)
	image_blend = c_red
}


instance_destroy()