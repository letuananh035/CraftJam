exit;
audio_ran(a_wally_hurt_2,2.4,2.4,1,1);
//audio_ran(a_porcupine_scream,6.4,6.4,1,1);
if instance_exists(obj_Shockwave){
instance_destroy(obj_Shockwave);	
}
shockwave_create_depth(x,y,-10999,-1,25,320,8,20,10,false,c_white,false);
if instance_exists(o_enemy_parent){
	with o_enemy_parent{
		var  s= create(x,y,o_hitbox_delay);
			s.alarm[0] = point_distance(other.x,other.y,x,y)*.1;
			s.target = id;
	}
}