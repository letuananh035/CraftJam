varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec2 texel = 1./vec2(960,540);
const vec2 light_dir = vec2(0.8,-0.6);
const vec4 light_col = vec4(1.,0.6,0.2,0.0);

void main()
{
    vec4 sample = texture2D(gm_BaseTexture,v_vTexcoord);
    
    vec2 offset = texel*light_dir; //multiply here to increase how strong 
    float light_sample = texture2D(gm_BaseTexture,v_vTexcoord-offset).a;
    float lightness = float(light_sample < sample.a );
    gl_FragColor = (v_vColour+light_col*lightness) * sample;
}