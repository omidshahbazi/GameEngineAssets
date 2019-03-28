
float3 pos : POSITION;
const matrix4 _MVP;
float2 uv : UV;
const texture2D tex0;
const texture2D tex1;
const texture2D tex2;

float4 VertexMain()
{
	return _MVP * float4(pos, 1);
}

float4 FragmentMain()
{
	return float4(1, 1, 1, 1) * texture(tex0, uv);
}