/// @description Insert description here
// You can write your code in this editor

with (obj_close_tech_detail) { instance_destroy() }
with (obj_purchase_tech) { instance_destroy() }

with (obj_tech_ui) { selected = false }

selected = true

instance_create_layer(menux+detail_width+35,menuy+12,"Menu_Btns",obj_close_tech_detail);

if (techstatus == 1 && global.tech_points >= techpoints) {
	instance_create_layer(menux+120,menuy+70,"Menu_Btns",obj_purchase_tech);
}