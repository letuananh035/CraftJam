/// @description add custom tags
/// @argument key key of tag
/// @argument value value of tag

var key = argument0;
var value = argument1;

with(sentry_handler) {
	ds_map_replace(precomputeTags, key, value);
}