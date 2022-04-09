// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function building_costs(_wood, _stone, _built) constructor
{
    original_costs = [_wood, _stone]
	costs = original_costs
	original_construction_health = (_wood + _stone) * 30
	construction_health = original_construction_health
	built = _built
	
	if (built == undefined) { built = false }

	// see if the building is done being filled with needed resources
    static done = function()
    {
        for (var i=0;i<array_length_1d(costs);i++) {
			if costs[i] > 0 { return false }
		}
		
		return true
    }
	
	// produce a new building cost item with original costs
	static new_cost = function(_built)
	{
		built = _built
		if (built == undefined) { built = false }
		return new building_costs(original_costs[0], original_costs[1], built)
	}
	
	// reduce cost because a resource was placed
	static reduce_cost = function(item_holding)
	{
		if (item_holding.object_index == obj_wood) {
			costs[0] -= 1
		}
		
		if (item_holding.object_index == obj_stone) {
			costs[1] -= 1
		}
	}
	
	// return true/false if this building needs additional resources
	static needed = function(haul_target)
	{
		if (haul_target.object_index == obj_wood) && (costs[0] > 0) {
			return true
		}
		
		if (haul_target.object_index == obj_stone) && (costs[1] > 0) {
			return true
		}
		
		return false
	}
		
	
}