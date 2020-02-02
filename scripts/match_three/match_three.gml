

//argument0: to check
//argument1: been checked
//argument2: index

//show_debug_message("match_three " + string(argument2))

with (ds_list_find_value(argument0, argument2)) {

	var check
	if ( !ds_exists(debug_check_positions, ds_type_list)) debug_check_positions = ds_list_create()
	var target
	//show_debug_message("x: " + string(x) + ", y: " + string(y))

	check = instance_place(x-1,y,obj_wall_brick)//Left
	target = instance_create_depth(x-1, y, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y-1,obj_wall_brick)//Top Left
	target = instance_create_depth(x, y-1, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+65,y-1,obj_wall_brick)//Top Right	
	target = instance_create_depth(x+65, y-1, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+129,y,obj_wall_brick)//Right	
	target = instance_create_depth(x+129, y, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x+65,y+65,obj_wall_brick)//Bottom Right	
	target = instance_create_depth(x+65, y+65, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if (check != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)

	check = instance_place(x,y+65,obj_wall_brick)//Bottom Left
	target = instance_create_depth(x, y+65, -1, obj_empty)
	ds_list_add(debug_check_positions, target)
	if(check  != noone) check.image_blend = make_color_rgb(0, 0, 255)	
	//show_debug_message("check: " + string(check))
	check_match(argument0, argument1, check)
	
	ds_list_add(argument1, id)

	show_debug_message("TARGETS: " + string(ds_list_size(debug_check_positions)))

	if (ds_list_size(argument0) > argument2 + 1) {
	
		//match_three(argument0, argument1, argument2 + 1)
	}
}
	

