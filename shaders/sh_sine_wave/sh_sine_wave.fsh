varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
vec2 Size = vec2(456,128);
vec2 Wave = vec2(150,10);

void main()
{
    vec2 Coord = v_vTexcoord + vec2(cos((gl_FragCoord.y/Wave.x+Time)*1.2)*Wave.y,0)/Size*(1.0-v_vTexcoord.y);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
}
