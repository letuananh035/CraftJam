/// @description  Sleep(Milliseconds)
/// @function  Sleep
/// @param Milliseconds


var sleep_dur = argument0*global.sleep_percent;
var end_time = current_time + sleep_dur;

while (current_time < end_time){};

/*

//old
var endTime = get_timer() + ((argument0*1000));
do {
 
} until(get_timer() >= endTime);


