/// @description trigger event


instance_destroy();
if cutscene_object != noone{
	create(-50,-50,cutscene_object); //create cutscene
exit;
}

with o_cutscene_parent{
	state_manual_move = true; //move to next cutscene
}