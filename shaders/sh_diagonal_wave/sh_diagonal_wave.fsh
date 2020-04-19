//
// Simple passthrough fragment shader
//
varying vec2 v_vPosition;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Time;

//PUT IN THE SIZE AND WIDTH OF THE SPRITE
uniform vec2 Size;
//vec2 Size = vec2(256,128);//OR DO IT MANUALLY HERE
vec2 Wave = vec2(42,.15);//48,5 HEIGHT , AMPLITUDE

void main()
{
    //LINEAR WAVE
   // vec2 Coord = v_vTexcoord + vec2(cos(v_vTexcoord.y*30.0+Time*6.283)/30.0,0);
	
	//FROM TOP TO BOT (strength)
	//vec2 Coord = v_vTexcoord + vec2(cos((v_vPosition.y/Wave.x+Time)*6.2831)*Wave.y,0)/Size*(1.0-v_vTexcoord.y);
    
	//FROM BOT TO TOP
	//vec2 Coord = v_vTexcoord + vec2(cos((v_vPosition.y/Wave.x+Time)*6.2831)*Wave.y,0)/Size*(v_vTexcoord.y);
	
	// DIAGONAL WAVE
	vec2 Coord = v_vTexcoord + vec2(cos(v_vTexcoord.y*30.0+Time*6.283)/30.0,0)*v_vTexcoord.x*0.6+0.4;
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord );
}
