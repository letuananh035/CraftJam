//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 pos;
uniform float Intensity;
const int Quality = 15;

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
    gl_FragColor = Color * v_vColour;

}
