varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sprite_col = texture2D( gm_BaseTexture, v_vTexcoord );
    if (sprite_col.a < 0.3) { discard; } // discard non opaque sprite pixels
    gl_FragColor = sprite_col * v_vColour;
}