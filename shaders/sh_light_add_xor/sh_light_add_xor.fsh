varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D lighting;
uniform float mult;
uniform float darkness;
	
	////////////////////

void main()
{
    //"mult" is a deceptive name so I renamed it to "light".
    vec4 light = texture2D(lighting, v_vTexcoord);
    vec4 main = texture2D(gm_BaseTexture, v_vTexcoord);

    //Lightcol was only used once and it's just a multiplication of a vec4. A float would work better.
    //All channels can be combined at the same time to improve the code and performance a little.
    vec4 finalcol = vec4(mix(main.rgb, main.rgb*light.rgb*mult, light.rgb), 1.0);
    //Darkness constant can be adjust to tweak the ambient lighting.
 
    //Again I combined the separate channel operations to simplify the code.
    finalcol.rgb = mix(finalcol.rgb, finalcol.rgb*darkness, 1.-light.rgb);

    //Output the result.
    gl_FragColor = finalcol;
} 