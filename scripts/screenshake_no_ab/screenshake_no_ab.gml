///@description screenshake(amount, duration)
///@function screenshake
///@param amount
///@param duration
var amount = argument0;
var duration = argument1;

amount = clamp(amount,0,25);

if (instance_exists(o_camera)) {
	o_camera.screenshake_2 = amount*global.screenshake_percent;
	o_camera.alarm[1] = duration;
}