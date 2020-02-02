/// @description Insert description here
// You can write your code in this editor

if(is_thrown)
{
	if (other.brick_type != 0) {
		#region brick collisions
		var newx = other.x, newy = other.y
		var bbox_width = other.bbox_right - other.bbox_left
		//var bbox_height = other.bbox_bottom - other.bbox_top
	
		if (collision_line(other.bbox_left, other.bbox_bottom, other.bbox_left + (bbox_width/2), other.bbox_bottom, obj_next_brick, true, false) != noone)//Bottom Left
		{		
			newx = other.x - 64
			newy = other.y + 64
			show_debug_message("BOTTOM LEFT")
		}
		else if (collision_line(other.bbox_left, other.bbox_top, other.bbox_left, other.bbox_bottom, obj_next_brick, true, false) != noone)//Left
		{
			newx = other.x - 128
			show_debug_message("LEFT")
		} 
		else if (collision_line(other.bbox_left  + (bbox_width/2), other.bbox_bottom, other.bbox_right, other.bbox_bottom, obj_next_brick, true, false) != noone)//Bottom Right
		{
			newx = other.x + 64
			newy = other.y + 64
			show_debug_message("BOTTOM RIGHT")
		}
		else if (collision_line(other.bbox_right, other.bbox_bottom, other.bbox_right, other.bbox_top, obj_next_brick, true, false) != noone) //Right
		{
			newx = other.x + 128
			show_debug_message("RIGHT")
		}
		else
		{
			show_debug_message("Error, no line")
		}
		#endregion
	}
	
	else {
		#region ceiling collisions
		newy = 64
		
		if (collision_line(64, 63, 191, 63, obj_next_brick, false, false)) {
			newx = 64
		}
		
		else if (collision_line(192, 63, 319, 63, obj_next_brick, false, false)) {
			newx = 192
		}
		
		else if (collision_line(320, 63, 447, 63, obj_next_brick, false, false)) {
			newx = 320
		}
		
		else if (collision_line(448, 63, 575, 63, obj_next_brick, false, false)) {
			newx = 448
		}
		
		else if (collision_line(576, 63, 703, 63, obj_next_brick, false, false)) {
			newx = 576
		}
		
		else if (collision_line(704, 63, 831, 63, obj_next_brick, false, false)) {
			newx = 704
		}
		
		else {
			newx = 832
		}
		
		
		#endregion
	}
	
	
	instance_destroy()

	var new_brick = instance_create_layer(newx,newy,"Instances", obj_wall_brick)

	new_brick.brick_type = brick_type
	//show_debug_message("New brick initial type: " + string(brick_type))
	set_wall_brick_color(new_brick)

	#region check for match 3
	//create the lists for bfs
	var bricks_to_check = ds_list_create()
	ds_list_add(bricks_to_check, new_brick)
		
	var bricks_checked = ds_list_create()
	//ds_list_add(bricks_checked, new_brick)
	
	//holds list of bricks to delete
	match_three(bricks_to_check, bricks_checked, 0)
	var placed_brick = true
	//delete matches
	if (ds_list_size(bricks_checked) >= 3) {
		placed_brick = false
		for (var i = 0; i < ds_list_size(bricks_checked); i++) {
			//show_debug_message("newtype: " + string(brick_type) + " desttype: " + string(ds_list_find_value(bricks_checked, i).brick_type))
			var broke_brick = ds_list_find_value(bricks_checked, i)
			show_debug_message("broke brick: " + string(broke_brick))
			if (instance_exists(broke_brick)) {
				instance_create_layer(broke_brick.x, broke_brick.y, "Instances", obj_brick_break)
			}
			
			instance_destroy(broke_brick) 
			audio_play_sound(sound_brick_smashed, 1, false)
		}
	}
	
	if (placed_brick) {
		audio_play_sound(sound_brick_placed, 1, false)
	}	
	
	ds_list_destroy(bricks_to_check)
	ds_list_destroy(bricks_checked)
	
	#endregion
	
	if (check_win()) {
		room_goto(rm_game_win)
	}
	
	check_cracked()
	
	with (obj_brick_thrower) spawn_next_brick()

}