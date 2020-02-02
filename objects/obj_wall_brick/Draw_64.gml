/// @description Insert description here
// You can write your code in this editor
//var debug_draw_bbox = false

//if(debug_draw_bbox)
//{
//	draw_line_color(bbox_left,bbox_top,bbox_left+128,bbox_top, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
//	draw_line_color(bbox_left+128,bbox_top,bbox_left+128,bbox_top+64, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
//	draw_line_color(bbox_left+128,bbox_top+64,bbox_left,bbox_top+64, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
//	draw_line_color(bbox_left,bbox_top+64,bbox_left,bbox_top, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
//}
////show_debug_message("List size: " + string(ds_list_size(debug_check_positions)))
//for (i = 0; i < ds_list_size(debug_check_positions); i++)
//{
//	target = ds_list_find_value(debug_check_positions, i)	
//	if(target != noone)
//	{
//		draw_circle_color(target.x,target.y, 4, make_color_rgb(0,255 ,0), make_color_rgb(0,255,0), false)
//	}
//	else
//	{
//		show_debug_message("ERROR: EMPTY TARGET")	
//	}
//}