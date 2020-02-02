
//argument0: to check
//argument1: been checked
//argument2: the brick to check

if (argument2 != noone) {
	if (argument2.brick_type == brick_type) {
		var been_checked = false
	
		for (var i = 0; i < ds_list_size(argument1); i++) {
			show_debug_message("ds_list_index: " + string(ds_list_find_index(argument1, argument2)))
			if (ds_list_find_index(argument1, argument2) != -1) {
				been_checked = true
			}
		}
	
		if (!been_checked) {
			show_debug_message("Adding to to_check list x: " + string(argument2.x) + ", y: " + string(argument2.y) + "     List new size: " + string(ds_list_size(argument1)+1))
			ds_list_add(argument0, argument2)
		}
	}
}
