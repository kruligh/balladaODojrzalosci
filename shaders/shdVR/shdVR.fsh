


//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

int switchEyes = 1;

// left
float as = 0.8/1.0;
float w = 1.0;
float h = 1.0;
float scaleFactor = 1.0;

vec2 leftLensCenter      = vec2((w + 0.25 * 0.5)*0.5, h*0.5);
vec2 Scale         = vec2((w/2.0) * scaleFactor, (h/2.0) * scaleFactor * as);
vec2 ScaleIn      = vec2((1.6), (1.6) / as);
vec4 HmdWarpParam   = vec4(1, 0.22, 0.24, 0);

// right
vec2 rightLensCenter      = vec2((w + -0.25 * 0.5)*0.5, h*0.5);

vec2 screenCenter   = vec2(0.5, 0.5);

vec2 HmdWarp(vec2 in01, vec2 lensCenter)
{
   vec2 theta = (in01 - lensCenter) * ScaleIn; // Scales to [-1, 1]
   float rSq = theta.x * theta.x + theta.y * theta.y;
   vec2 rvector = theta * (HmdWarpParam.x + HmdWarpParam.y * rSq +
      HmdWarpParam.z * rSq * rSq +
      HmdWarpParam.w * rSq * rSq * rSq);
   return lensCenter + Scale * rvector;
}

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    vec2 texcoord = v_vTexcoord;
     if (texcoord.x > 0.5) {
         texcoord.x -= 0.5;
      }
      texcoord.x *= 2.0;

      if (v_vTexcoord.x > 0.5) {
        texcoord.x += 0.075;
         vec2 texcoord = HmdWarp(texcoord, rightLensCenter);
          if (any(bvec2(clamp(texcoord,screenCenter-vec2(0.5,0.5), screenCenter+vec2(0.5,0.5)) - texcoord)))
          {
            gl_FragColor = vec4(vec3(0.0), 1.0);
            return;
          }
         vec3 Reye;
         
         Reye = switchEyes == 1 ? texture2D(gm_BaseTexture, texcoord.xy).rgb : texture2D(gm_BaseTexture, texcoord.xy).rgb;
            
         gl_FragColor.rgb = Reye;
         gl_FragColor.a = 1.0;
         
         
      } else {
        texcoord.x -= 0.075;
         vec2 texcoord = HmdWarp(texcoord, leftLensCenter);
          if (any(bvec2(clamp(texcoord,screenCenter-vec2(0.5,0.5), screenCenter+vec2(0.5,0.5)) - texcoord)))
          {
            gl_FragColor = vec4(vec3(0.0), 1.0);
            return;
          }
         vec3 Leye;
         //application_surface,
         Leye = switchEyes == 1 ? texture2D(gm_BaseTexture, texcoord.xy).rgb : texture2D(gm_BaseTexture, texcoord.xy).rgb;
            
         gl_FragColor.rgb = Leye;
         gl_FragColor.a = 1.0;
         }
}
