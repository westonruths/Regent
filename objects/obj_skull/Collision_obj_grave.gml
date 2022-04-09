/// @description Insert description here
// You can write your code in this editor
print(title)

if !other.filled {
	
	with (other) {
		var _name = other.title
	
		print("name: ", _name)
	
		title = "Grave of " + _name
		detail = "The final resting spot of " + _name
		filled = true
	}
	
	instance_destroy()
	
}