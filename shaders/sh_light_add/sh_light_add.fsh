varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D lighting;
uniform float intensity;
uniform float darkness;

void main()
{
    vec4 mult = texture2D(lighting, v_vTexcoord);
    vec4 main = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 finalcol;
	vec4 lightcol;



	lightcol.r = mult.r * intensity;
	lightcol.b = mult.b * intensity;
	lightcol.g = mult.g * intensity;




	finalcol.r = mix(main.r,main.r*lightcol.r,mult.r);
	finalcol.g = mix(main.g,main.g*lightcol.g,mult.g);
	finalcol.b = mix(main.b,main.b*lightcol.b,mult.b);
	

	finalcol.a = 1.;
	
//	const float maxValue = 1.; // max value we want a channel to have

//	float scalar = max(main.r, max(main.g, main.b)) / maxValue; // find the maximum channel value and divide by max value to get a ratio of the actual max channel value to the desired max value.
	//scalar = max(scalar, 1.0); // pick the maximum between the above scale and 1.0 (this makes sure we only scale down and not up)

	//finalcol.rgb = main.rgb / scalar; // apply scaling to all channels


	finalcol.r = mix(finalcol.r,finalcol.r*darkness,1.-mult.r);
	finalcol.g = mix(finalcol.g,finalcol.g*darkness,1.-mult.g);
	finalcol.b = mix(finalcol.b,finalcol.b*darkness,1.-mult.b);
            

    gl_FragColor = finalcol;
} 