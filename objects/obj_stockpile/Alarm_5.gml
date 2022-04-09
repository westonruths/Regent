/// @description Game load check storage
// You can write your code in this editor

var items_touching = ds_list_create()
var num = instance_place_list(x, y, obj_item, items_touching, false)


for (var i = 0; i < num; i++) {
	var _item = items_touching[| i]
	
	if _item.stored {continue}
	if num_stored >= 10 { continue }

	if instance_exists(item) {
		if _item.object_index == item.object_index {
			_item.stored = true
			_item.stored_stockpile = id
			_item.x = x
			_item.y = y
		
			num_stored += 1
		}
	} else {
		item = _item
	
		_item.stored = _item
		_item.stored_stockpile = id
		_item.x = x
		_item.y = y
	
		num_stored += 1
	}
		
}

ds_list_destroy(items_touching);
