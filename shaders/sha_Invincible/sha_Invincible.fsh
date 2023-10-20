//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	base_colour.rgb = vec3(1, 1, 1);
    gl_FragColor = base_colour;
}
