
if activate_instance_timer > 0{
activate_instance_timer--;	
}
hit_time = SEC*.9
var size_add = 0;
if health_ <= 0 {
	size_add = 1;
}
if hit_timer <= hit_time{
	


    switch object_index{
    case o_porcupine:     
    case o_bat:
    case o_spider:
    case o_antlion_worms: xscale = easings("easeoutelastic",1.5+size_add,-.5-size_add,hit_time,hit_timer);	 break;   
	case o_bear:	hit_time = SEC*.6;
	xscale = easings("easeoutelastic",.7,.3,hit_time,hit_timer);
	break;
	
	case o_nutman: hit_time = SEC*.7;
	default: 


	xscale = easings("easeoutelastic",1.5,-.5,hit_time,hit_timer);	
	
	
	}
	yscale = xscale;
	hit_timer++;
}else if xscale != 1 and yscale != 1 {
xscale = lerp(xscale,1,.1);
yscale = lerp(yscale,1,.1);	
}
