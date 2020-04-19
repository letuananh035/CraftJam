/// @description 
/// @description 

surf = surface_create(5000, 5000);
surface_set_target(surf);
draw_clear_alpha(c_black,0);
//reset_to_application_surface
surface_reset_target();
turn_off_up = false;	
	
timer = 0;

next_room = noone;

//TOP BOTTOM CLOSE TRANSITION



alarm[0] = SEC*1.4;
enum close {
	ver_close,
	ver_open,
	circle_close,
	circle_open,
	circle_open_close
}

state = close.ver_close;

width = display_get_gui_width();
height = display_get_gui_height();


switch state{
	case close.ver_close: 
		top_box_y = 0;
		bot_box_y = display_get_gui_height();	
		light = false;
		break;
		
	case close.ver_open:
		top_box_y = height/2;
		bot_box_y = height/2;
		light = false;
		break;
		
	case close.circle_close:
		timer = 0;
		time = SEC*1;
		radius = 200;
		light = true;
		
		break;
		
	case close.circle_open:
		timer = 0;
		time = SEC*1;
		radius = 1;
		light = true;
		alarm[2] = SEC*.4;
	case close.circle_open_close:
		radius = 200;
		timer = 0;
		timer2 = 0;
		time = SEC*.5;
		time2 = SEC;
	break;
}
target = noone;
second_target = noone;
alarm[1] = -1;
bubble_flag = false;


restart_room = false;
next_song = noone;