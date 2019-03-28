
float3 pos : POSITION;
float2 uv : UV;
float3 norm : NORMAL;
const matrix4 _MVP;
const texture2D tex1;

float4 VertexMain()
{
	return _MVP * float4(pos, 1);
}

float4[3] FragmentMain()
{
	float4 albedo = texture(tex1, uv);

	return { float4(pos.xyz, 1), float4(norm.xyz, 1), float4(albedo.rgb, 0.5) };
}