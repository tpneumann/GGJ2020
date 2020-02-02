/// @description Insert description here
// You can write your code in this editor
var debug_draw_bbox = false

draw_circle(x, y, 3, false)

if(debug_draw_bbox)
{
	
	draw_sprite_ext(spr_next_brick, 0, x, y, 1, 1, image_angle, make_color_rgb(0,255,255), 125)

	draw_line_color(bbox_left,bbox_top,bbox_right,bbox_top, make_color_rgb(0,255,255), make_color_rgb(0,255,255))
	draw_line_color(bbox_right,bbox_top,bbox_right,bbox_bottom, make_color_rgb(0,255,255), make_color_rgb(0,255,255))
	draw_line_color(bbox_right,bbox_bottom,bbox_left,bbox_bottom, make_color_rgb(0,255,255), make_color_rgb(0,255,255))
	draw_line_color(bbox_left,bbox_bottom,bbox_left,bbox_top, make_color_rgb(0,255,255), make_color_rgb(0,255,255))
}