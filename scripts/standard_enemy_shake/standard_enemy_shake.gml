if other.damage_ > 3{
var time = SEC*.1;	
}else{
time = SEC*.2;	
}
var shake = other.damage_*3;

shake = clamp(shake,0,15);

screenshake_no_ab(shake,time);