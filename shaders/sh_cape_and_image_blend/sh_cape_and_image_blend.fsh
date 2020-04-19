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
vec2 Wave = vec2(42,5.15);//48,5 HEIGHT , AMPLITUDE

uniform float pixelW;
uniform float pixelH;

void main()
{
	

	  // Compute the textel offsets
  vec2 offsetX;
  offsetX.x = pixelW;
  vec2 offsetY;
  offsetY.y = pixelH;
  
  float originAlpha = sign(texture2D(gm_BaseTexture, v_vTexcoord).a);
  float alpha = originAlpha;
  // Combine the alpha from all surrounding textels. 
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
  alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);  
  
  // Only blend with the image_blend factor if the original alpha was 0. 
  // That means the image_blend parameter is the outline color. 

  
	vec2 Coord = v_vTexcoord + vec2(cos((v_vPosition.y/Wave.x+Time)*6.2831)*Wave.y,0)/Size*(v_vTexcoord.y);



	//FROM BOT TO TOP

	// DIAGONAL WAVE
	//vec2 Coord = v_vTexcoord + v_vTexcoord.x*0.6+0.4*(1.0-v_vTexcoord.y)+v_vTexcoord.x*0.6+0.4*(1.-v_vTexcoord.y);
	
	gl_FragColor = (v_vColour * (1.0 - originAlpha)) + 
                 texture2D(gm_BaseTexture, Coord);
	 // Use the computed alpha
	 gl_FragColor.a = alpha;
}
