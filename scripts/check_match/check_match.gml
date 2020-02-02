
//argument0: to check
//argument1: been checked
//argument2: the brick to check

if (argument2 != noone) {
	if (argument2.brick_type == brick_type) {
		var been_checked = false
	
		for (var i = 0; i < ds_list_size(argument1); i++) {
			//show_debug_message("for loop ran" + string(i))
			//show_debug_message("argument1 and argument2" + string(ds_list_find_index(argument1, i)) + " " + string(argument2))
			//if (argument2 == ds_list_find_value(argument1, i)) {
			show_debug_message("ds_list_index: " + string(ds_list_find_index(argument1, argument2)))
			if (ds_list_find_index(argument1, argument2) != -1) {
			
			/*if (argument2.x == ds_list_find_index(argument1, i).x &&
				argument2.y == ds_list_find_index(argument1, i).y ) {
				//*/
				
			//if (argument2.brick_num == ds_list_find_index(argument1, i).brick_num) {
				been_checked = true
			}
		}
	
		if (!been_checked) {
			show_debug_message("Adding to to_check list x: " + string(argument2.x) + ", y: " + string(argument2.y) + "     List new size: " + string(ds_list_size(argument1)+1))
			ds_list_add(argument0, argument2)
		}
	}
}
