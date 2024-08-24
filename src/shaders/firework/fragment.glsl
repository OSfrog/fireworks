uniform sampler2D uTexture;
uniform vec3 uColor;

varying vec2 vUv;

void main() {
    // Original texture color
    // vec3 textureColor = texture(uTexture, gl_PointCoord).rgb;
    // gl_FragColor = vec4(textureColor, 1.0);

    // Final color
    float textureAlpha = texture(uTexture, gl_PointCoord).r;
    gl_FragColor = vec4(uColor, textureAlpha);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}
