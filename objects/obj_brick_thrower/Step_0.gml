/// @description Insert description here
// You can write your code in this editor

rotate_this_frame = (keyboard_check(vk_left) - keyboard_check(vk_right)) * 2

image_angle += rotate_this_frame
image_angle = clamp(image_angle, -50, 50)

x_offset = 32
y_offset = -140

if(global.can_throw)
{
	next_brick.x = x + (dsin(image_angle) * y_offset) + (dcos(image_angle ) * x_offset)
	next_brick.y = y + ((dcos(image_angle ) * (y_offset)) - (dsin(image_angle) * x_offset))

	next_brick.image_angle = image_angle
}


if (keyboard_check(vk_space) && global.can_throw) {
	toss_brick()
}

