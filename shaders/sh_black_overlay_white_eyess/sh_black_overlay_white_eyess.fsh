varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 AllOnes = vec3(1.0); //Allones = 1.0, 1.0, 1.0

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
    float black = min( dot( step( vec3( 0.1 ), Color.rgb ) , AllOnes) , 1.0);
    float Red = step( ( Color.g+Color.b*.4 )*black, Color.r*.032);//orange 44
    Color *= v_vColour; //v_vColor is the draw_set_color of gm like image_blend
    gl_FragColor = mix( vec4( 1.0 ), Color*vec4(vec3(Red),1.0), vec4(vec3(black),1.0) );
}