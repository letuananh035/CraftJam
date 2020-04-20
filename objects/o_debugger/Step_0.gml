/// @description 
/// @description MAKE THIS FIRST FOR GMLIVE OT WORK PROPERLY

if debug_mode{
x += 1;
if x > xstart+20{
	room_goto_next();
	instance_destroy();
}	
}else{

	room_goto_next();
	instance_destroy();
}