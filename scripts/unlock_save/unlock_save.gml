///@arg array_number
///@arg type

///@arg name
///@arg desc
///@arg sprite

unlock[argument0] = true;
with o_game{
	event_user(11);
}


with o_game{
	
	pr_reward_title = argument2;
	pr_reward_description = argument3;
	pr_x_sprite = argument4;
	pr_x_timer = 0;
	pr_reward_show = true;
	pr_state = pr_state_all.start_transition;

	
	var type = argument1;
var i = "";
	switch type{
		case 0: i = "NEW ITEM ADDED TO FUTURE RUNS";
		break;
		case 1: i = "NEW BADGE ADDED TO FUTURE RUNS";
		break;
		case 2: i = "NEW MODE UNLOCKED:";
		break;
		case 3: i = "RACETRACK UNLOCKED IN THE HUB:"
		break;
		case 4: i = "NEW LEGENDARY ADDED TO FUTURE RUNS:";
		break;
	}

pr_reward_type_title = i;
}
save_game();
