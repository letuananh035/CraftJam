//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
vec2 Size = vec2(456,128);
vec2 Wave = vec2(200,5);

void main()
{
	
	vec2 Coord = v_vTexcoord + vec2(cos((gl_FragCoord.y/Wave.x+Time)*1.2)*Wave.y,0)/Size*(1.0-v_vTexcoord.y);

    vec4 Color = texture2D(gm_BaseTexture,Coord);
    vec3 lum = vec3(0.299,0.587,0.114);
    float bw = dot(Color.rgb,lum);//black and white result
    gl_FragColor = vec4(bw*vec3(0.5,0.4,0.2),Color.a); //sepia color scheme //1.0, .8, .2
    
}