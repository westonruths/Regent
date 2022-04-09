/// @description Grow event
// You can write your code in this editor
if build_counter < max_build_counter || !watered {
	exit
}

grow_counter += 1;
watered = false