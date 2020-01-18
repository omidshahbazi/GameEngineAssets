
float3 pos : POSITION;
const matrix4 _MVP;
const float2 _Time;

float4 VertexMain()
{
	return _MVP * float4(pos, 1);
}

float4 FragmentMain()
{
	return float4(cos(_Time.y), sin(_Time.x), pos.y/64, 1);
	//return float4(1,1,1, 1);
}