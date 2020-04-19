//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//float Distance = length((Coord-Center)*vec2(1,Aspect));
//float Gradient = smoothstep(Radius,0.0,Distance);

//float Gradient = smoothstep(OuterRadius,InnerRadius,Distance);//Adds an inner radius
//Gradient *= Gradient;//This increase the gradient falloff by squaring.

void main()
{
	//gl_FragColor = PixelColor + Gradient*.2
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
