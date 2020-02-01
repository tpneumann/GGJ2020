/// @description Insert description here
// You can write your code in this editor

if(is_thrown)
{
	var newx = other.x, newy = other.y

	show_debug_message("x: " + string(x) + ", y: " + string(y))
	
	show_debug_message("Other x: " +  string(other.x) + ", Other y: " + string(other.y))
	show_debug_message("Other x2: " +  string(other.x+128) + ", Other y2: " + string(other.y+64))
	show_debug_message("Other bbx: " +  string(other.bbox_left) + ", Other bby: " + string(other.bbox_top))

	//hitting from the right
	/*if (x > other.x + 128) {
		newx = other.x + 128
	}

	//hitting from the bottom right
	else if (x > other.x + 64) {
		newx = other.x + 64
		newy = other.y + 64
	}

	//hitting from the bottom left
	else if (x > other.x) {
		newx = other.x + 64
		newy = other.y + 64
	}

	//hitting from the left
	else {
		newx = other.x - 128
	} */

	if (collision_line(other.bbox_left, other.bbox_top, other.bbox_left, other.bbox_top + 63, obj_next_brick, false, false) != noone)//Left
	{
		newx = other.x - 128
		show_debug_message("LEFT")
	}
	else if (collision_line(other.bbox_left, other.bbox_top + 64, other.bbox_left + 64, other.bbox_top + 64, obj_next_brick, false, false) != noone)//Bottom Left
	{		
		newx = other.x - 64
		newy = other.y + 64
		show_debug_message("BOTTOM LEFT")
	}
	else if (collision_line(other.bbox_left + 64, other.bbox_top + 64, other.bbox_left + 128, other.bbox_top + 64, obj_next_brick, false, false) != noone)//Bottom Right
	{
		newx = other.x + 64
		newy = other.y + 64
		show_debug_message("BOTTOM RIGHT")
	}
	else if (collision_line(other.bbox_left + 128, other.bbox_top + 63, other.bbox_left + 128, other.bbox_top, obj_next_brick, false, false) != noone) //Right
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
			instance_destroy(ds_list_find_index(bricks_checked, i)) 
		}
	}

	with (obj_brick_thrower) spawn_next_brick()

}