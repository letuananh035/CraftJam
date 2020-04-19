/// @description 


if room = r_boss_battle_second_phase{
	sprite_index = s_bullet_neon_scared;
}	




cant_move_timer = 0;
squash_timer = 0;
squash_time = SEC;
direction_ = 180;
no_damage_timer = 0;
destroy_timer = SEC*8;
image_speed = 0;
image_index = irandom(image_number-1)
alarm[0] = SEC*12;
alarm[1] = SEC*12;

x = x div 32;
y = y div 32;

x *= 32;
y *= 32;

xx = x+16;
yy = y+16;