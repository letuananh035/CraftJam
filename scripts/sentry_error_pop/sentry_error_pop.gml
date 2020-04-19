/// @description  Pops UUID from resultMap
/// @argument     uuid	UUID to check
/// @returns      value stored in resultMap

var key = string(argument0);

with (sentry_handler) {
	var retval = ds_map_find_value(errorMap, key);
	if (not is_undefined(retval)) {
		ds_map_delete(errorMap, key);
	}
	return retval;
}

return undefined;