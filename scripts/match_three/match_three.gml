

//argument0: to check
//argument1: been checked
//argument2: index

//show_debug_message("match_three " + string(argument2))

with (ds_list_find_value(argument0, argument2)) {

	var check
	
	//show_debug_message("x: " + string(x) + ", y: " + string(y))

	check = instance_place(x-5,y+5,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y-5,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+69,y-5,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+133,y+5,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+69,y+69,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y+69,obj_wall_brick)
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)
	
}
	
ds_list_add(argument1, id)

if (ds_list_size(argument0) > argument2 + 1) {
	
	match_three(argument0, argument1, argument2 + 1)
}


/*
if (check != noone) {
	if (check.brick_type == brick_type) {
		var been_checked = false
	
		for (var i = 0; i < ds_list_size(argument1); i++) {
			if (check == ds_list_find_index(argument1, i)) {
				been_checked = true
			}
		}
	
		if (!been_checked) {
			ds_list_add(argument0, check)
		}
	}
}
//*/