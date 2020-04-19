/// @description 

cant_move_timer--;
if room != r_boss_battle and room != r_boss_battle_second_phase{
	with o_grid{
		var xx = other.x div 32;
		var yy = other.y div 32;
	
		if grid[# xx,yy] = WALL{
			instance_destroy(other);	
		}
	}
}
no_damage_timer--;


if destroy_timer < 0{
	instance_destroy();	
}