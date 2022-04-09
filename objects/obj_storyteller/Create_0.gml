/// @description Insert description here
// You can write your code in this editor

enum story {
	raid,
	save_settler,
	game_over,
	reforest,
}

counter_hrs[story.save_settler] = 140 + irandom_range(-10,50)
counter_hrs[story.raid] = counter_hrs[story.save_settler] + irandom_range(72,120)
counter_hrs[story.game_over] = 1
counter_hrs[story.reforest] = 1


num_goblins = 0

