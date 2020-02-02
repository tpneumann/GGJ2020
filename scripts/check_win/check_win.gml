if (instance_exists(obj_cracked_brick)) {
	return false
}

var odd_row = true

for (var i = 0; i < 5; i++) {
	if (odd_row) {	
		for (var j = 0; j < 7; j++) {
			if (!collision_point(x + 69 + (128*j), y + 69 + (64*i), obj_wall_brick, false, false)) {
				return false
			}
		}
	}
	
	else {
		for (var j = 0; j < 6; j++) {
			if (!collision_point(x + 133 + (128*j), y + 69 + (64*i), obj_wall_brick, false, false)) {
				return false
			}
		}
	}
	
	odd_row = !odd_row
}

show_debug_message("GAME WIN!")
return true

