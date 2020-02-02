if (!instance_exists(obj_cracked_brick) && global.cracked_bricks) {
	global.cracked_bricks = false
	
	show_debug_message("check_cracked")
	
	instance_create_layer(0,0,"Instances", obj_now_repair)
}