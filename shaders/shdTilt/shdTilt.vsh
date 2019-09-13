attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 col = in_Colour;
    vec4 object_space_pos = vec4( in_Position, 1.0);

    float top = 1.0 - mod( col.b * 255.0, 2.0); // identify upper vertex
    object_space_pos.z -= 255.0 * col.a * top; //tilt using alpha
    object_space_pos.y += col.a / 10.0; //tweak zfighting
	object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vColour = vec4(col.rgb, 1.0); // lock alpha blend to fully opaque
    v_vTexcoord = in_TextureCoord;      
}