//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 screenSize;
uniform float time;
uniform sampler2D texture;

void main()
{	
	vec2 uv = gl_FragCoord.xy/screenSize;
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
    gl_FragColor.a = alpha;
	gl_FragColor.rgb = texture2D( texture, uv+vec2(.015*sin(uv.y*time*0.001),.015*sin(uv.x*time*0.001))).rgb * vec3(1.-distance(uv,vec2(.5))*2.);
	
}
