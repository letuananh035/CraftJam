/// @description 
event_inherited();
image_speed = 1;
depth = -y-10;

x = align(x);
y = align(y);

alarm[0] = 1; //set this as a wall block

if room != r_tutorial{
	sprite_index = s_torch_palette;
}