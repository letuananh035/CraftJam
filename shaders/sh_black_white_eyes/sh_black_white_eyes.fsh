varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 AllOnes = vec3(1.0); //Allones = 1.0, 1.0, 1.0

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
    float black = min( dot( step( vec3( 0.01 ), Color.rgb ) , AllOnes) , 1.0);
	Color *= v_vColour; //v_vColor is the draw_set_color of gm like image_blend
    gl_FragColor = Color*vec4(vec3(black),1.0);
}
