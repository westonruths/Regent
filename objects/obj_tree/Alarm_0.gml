/// @description Chopped

hp -= dmg;

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}

if (hp <= 0) {
	repeat(irandom_range(1,4)) {
		instance_create_layer(x+random_range(-3,3),y+random_range(-3,3),"Items",obj_wood)
	}
	instance_destroy()
}