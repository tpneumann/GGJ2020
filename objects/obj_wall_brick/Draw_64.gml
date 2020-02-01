/// @description Insert description here
// You can write your code in this editor
var debug_draw_bbox = true

if(debug_draw_bbox)
{
	draw_line_color(bbox_left,bbox_top,bbox_left+128,bbox_top, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
	draw_line_color(bbox_left+128,bbox_top,bbox_left+128,bbox_top+64, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
	draw_line_color(bbox_left+128,bbox_top+64,bbox_left,bbox_top+64, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
	draw_line_color(bbox_left,bbox_top+64,bbox_left,bbox_top, make_color_rgb(0,255,0), make_color_rgb(0,255,0))
}

