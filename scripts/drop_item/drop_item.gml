// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_item(){
	
	with(item_holding){
		x += 10;
		y += 10;
	}
			
	item_holding = noone
}