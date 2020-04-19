//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 lightPos;
uniform float lightRad;
uniform vec3 lightCol;

uniform vec2 texel; //size of pixel

void main()
{
	// We are adding in this pass, so defaults to black
	vec4 c = gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	vec2 lightVec = (v_vTexcoord/texel)-lightPos;
	
	float light_distance = length(lightVec);
	
	if (c.a == 0. || light_distance > lightRad){
		discard;	
	}
	
	c = vec4(0.);
	vec2 rim = vec2(0.0);
	float addedAlpha = 0.0; 
	vec2 aux = vec2(texel.x,0.);
	float value = 0.;
	value = texture2D(gm_BaseTexture, v_vTexcoord + aux).a;
	rim.x -= value;
	addedAlpha += value;
	value = texture2D(gm_BaseTexture, v_vTexcoord - aux).a;
	rim.x += value;
	addedAlpha += value;
 
	aux = vec2(0.,texel.y);
	value = texture2D(gm_BaseTexture, v_vTexcoord + aux).a;
	rim.y -= value;
	addedAlpha += value;
	value = texture2D(gm_BaseTexture, v_vTexcoord - aux).a;
	rim.y += value;
	addedAlpha += value;
	
	if (addedAlpha < 4.){
		gl_FragColor.rgb = vec3(lightCol/255.);
		gl_FragColor.a =  (dot(rim,lightVec)*-1.)*(1.0-light_distance/lightRad)*(0.07);
		
		
	}else{
		discard;
	}
}
