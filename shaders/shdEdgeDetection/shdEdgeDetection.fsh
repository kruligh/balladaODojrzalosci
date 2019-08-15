
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 leftC; // Texture coordinate offsets  
varying vec2 rightC; // Texture coordinate offsets 
varying vec2 upC; // Texture coordinate offsets 
varying vec2 downC; // Texture coordinate offsets 


void main()
    {
      
    gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor.a = 1.0; //Best to make sure nothing seems transparent
    
    vec2 c = v_vTexcoord.xy;
    vec4 colour = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 colourL = texture2D(gm_BaseTexture, leftC);
    vec4 colourR = texture2D(gm_BaseTexture, rightC);
    vec4 colourU = texture2D(gm_BaseTexture, upC);
    vec4 colourD = texture2D(gm_BaseTexture, downC);
    
    gl_FragColor = (colourL + colourR +colourU + colourD ) - (4.0 *colour);
    gl_FragColor = vec4(gl_FragColor.r, gl_FragColor.r, gl_FragColor.r, 1.0);
    gl_FragColor.a = 1.0; 
    

}

