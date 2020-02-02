/// @description Insert description here
// You can write your code in this editor

//prevent sprite from animating
image_speed = 0

//create variable to hold next brick type
next_brick_type = 1

//hold reference to angle to rotate to
rotation_angle = 0

rotate_this_frame = 0

//holds can throw
global.can_throw = false

global.brick_id = 0

//hold reference to next brick
next_brick = 0

//sets new random seed
randomize()

//spawn next brick that thrower is holding
spawn_next_brick()


