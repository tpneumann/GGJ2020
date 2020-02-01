

if (argument2 != noone) {
	if (argument2.brick_type == brick_type) {
		var been_checked = false
	
		for (var i = 0; i < ds_list_size(argument1); i++) {
			if (argument2 == ds_list_find_index(argument1, i)) {
				been_checked = true
			}
		}
	
		if (!been_checked) {
			ds_list_add(argument0, argument2)
		}
	}
}
