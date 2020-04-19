/// @desc load_json(filename)
/// @arg filename


var filename_ = argument0;

var buff = buffer_load(filename_ );
var str = buffer_read(buff, buffer_string);
buffer_delete( buff);


var _json = json_decode( str);
return _json;