///@description screenshake(amount, duration)
///@function screenshake
///@param amount
///@param duration
var amount = argument0;
var duration = argument1;


amount = clamp(amount,0,25);

with obj_camera{
	shake = amount;
	alarm[1] = duration;
}
