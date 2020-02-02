

//argument0: to check
//argument1: been checked
//argument2: index

//show_debug_message("match_three " + string(argument2))

with (ds_list_find_value(argument0, argument2)) {

	var check
	
	//show_debug_message("x: " + string(x) + ", y: " + string(y))

	check = instance_place(x-1,y,obj_wall_brick)//Left
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y-1,obj_wall_brick)//Top Left
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+65,y-1,obj_wall_brick)//Top Right
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+129,y,obj_wall_brick)//Right
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+65,y+65,obj_wall_brick)//Bottom Right
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y+65,obj_wall_brick)//Bottom Left
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)
	
	ds_list_add(argument1, id)

	if (ds_list_size(argument0) > argument2 + 1) {
	
		match_three(argument0, argument1, argument2 + 1)
	}
}
	

