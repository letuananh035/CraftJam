varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
    float Red = step(Color.g+Color.b*.4, Color.r*.432);//orange 44
    gl_FragColor = Color*vec4(vec3(Red),1.0);
}