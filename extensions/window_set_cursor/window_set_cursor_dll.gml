#define window_set_cursor_init_dll
// Generated at 2017-02-21 06:09:04 (141ms)

#define window_set_cursor_impl_1
/// @description  window_set_cursor_impl_1(src:Any, ctx:Any, l:int, t:int, w:int, h:int)->PixelData
/// @param src:Any
/// @param  ctx:Any
/// @param  l:int
/// @param  t:int
/// @param  w:int
/// @param  h:int
var src=argument[0];
return src;

#define window_set_cursor_impl
/// @description  window_set_cursor_impl(hwnd:Any, d:PixelData, dw:int, l:int, t:int, w:int, h:int, cx:int, cy:int)
/// @param hwnd:Any
/// @param  d:PixelData
/// @param  dw:int
/// @param  l:int
/// @param  t:int
/// @param  w:int
/// @param  h:int
/// @param  cx:int
/// @param  cy:int
var hwnd=argument[0],d=argument[1],dw=argument[2],l=argument[3],t=argument[4],w=argument[5],h=argument[6],cx=argument[7],cy=argument[8];
var area=w*h;
var size=area*4+ceil(area/8);
var b_buf=buffer_create(size+62,0,1);
var bw=w;
if(bw>255)bw=0;
var bh=h;
if(bh>255)bh=0;
buffer_write(b_buf,buffer_u16,0);
buffer_write(b_buf,buffer_u16,2);
buffer_write(b_buf,buffer_u16,1);
buffer_write(b_buf,buffer_u8,bw);
buffer_write(b_buf,buffer_u8,bh);
buffer_write(b_buf,buffer_u8,0);
buffer_write(b_buf,buffer_u8,0);
buffer_write(b_buf,buffer_u16,cx);
buffer_write(b_buf,buffer_u16,cy);
buffer_write(b_buf,buffer_s32,size+40);
buffer_write(b_buf,buffer_s32,(buffer_tell(b_buf)+4));
buffer_write(b_buf,buffer_s32,40);
buffer_write(b_buf,buffer_s32,w);
buffer_write(b_buf,buffer_s32,h*2);
buffer_write(b_buf,buffer_u16,1);
buffer_write(b_buf,buffer_u16,32);
buffer_write(b_buf,buffer_s32,0);
buffer_write(b_buf,buffer_s32,0);
buffer_write(b_buf,buffer_s32,0);
buffer_write(b_buf,buffer_s32,0);
buffer_write(b_buf,buffer_s32,0);
buffer_write(b_buf,buffer_s32,0);
var maskPos=buffer_tell(b_buf)+area*4;
var maskBit=0;
var dy=h;
while(--dy>=0){
	var dx=0;
	for(var _g=w;dx<_g;dx+=1){
		var dp=((dy+t)*dw+(dx+l)<<2);
		var dr=buffer_peek(d,dp+2,buffer_u8);
		var dg=buffer_peek(d,dp+1,buffer_u8);
		var db=buffer_peek(d,dp,buffer_u8);
		var da=buffer_peek(d,dp+3,buffer_u8);
		buffer_write(b_buf,buffer_u8,db);
		buffer_write(b_buf,buffer_u8,dg);
		buffer_write(b_buf,buffer_u8,dr);
		buffer_write(b_buf,buffer_u8,da);
		var dm;
		if(da==0)dm=(1<<7-maskBit); else dm=0;
		buffer_poke(b_buf,maskPos,buffer_u8,(buffer_peek(b_buf,maskPos,buffer_u8)|dm));
		if(++maskBit==8){
			maskBit=0;
			maskPos+=1;
		}
	}
}
var s="window_set_cursor.cur";
buffer_save(b_buf,s);
window_set_cursor_path_raw(hwnd,game_save_id+s);
buffer_delete(b_buf);

