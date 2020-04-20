/// @description Insert description here
// You can write your code in this editor

if scale_timer <= scale_time {
	image_xscale = easings("easeoutelastic",.9,.1,scale_time,scale_timer);
	scale_timer++;
}
image_yscale = image_xscale;
draw_self();