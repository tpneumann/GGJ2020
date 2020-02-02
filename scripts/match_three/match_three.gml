

//argument0: to check
//argument1: been checked
//argument2: index


with (ds_list_find_value(argument0, argument2)) {
	
	ds_list_add(argument1, id)

	var check

	check = instance_place(x-5,y+5,obj_wall_brick)//Left
	check_match(argument0, argument1, check)

	check = instance_place(x+5,y-5,obj_wall_brick)//Top Left
	check_match(argument0, argument1, check)

	check = instance_place(x+69,y-5,obj_wall_brick)//Top Right
	check_match(argument0, argument1, check)

	check = instance_place(x+133,y+5,obj_wall_brick)//Right
	check_match(argument0, argument1, check)

	check = instance_place(x+69,y+69,obj_wall_brick)//Bottom Right
	check_match(argument0, argument1, check)

	check = instance_place(x,y+69,obj_wall_brick)//Bottom Left
	check_match(argument0, argument1, check)

	if (ds_list_size(argument0) > argument2 + 1) {
	
		match_three(argument0, argument1, argument2 + 1)
	}
}
	

