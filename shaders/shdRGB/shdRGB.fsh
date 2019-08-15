
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Rpos;
uniform float Gpos;
uniform float Bpos;

//https://en.wikipedia.org/wiki/YIQ
const mat3 rgb2yiq = mat3(0.299, 0.587, 0.114, 0.595716, -0.274453, -0.321263, 0.211456, -0.522591, 0.311135);
const mat3 yiq2rgb = mat3(1.0, 0.9563, 0.6210, 1.0, -0.2721, -0.6474, 1.0, -1.1070, 1.7046);

void main()
{
    vec3 yColor = rgb2yiq * (texture2D(gm_BaseTexture, v_vTexcoord).rgb*v_vColour.rgb); 
    vec3 yFinalColor = vec3(yColor.r+Rpos, yColor.g+Gpos, yColor.b+Bpos);
    gl_FragColor = vec4(yiq2rgb*yFinalColor, texture2D(gm_BaseTexture, v_vTexcoord).a);
}
