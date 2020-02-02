

//argument0: to check
//argument1: been checked
//argument2: index

//show_debug_message("match_three " + string(argument2))

with (ds_list_find_value(argument0, argument2)) {

	var check
	if ( !ds_exists(debug_check_positions, ds_type_list)) debug_check_positions = ds_list_create()
	var target
	//show_debug_message("x: " + string(x) + ", y: " + string(y))

	var check1 = collision_point(x-30,y+20,obj_wall_brick, false, false)//Left
	/*target = instance_create_depth(x-30, y+20, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check1 != noone) check1.image_blend = make_color_rgb(120, 120, 255)	
	else show_debug_message("Check1 failed")
	//show_debug_message("check: " + string(check))
	*/
	check_match(argument0, argument1, check1)

	var check2 = collision_point(x,y-30,obj_wall_brick, false, false)//Top Left
	/*target = instance_create_depth(x, y-30, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check2 != noone) check2.image_blend = make_color_rgb(120, 120, 255)	
	else show_debug_message("Check2 failed")
	//show_debug_message("check: " + string(check))
	//*/
	check_match(argument0, argument1, check2)

	var check3 = collision_point(x+75,y-30,obj_wall_brick, false, false)//Top Right	
	/*target = instance_create_depth(x+75, y-30, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check3 != noone) check3.image_blend = make_color_rgb(120, 120, 255)
	else show_debug_message("Check3 failed")	
	//show_debug_message("check: " + string(check))
	//*/
	check_match(argument0, argument1, check3)

	var check4 = collision_point(x+139,y+20,obj_wall_brick, false, false)//Right	
	/*target = instance_create_depth(x+139, y+20, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check4 != noone) check4.image_blend = make_color_rgb(120, 120, 255)	
	else show_debug_message("Check4 failed")
	//show_debug_message("check: " + string(check))
	//*/
	check_match(argument0, argument1, check4)

	var check5 = collision_point(x+75,y+85,obj_wall_brick, false, false)//Bottom Right	
	/*target = instance_create_depth(x+75, y+85, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check5 != noone) check5.image_blend = make_color_rgb(120, 120, 255)	
	else show_debug_message("Check5 failed")
	//show_debug_message("check: " + string(check))
	//*/
	check_match(argument0, argument1, check5)

	var check6 = collision_point(x,y+85,obj_wall_brick, false, false)//Bottom Left
	/*target = instance_create_depth(x, y+85, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if(check6  != noone) check6.image_blend = make_color_rgb(120, 120, 255)	
	else show_debug_message("Check6 failed")
	//show_debug_message("check: " + string(check))
	//*/
	check_match(argument0, argument1, check6)
	
	ds_list_add(argument1, id)

	//show_debug_message("TARGETS: " + string(ds_list_size(debug_check_positions)))

	if (ds_list_size(argument0) > argument2 + 1) {
	
		match_three(argument0, argument1, argument2 + 1)
	}
}
	

