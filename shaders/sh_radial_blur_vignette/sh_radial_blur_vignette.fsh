//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 pos;
uniform float Intensity;
const int Quality = 15;

//VIGNETTE UNIFROMS
uniform float vignette_opacity;
uniform float vignette_outer;
uniform float vignette_falloff;




void main()
{
	
	 vec4 Color; 
    float v;
    for (float i=0.0;i<1.0;i+=1.0/float(Quality))
    {
		v = mix(1.,i,Intensity);// v = 0.9+i*0.1;
       //convert "i" to the 0.9 to 1 range
        Color += texture2D(gm_BaseTexture, v_vTexcoord*v+(pos)*(1.0-v));
    }
    Color /= float(Quality);
   
    //float len        = length(cornerCoord);
    float len        = length(v_vTexcoord - vec2(0.5));
    float vignette   = smoothstep(vignette_outer, vignette_outer-vignette_falloff, len);
	
    Color.rgb    = mix(Color.rgb, Color.rgb * vignette, vignette_opacity);
    
    gl_FragColor    = Color* v_vColour;
}
