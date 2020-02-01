/// @description Insert description here
// You can write your code in this editor

instance_destroy()

//mitigates origin weirdness
update_true_coords()

var newx = other.x, newy = other.y

show_debug_message("x: " + string(x) + "\ntruex: " + string(truex) + "\nother.x: " + string(other.x))

//hitting from the right
if (x > other.x + 128) {
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
}

var new_brick = instance_create_layer(newx,newy,"Instances", obj_wall_brick)

new_brick.brick_type = brick_type
set_wall_brick_color(new_brick)

with (obj_brick_thrower) spawn_next_brick()

