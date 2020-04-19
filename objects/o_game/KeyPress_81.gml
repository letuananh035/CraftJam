/// @description 

if room != r_init and room != r_tutorial and room != r_main{
instance_destroy(o_cutscene_parent);
room_restart();
	
}