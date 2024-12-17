#pragma header
uniform float uBlocksize;
void main()
{
	vec2 blocks = openfl_TextureSize / (uBlocksize + 20);
	gl_FragColor = flixel_texture2D(bitmap, floor(openfl_TextureCoordv * blocks) / blocks);
}
