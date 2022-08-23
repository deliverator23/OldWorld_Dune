Shader "Mohawk/Terrain/TerrainFlowSplat" {
	Properties {
		[Header(Flowmap)] _Flowmap ("Flowmap (RG)", 2D) = "white" {}
		_FlowmapIntensity ("Flowmap Intensity (RG), River (B)", Vector) = (1,1,1,1)
		[Header(Alphamap)] _Alphamap ("Alphamap", 2D) = "white" {}
		[ToggleUI] _AlphamapUseWorldUVs ("Alphamap Use World UVs", Float) = 0
		[ToggleUI] _UseFlowmapAlpha ("Alphamap Use World UVs", Float) = 0
		[Enum(ColorChannel)] _AlphamapChannel ("Alphamap Channel", Float) = 3
		_AlphamapTiling ("Alpha Tiling", Float) = 1
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