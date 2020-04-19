target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;
target_dot_index = 1;
switch global.target_type{
case 0:

	switch global.player{
	
	case 0: 
	image_blend = c_white;
	image_blend_dot = 	c_white;
	target_dot_index = 0;
	target_normal = s_target_yellow;
	target_idle = s_target_idle_yellow;
	target_small = s_target_small_yellow;
	target_small_arc = s_target_small_arc_yellow;
	break;
	case 1:
	target_dot_index = 1;
	image_blend = c_fuchsia;
	image_blend_dot = c_aqua;
	target_normal = s_target;
	target_idle = s_target_idle;
	target_small = s_target_small;
	target_small_arc = s_target_small_arc;
	target_dot_index = 1;

	break;
	case 2:

	image_blend = make_color_rgb(38,217,69);
	image_blend_dot = make_color_rgb(224,12,0);
	target_dot_index = 1;
	target_normal = s_target;
	target_idle = s_target_idle;
	target_small = s_target_small;
	target_small_arc = s_target_small_arc;
	target_normal = s_target;
	target_idle = s_target_idle;
	target_small = s_target_small;
	target_small_arc = s_target_small_arc;

	break
	}
break;
case 1:
target_dot_index = 1;
image_blend_dot = c_white;
target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;
break;
case 2:
switch global.player{
	
case 0: 

image_blend = c_white;
image_blend_dot = 	c_white;
target_dot_index = 0;
target_normal = s_target_yellow;
target_idle = s_target_idle_yellow;
target_small = s_target_small_yellow;
target_small_arc = s_target_small_arc_yellow;
break;
case 1:
target_dot_index = 1;
image_blend = c_fuchsia;
image_blend_dot = c_aqua;
target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;
target_dot_index = 1;

break;
case 2:

image_blend = make_color_rgb(12,46,58);
image_blend_dot = make_color_rgb(224,12,0);
target_dot_index = 1;
target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;
target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;

break
}
break; //color no border


case 3: //white no border
target_dot_index = 1;
image_blend_dot = c_white;
target_normal = s_target;
target_idle = s_target_idle;
target_small = s_target_small;
target_small_arc = s_target_small_arc;
break;

}

sprite_index = target_normal;
/*
target_normal = s_target_yellow;
target_idle = s_target_idle_yellow;
target_small = s_target_small_yellow;
target_small_arc = s_target_small_arc_yellow;