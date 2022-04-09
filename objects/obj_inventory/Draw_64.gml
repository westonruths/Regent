/// @description Insert description here
// You can write your code in this editor

for (var i=0; i < array_length(inventory_objects); i++) {
	var _obj = inventory_objects[i]
	
	draw_sprite(object_get_sprite(_obj), 0, drawX, drawY+(i*y_interval))
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_btn);
	draw_set_color(c_white);
	
	draw_text_outline(drawX+15, drawY+(i*y_interval), c_white, c_black, "x " + string(instance_number(_obj)))
}