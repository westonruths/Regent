/// @description Fire weapon alarm
// You can write your code in this editor
/*
repeat(num_bullets) {
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet)

	if (instance_exists(target) && distance_to_point(target.x,target.y) < range) {
		with(bullet){
			bullet_dmg = other.wpn_dmg;
			image_angle = point_direction(x,y,other.target.x,other.target.y)
			move_towards_point(other.target.x, other.target.y, other.bullet_speed)
		}
	} 
}
*/