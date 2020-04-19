varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main(){
	vec2 st = v_vTexcoord.xy;
    float pct = 0.0;

    // a. The DISTANCE from the pixel to the center
    pct = distance(st,vec2(0.5));

    // b. The LENGTH of the vector
    //    from the pixel to the center
    // vec2 toCenter = vec2(0.5)-st;
    // pct = length(toCenter);

    // c. The SQUARE ROOT of the vector
    //    from the pixel to the center
    // vec2 tC = vec2(0.5)-st;
    // pct = sqrt(tC.x*tC.x+tC.y*tC.y);

    vec3 color = vec3(pct);
	//gl_FragColor = vec4( 1.-color, 1.0 );
	gl_FragColor = vec4(vec3(1.0), 1.0-pct)*v_vColour;
}
