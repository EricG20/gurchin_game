varying vec2 v_texcoord;

uniform sampler2D u_background;
uniform sampler2D u_mask;

void main()
{
    vec4 bg = texture2D(u_background, v_texcoord);
    float mask = texture2D(u_mask, v_texcoord).a;

    gl_FragColor = vec4(bg.rgb, mask);
}
