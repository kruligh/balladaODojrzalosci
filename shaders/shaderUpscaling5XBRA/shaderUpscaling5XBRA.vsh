///@shader shaderUpscaling5XBRA
///@description Vertex shader.
///@uniform {vec2(width, height)} resolution

	attribute vec4 in_Position;
	attribute vec4 in_Colour;
	attribute vec2 in_TextureCoord;

	varying vec4 inputColor;
	varying vec4 inputTexture[8];

	uniform vec2 resolution;
	

	void main() {
	
		float x = 1.0 / resolution.x;
		float y = 1.0 / resolution.y;
	    //     A1 B1 C1
	    //  A0  A  B  C C4
	    //  D0  D  E  F F4
	    //  G0  G  H  I I4
	    //     G5 H5 I5
	    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    
		/// Pass varying to fragment shader
	    inputColor = in_Colour;
	    inputTexture[0] = in_TextureCoord.xyxy;
	    inputTexture[1] = in_TextureCoord.xxxy + vec4(-x, 0, x, -2.0 * y);	// A1 B1 C1
	    inputTexture[2] = in_TextureCoord.xxxy + vec4(-x, 0, x, -y);		// A  B  C
	    inputTexture[3] = in_TextureCoord.xxxy + vec4(-x, 0, x, 0);			// D  E  F
	    inputTexture[4] = in_TextureCoord.xxxy + vec4(-x, 0, x, y);			// G  H  I
	    inputTexture[5] = in_TextureCoord.xxxy + vec4(-x, 0, x, 2.0 * y);	// G5 H5 I5
	    inputTexture[6] = in_TextureCoord.xyyy + vec4(-2.0 * x, -y, 0, y);	// A0 D0 G0
	    inputTexture[7] = in_TextureCoord.xyyy + vec4( 2.0 * x, -y, 0, y);	// C4 F4 I4
	}
	
