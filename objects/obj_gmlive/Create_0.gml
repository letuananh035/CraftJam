/// @description Don't forget to place this object in the first room!
if (instance_number(obj_gmlive) > 1) {
	var first = instance_find(obj_gmlive, 0);
	if (id != first) { instance_destroy(); exit; }
}
#macro live_enabled 0

// a workaround for a GM bug where extension doesn't initialize in debug mode:
if (!variable_global_exists("g_live_log_script")) live_preinit();

// change IP/port here if you connect to remote gmlive-server:
live_init(1, "http://localhost:5100", "");

/*
//ROOM SET LIVE

live_blank_object = o_blank;
live_blank_room = r_live;
live_room_updated = room_updated;

room_set_live(r_tutorial,true);
