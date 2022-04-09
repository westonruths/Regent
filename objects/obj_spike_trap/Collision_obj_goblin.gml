/// @description Insert description here
// You can write your code in this editor

if round(image_index) == 9 {
	var damage = 50
	with(other) {
		hp -= damage
		var _snd = choose(snd_trap)
		audio_sound_pitch(_snd, choose(0.9,1.0,1.1))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
				
		with(instance_create_layer(x,y-10,"Cover",obj_status)) { 
			text = "Spike! " + string(damage*-1)
			image_blend = c_red
		}
	}		
	image_index = 10
}

image_speed = 1 * global.game_speed

