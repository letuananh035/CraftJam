/// @description activate_interactable_object(xdir, ydir);
/// @param xdir
/// @param  ydir



var xdir = argument0;
var ydir = argument1;



//is there an object?

var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);



//if we have input and there is an object
if ((o_input.back or o_input.extra) and interactable != noone) {
    with (interactable) {
        event_user(ACTIVATE);
    }
}

