/// @description 

if room != r_boss_battle and room != r_boss_battle_second_phase{
	

	var first = instance_position(x,y,o_fail_bullets);
	if (id != first) { instance_destroy(); exit; }

	
	if instance_position(x-32,y,o_fail_bullets){
		instance_destroy();	
	}
	
	if instance_position(x-48,y,o_fail_bullets){
		instance_destroy();	
	}	
	
	if instance_position(x-48-16,y,o_fail_bullets){
		instance_destroy();	
	}		
	
	if instance_position(x-64,y,o_fail_bullets){
		instance_destroy();	
	}

	if instance_position(x-64-16,y,o_fail_bullets){
		instance_destroy();	
	}
	
	if instance_position(x-96,y,o_fail_bullets){
		instance_destroy();	
	}
	
	
}


if cant_move_timer > 0 exit;
squash_timer = 0;
no_damage_timer = SEC*.1;


xdir = lengthdir_x(32,direction_);
ydir = lengthdir_y(32,direction_);


x += xdir;
y += ydir;

image_index += 1;
cant_move_timer = 10;