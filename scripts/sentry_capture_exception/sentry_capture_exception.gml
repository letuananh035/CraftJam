/// @description generic sentry event
/// @argument exception the GM exception to log
/// @argument logger* optional logger name

var exception = argument[0]
var logger = (argument_count > 1) ? argument[1] : "logger";

return sentry_capture_message(exception, SENTRY_ERROR, logger, undefined, true);
