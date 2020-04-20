/// @description 

if keyboard_check_pressed(vk_space){
	space = true;	
}else{
	space = false;	
}
time += .2;
wobble = sin(time*pi*2/SEC);//sine wave that uses eveyrthing