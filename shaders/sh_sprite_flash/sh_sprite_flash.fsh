//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord; //each pixel
varying vec4 v_vColour; 


uniform float _alpha;
uniform float color_red;
uniform float color_green;
uniform float color_blue;

void main()
{
	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
	
	if (Color.a != 0.0){
			gl_FragColor = vec4(color_red, color_green, color_blue, _alpha);
	}
    
}