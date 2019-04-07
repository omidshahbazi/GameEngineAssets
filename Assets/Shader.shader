
float3 pos : POSITION;
float2 uv : UV;
float3 norm : NORMAL;
float4 worldPos;
const matrix4 _MVP;
const matrix4 _Model;
const texture2D diffuse;

float4 VertexMain()
{
	worldPos = _Model * float4(pos, 1);
	return _MVP * float4(pos, 1);
}

float4[3] FragmentMain()
{
	float4 dif = texture(diffuse, uv);
	//float4 dif = float4(0, 1, 0, 1);

	matrix4 normalMat = transpose(inverse(_Model));
	float4 normal = normalMat * float4(normalize(norm), 1);

	return { worldPos, normal, float4(dif.rgb, 0.5) };
}