
float3 pos : POSITION;
float2 uv : UV;
float3 norm : NORMAL;
float4 worldPos;
const matrix4 _MVP;
const matrix4 _Model;
const texture2D diffuse;

float4 VertexMain()
{
	worldPos = _MVP * float4(pos, 1);
	return worldPos;
}

float4[3] FragmentMain()
{
	float4 dif = texture(diffuse, uv);

	matrix4 normalMat = transpose(inverse(_Model));
	float4 normal = normalMat * float4(normalize(norm), 1);

	return { worldPos, normal, float4(dif.rgb, 0.5) };
}