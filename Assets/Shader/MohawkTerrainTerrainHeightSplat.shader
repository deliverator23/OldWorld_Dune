Shader "Mohawk/Terrain/TerrainHeightSplat" {
	Properties {
		[Header(Heightmap)] _Heightmap ("Heightmap (R), Alpha (A)", 2D) = "white" {}
		[ToggleUI] _HeightmapUseWorldUVs ("Heightmap Use World UVs", Float) = 0
		_MaterialTiling ("Tiling", Float) = 1
		_HeightmapIntensity ("Heightmap Intensity", Float) = 1
		_HeightmapMiddle ("Heightmap Middle", Float) = 0.5
		[Header(Alphamap)] _Alphamap ("Alphamap", 2D) = "white" {}
		[Enum(ColorChannel)] _AlphamapChannel ("Alphamap Channel", Float) = 3
		_AlphamapScaleBias ("Alphamap Intensity (X), Offset (Y)", Vector) = (1,0,0,0)
		[ToggleUI] _AlphamapUseWorldUVs ("Alphamap Use World UVs", Float) = 0
		[ToggleUI] _AlphaBlend ("Alpha Blend", Float) = 1
		[Enum(BlendOp)] _BlendOp ("Blend Op", Float) = 0
		_DebugTessellation ("Debug Tessellation", Range(1, 64)) = 64
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
}