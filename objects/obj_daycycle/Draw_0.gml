/// @description Insert description here
// You can write your code in this editor
if(draw_daylight){
	var c = light_colour;
	draw_set_alpha(darkness);
	draw_rectangle_color(0,0, guiWidth, guiHeight, c,c,c,c, false);
	draw_set_alpha(1);
}

