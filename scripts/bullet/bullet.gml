///@arg x
///@arg y
///@arg dir
///@arg sound
if !instance_exists(o_player) exit;
var xx = argument0;
var yy = argument1;
var dir = argument2;

//bullet parent

var i = socket[slot];



part_type_sprite(global.pt_p1_quill_after_image,wep[i,BULLET_AFTER_IMAGE],true,true,false);

if i = 6{
		var s = o_sniper_bullet;
	}else{
			s = o_quill;
}
	
	var q = create(xx,yy,s);
	q.bullet_type = i;
	if instance_exists(o_this_is_boss_room){
	q.go_through_walls = true;	
	}
	if global.p1_bounce >0{
	q.bounce = global.p1_bounce;
	q.bounce_damage = true;
	}
	//q.image_xscale = 1*global.p1_big_bullet;
	//q.image_yscale = 1*global.p1_big_bullet;	

	
	q.alarm[11] = global.p1_range * global.p1_range_mod * wep[i,RANGE_MOD]; //range
	q.sprite_index = wep[i, BULLET_SPRITE];
	q.p1 = true;
	q.outline_color = wep[i,BULLET_COLOR];
	q.p1_color = wep[i,BULLET_COLOR];
	
	
	
	q.made_from_player = true;
	#region //direction
	//red_direction = point_direction(x,y,o_red.x,o_red.y);	
	
	var speed_ran = random_range(-global.p1_speed_variance,global.p1_speed_variance);
	
	q.target = dir;
	#endregion
	q.image_index = 1;
	q.damage = global.p1_damage * global.p1_damage_mod * wep[i,DMG_MOD];
	q.hit_flag = false;
	q.deflect = true; 
	
	var player_speed = o_player.speed_*.4;
	
	q.acc_ = global.p1_speed * global.p1_speed_mod * wep[i,SPEED_MOD]+player_speed;
	q.max_speed_ = (global.p1_speed * global.p1_speed_mod * wep[i,SPEED_MOD])+speed_ran+player_speed;
	q.go_through_walls = false;
	q.friction_ = global.p1_bullet_friction;
	return q;