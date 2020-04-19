/// @description 


switch room {

case r_tutorial:	 create(x,y,o_upgrade_grinding_stone);	break;
case r_boss_battle:		
case r_boss_battle_second_phase: create(x,y,o_upgrade_damage_boss);	break;
default:  create(x,y,o_upgrade_complete); break;
}
if room = r_tutorial{
		
}

if room = r_boss_battle{

}else{

}
