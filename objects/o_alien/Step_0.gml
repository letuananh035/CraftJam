/// @description 
if scale_timer <= scale_time{
	xscale = easings("easeoutelastic",0,1,scale_time,scale_timer);
	yscale = xscale;
	scale_timer++;
	
}