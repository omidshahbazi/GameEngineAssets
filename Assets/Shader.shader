
float3 pos : POSITION;
float2 uv : UV;
float3 norm : NORMAL;
float4 worldPos;
const matrix4 _MVP;
const matrix4 _Model;
const texture2D diffuseTex;

float4 VertexMain()
{
	worldPos = _Model * float4(pos, 1);
	return _MVP * float4(pos, 1);
}

float4[3] FragmentMain()
{
	float4 dif = texture(diffuseTex, uv);

	matrix4 normalMat = transpose(inverse(_Model));
	float4 normal = normalMat * float4(normalize(norm), 1);

	//return { worldPos, normal, float4(dif.rgb, 0.5) };
	return { float4(1, 0, 0, 1), normal, float4(dif.rgb, 0.5) };
}