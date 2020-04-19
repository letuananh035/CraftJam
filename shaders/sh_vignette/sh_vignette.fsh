//
// Simple passthrough fragment shader
// 
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//varying vec2 cornerCoord;

uniform float vignette_opacity;
uniform float vignette_outer;
uniform float vignette_falloff;

void main()
{
    
    vec4 base_col    = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    //float len        = length(cornerCoord);
    float len        = length(v_vTexcoord - vec2(0.5));
    float vignette   = smoothstep(vignette_outer, vignette_outer-vignette_falloff, len);
	
	
    base_col.rgb    = mix(base_col.rgb, base_col.rgb * vignette, vignette_opacity);
    
    gl_FragColor    = base_col;
}