//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
 
const int octaves = 4;
 
//you can change these to uniforms
const float size = 30.0;
const float speed = 0.005;
const float strength = 0.01;
 
//pass in current_time
uniform float time;
 
 
float rand(vec2 coord){
    return fract(sin(dot(coord, vec2(56,78))*1000.0)*1000.0);
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
   
    vec2 noise_;
    noise_.x = fract(fbm(coord + time * speed)) * strength;
    noise_.y = fract(fbm(coord + time * speed)) * strength;
   
    vec2 motion = vec2(fbm(coord + time * 0.001));
   
 
   
    float final = (fbm(coord + motion));
   
   
    gl_FragColor = v_vColour * ((vec4(0.0,0.0,0.0,1.0)+texture2D( gm_BaseTexture, (v_vTexcoord + noise_))*final)*texture2D( gm_BaseTexture, (v_vTexcoord + noise_)).a);
 
}
