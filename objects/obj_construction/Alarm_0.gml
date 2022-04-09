/// @description Construct action

if !build_cost.done() || !place_empty(x, y, obj_pawn) {
	exit
}

build_cost.construction_health -= dmg;

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}