/// @description Insert description here
// You can write your code in this editor

if(is_thrown)
{
    
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
	
	
	instance_destroy()

	var new_brick = instance_create_layer(newx,newy,"Instances", obj_wall_brick)

	new_brick.brick_type = brick_type
	show_debug_message("New brick initial type: " + string(brick_type))
	set_wall_brick_color(new_brick)

	//create the lists for dfs
	var bricks_to_check = ds_list_create()
	ds_list_add(bricks_to_check, new_brick)
		
	var bricks_checked = ds_list_create()
	//ds_list_add(bricks_checked, new_brick)
	
	//holds list of bricks to delete
	match_three(bricks_to_check, bricks_checked, 0)
	
	//delete matches
	if (ds_list_size(bricks_checked) >= 3) {
		for (var i = 0; i < ds_list_size(bricks_checked); i++) {
			show_debug_message("newtype: " + string(brick_type) + " desttype: " + string(ds_list_find_value(bricks_checked, i).brick_type))
			instance_destroy(ds_list_find_value(bricks_checked, i)) 
		}
	}
	
	ds_list_destroy(bricks_to_check)
	ds_list_destroy(bricks_checked)
	with (obj_brick_thrower) spawn_next_brick()

}