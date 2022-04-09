/// @description Insert description here
// You can write your code in this editor
event_inherited()

if round(image_index) == 0 {
	image_speed = 0	
}

if (image_index >= image_number - 1) {
	instance_destroy()
	
	build_obj = instance_create_layer(x,y,"Buildings",obj_construction);

	with(build_obj) {
		build_cost = new building_costs(0, 1)
		obj_building_type = obj_spike_trap
		name = "Spike Trap"
		detail = "Deals damage to assailants"
	}
}

