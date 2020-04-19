
var xx = argument0;
var yy = argument1;

if room = r_ran_black_and_white exit;


with o_bush_leaf{
	var dis = point_distance(x,y,xx,yy);
		if dis < 350{
		if z_ = 0{
		z_ = -.01;	
		}
		z_speed_ = (-1*abs(1/dis))*10;
		speed = (-1*abs(1/dis))*100;
		direction = point_direction(x,y,xx,yy);
}
}

if instance_exists(o_dungeon_ground_effects){
	#region//make sure we aren't in the air
	if room = r_ran_three{
		var offset = 32;
		if 
		tilemap_get_at_pixel(o_gm_grid_third.underwall,xx,yy) != 0 or		
		tilemap_get_at_pixel(o_gm_grid_third.underwall,xx-offset,yy) != 0 or
		tilemap_get_at_pixel(o_gm_grid_third.underwall,xx+offset,yy) != 0 or
		tilemap_get_at_pixel(o_gm_grid_third.underwall,xx,yy+offset) != 0 or
		tilemap_get_at_pixel(o_gm_grid_third.underwall,xx,yy-offset) != 0 
		{
			exit;
		}
	}
	#endregion
		with o_dungeon_ground_effects{
			surface_set_target(effect_surface);	
			var spr = s_soot_outline;
			if global.dungeon = D_CLOUDS{
				spr = s_soot_outline_cloud;	
			}
			draw_sprite(spr,0,xx,yy-5);
			surface_reset_target();
			
	}
}

if global.bomb_ember and !instance_exists(o_this_is_boss_room){
	
	if  instance_exists(o_red_dragon){
	exit;	
	}
	create(xx,yy,o_burning_rock);
}

if instance_exists(o_this_is_a_dungeon) and instance_exists(o_player) and point_distance(xx,yy,o_player.x,o_player.y) < 200{
	o_this_is_a_dungeon.v_alpha = random_range(.35,.45);
	o_this_is_a_dungeon.red = random_range(200,255);
	o_this_is_a_dungeon.green = random_range(150,200);
	o_this_is_a_dungeon.blue= 0;
}