//
// fog shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 color = vec3(1.0,1.0,1.0);
const int octaves = 4;
uniform float time;
uniform vec2 random;

float rand(vec2 coord){
	return fract(sin(dot(coord, random)*1000.0)*1000.0);
}

float noise(vec2 coord){
	vec2 i = floor(coord);
	vec2 f = fract(coord);
	
	float a = rand(i);
	float b = rand(i + vec2(1.0,0.0));
	float c = rand(i + vec2(0.0,1.0));
	float d = rand(i + vec2(1.0, 1.0));
	
	vec2 cubic = f * f * (3.0 - 2.0 * f);
	
	return mix( a, b, cubic.x) + (c - a) * cubic.y * (1.0 - cubic.x) + (d - b) * cubic.x *cubic.y;
}

float fbm(vec2 coord){
	float value = 0.0;
	float scale = 0.5;
	
	for(int i = 0; i < octaves; i++){
		value += noise(coord) * scale;
		coord *= 2.0;
		scale *= 0.5;
	}
	return value;
}

void main()
{	
	vec2 coord = v_vTexcoord * 5.0;
	
	float final = fbm(coord);
	
	float range = 0.2;
	if (final > range ){
	gl_FragColor = v_vColour *( vec4(color, (final-range)/(1.0-range)));
	}

}
