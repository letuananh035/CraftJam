/// date_current_filename()
// Returns "YYYY-MM-DD hh-mm-ss"
var now = date_current_datetime();
return string_lpad(date_get_year(now), "0", 4)
+ "-" + string_lpad(date_get_month(now), "0", 2)
+ "-" + string_lpad(date_get_day(now), "0", 2)
+ " " + string_lpad(date_get_hour(now), "0", 2)
+ "-" + string_lpad(date_get_minute(now), "0", 2)
+ "-" + string_lpad(date_get_second(now), "0", 2);