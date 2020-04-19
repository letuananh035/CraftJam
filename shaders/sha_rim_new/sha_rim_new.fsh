varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float light_array[40];
uniform vec2 texel;
uniform float sources;
uniform float max_dist;

vec4 col=vec4(0.);

void main()
{	
	vec2 _pos = v_vTexcoord/texel;
    vec4 tex=texture2D(gm_BaseTexture,v_vTexcoord);
    if (tex.a!=0.)
    {
        for(int i=0;i<int(sources)*5;i+=5)
        {
            float direction=atan(-(light_array[i+1]-_pos.y),light_array[i]-_pos.x);
            float dist=distance(vec2(light_array[i],light_array[i+1]),_pos);
            vec4 tex2=texture2D(gm_BaseTexture,v_vTexcoord+vec2(texel.x*floor(cos(direction)+0.5),texel.y*floor(-sin(direction)+0.5)));
            float alpha=1.-dist/max_dist;
            col+=vec4(light_array[i+2],light_array[i+3],light_array[i+4],alpha)*float(tex2.a==0.);
        }
        gl_FragColor=col;
    }
}