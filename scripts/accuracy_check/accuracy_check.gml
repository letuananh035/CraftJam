

if other.made_from_boomerang{
	if !instance_exists(o_boomerang) exit;
	with o_boomerang{
		if hit = false{
		hit = true;
		global.ang_accuracy_current++;	
		}
	}

	if o_boomerang.timed_hit_impact = false{
	o_boomerang.timed_hit_impact = true;		
	if other.boomerang_expand{
	global.ang_timed_current++;//we've done a timed hit
	}
	
	if other.perfect_hit{
	shockwave_create_depth(x,y,-10999,0,
	48,120,10,50,5,
	true,c_white,false);			
	global.ang_perfect_hit_current++;
		}
	}
}