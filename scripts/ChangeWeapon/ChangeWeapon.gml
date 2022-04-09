
function ChangeWeapon(argument0) {
	weapon = argument0;
	var wp_map = weapons[weapon];
	sprite = ds_map_find_value(wp_map,"sprite");
	recoil = wp_map[? "recoil"];
	damage = wp_map[? "damage"]; 
	projectile = wp_map[? "projectile"]; 
	startup = wp_map[? "startup"]; 
	bulletspeed = wp_map[? "bulletspeed"]; 
	length = wp_map[? "length"]; 
	cooldown = wp_map[? "cooldown"];
	range = wp_map[? "range"]; 
	num_bullets = wp_map[? "num_bullets"]; 
}