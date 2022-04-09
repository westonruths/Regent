/// @description Insert description here
// You can write your code in this editor
if (global.time_pause) {
	exit;
} 

ChangeWeapon(weapon);

if (instance_exists(target) && distance_to_point(target.x,target.y) < range) {
	// Reset fire alarm if a new enemy is in range
	if (current_cd == 0) {
		current_cd = cooldown;
		current_delay = startup;
	}	
	
	// Aim weapon at enemy
	direction = point_direction(x,y,target.x,target.y)
} else {
	current_cd = 0;
	direction = point_direction(x,y,x+45,y+45)
}

if (direction > 90) && (direction < 270) image_yscale = -1; else image_yscale = 1;
image_angle = direction;

if (current_delay == 0) && (projectile != -1) {
	
	repeat(num_bullets) {
		if (instance_exists(target) && distance_to_point(target.x,target.y) < range) {
			with (instance_create_layer(x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),"Instances",projectile)) {
				bullet_dmg = other.damage;
				direction = other.direction;
				image_angle = point_direction(x,y,other.target.x,other.target.y)
				speed = other.bulletspeed;
				original_speed = other.bulletspeed;
			}
		} 
	}
	current_recoil = recoil;
}

current_delay = max(-1,current_delay-1);
if (current_delay == -1) current_cd = max(0,current_cd-1);
current_recoil = max(0,floor(current_recoil*0.8));