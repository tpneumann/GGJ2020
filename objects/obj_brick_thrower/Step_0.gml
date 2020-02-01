/// @description Insert description here
// You can write your code in this editor

rotate_this_frame = (keyboard_check(vk_left) - keyboard_check(vk_right)) * 2

image_angle += rotate_this_frame
image_angle = clamp(image_angle, -50, 50)


next_brick.image_angle = image_angle

if (keyboard_check(vk_space) && can_throw) {
	toss_brick()
}

