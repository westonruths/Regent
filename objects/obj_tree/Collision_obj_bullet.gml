/// @description Insert description here
// You can write your code in this editor
with(other) {
	instance_destroy();
	other.hp -= bullet_dmg;
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}