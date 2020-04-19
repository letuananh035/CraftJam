//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_Shake;

void main()
{
   vec4 c_original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
   vec4 c_new = c_original;
   c_new.r = c_original.r;
   c_new.b = c_original.b;
   c_new.rgb = clamp(c_new.rgb + (u_Shake/ 55.), 0., 1.);
   gl_FragColor = c_new;
  // gl_FragColor.a *= 0.5;
}