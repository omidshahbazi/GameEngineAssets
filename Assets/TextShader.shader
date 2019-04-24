
float3 pos : POSITION;
const matrix4 _MVP;

float4 VertexMain()
{
	return _MVP * float4(pos, 1);
}

float4 FragmentMain()
{
	//return float4(pos * 0.005, 1);
	return float4(1, 1, 1, 1);
}