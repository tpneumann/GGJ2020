
next_brick = instance_create_layer(x,y,"Instances", obj_next_brick)

next_brick_type = irandom_range(1,3)
next_brick.brick_type = next_brick_type
set_next_brick_color(next_brick)
