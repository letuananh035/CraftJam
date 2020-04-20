/// @description Insert description here
// You can write your code in this editor

hovered = false;

selected = -1;

main_menu = ds_list_create();
page = main_menu;

var _play = ds_list_create(),
	_pos = 0;
_play[|0] = "PLAY";
_play[|1] = scr_play;
main_menu[|_pos] = _play;
ds_list_mark_as_list(main_menu,_pos);

var _settings = ds_list_create(),
	_pos = 1;
_settings[|0] = "SETTINGS";
_settings[|1] = scr_settings;
main_menu[|_pos] = _settings;
ds_list_mark_as_list(main_menu,_pos);

var _credits = ds_list_create(),
	_pos = 2;
_credits[|0] = "CREDITS";
_credits[|1] = scr_credits;
main_menu[|_pos] = _credits;
ds_list_mark_as_list(main_menu,_pos);

//settings
settings = ds_list_create();

var _window_size = ds_list_create(),
	_pos = 0;
_window_size[|0] = "WINDOW SIZE";
_window_size[|1] = scr_window_size;
settings[|_pos] = _window_size;
ds_list_mark_as_list(settings,_pos);

var _fullscreen = ds_list_create(),
	_pos = 1;
_fullscreen[|0] = "FULLSCREEN";
_fullscreen[|1] = scr_fullscreen;
settings[|_pos] = _fullscreen;
ds_list_mark_as_list(settings,_pos);

var _return = ds_list_create(),
	_pos = 2;
_return[|0] = "RETURN";
_return[|1] = scr_return;
settings[|_pos] = _return;
ds_list_mark_as_list(settings,_pos);

