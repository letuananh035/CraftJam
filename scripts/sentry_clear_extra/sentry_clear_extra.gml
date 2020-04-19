/// @description clears the custom context

with(sentry_handler) {
	ds_map_destroy(precomputeExtra);
	precomputeExtra = ds_map_create();
}