/// @description set a sentry option
/// @argument option name of option
/// @argument value value of option

var option = argument0;
var value = argument1;

with(sentry_handler) {
	ds_map_replace(options, option, value);
}