/// @description 

can_move = true;
hurt_flag = false;
hurt_time = SEC*.3;
hurt_timer = 0;
invincibile_ = false;
ore_object = ore_type.iron_;
alarm[0] = -1;

enum player {
	move,
	cutscene,
	hurt
}

state = player.move;
left_pressed	= 0;
right_pressed	= 0;
up_pressed		= 0;
down_pressed	= 0;
press_check		= 0;//are we pressing any key atm

create(0,0,o_shadow_controller);
weapon_sprite_index = s_weapon_idle;
sprite_index = s_player_idle;
image_speed = 1;
im_index = 0;

move_timer = 0;
move_time = SEC*.25;
step_index = 0;

xx = x div CELL_SIZE;
yy = y div CELL_SIZE;


yscale = 1;
xscale = 1;