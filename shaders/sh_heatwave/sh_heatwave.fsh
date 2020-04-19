//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
 
const int octaves = 4;
 
//you can change these to uniforms
 
//pass in current_time
uniform float time;
uniform float size;
uniform float speed;
uniform float strength;

uniform float rand_1; //0-25 create event
uniform float rand_2; //75-100 create event

 
//float rand(vec2 coord){
//    return fract(sin(dot(coord, vec2(56,78))*1000.0)*1000.0);
//}
 float rand(vec2 coord){
    return fract(sin(dot(coord, vec2(  rand_1 ,  rand_2 ))*1000.0)*1000.0);
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
    vec2 coord = v_vTexcoord * size;
   
    vec2 noise;
    noise.x = fract(fbm(coord + time * speed)) * strength;
    noise.y = fract(fbm(coord + time * speed)) * strength;
   
   
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + noise);
 
}