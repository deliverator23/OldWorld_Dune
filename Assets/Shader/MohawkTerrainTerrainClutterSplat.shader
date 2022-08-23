Shader "Mohawk/Terrain/TerrainClutterSplat" {
	Properties {
		[Header(Cluttermap)] _Cluttermap ("RGB (Tree, Minor, Major), Alpha (A)", 2D) = "white" {}
		[ToggleUI] _CluttermapUseWorldUVs ("Cluttermap Use World UVs", Float) = 0
		[HDR] _CluttermapTint ("Cluttermap Tint (RGBA)", Vector) = (1,1,1,1)
		[SingleLineVector] _CluttermapValueST ("Cluttermap Intensity (X), Offset (Y)", Vector) = (1,0,0,0)
		[Header(Alphamap)] _Alphamap ("Alphamap", 2D) = "white" {}
		[Enum(ColorChannel)] _AlphamapChannel ("Alphamap Channel", Float) = 0
		[ToggleUI] _AlphamapUseWorldUVs ("Alphamap Use World UVs", Float) = 0
		[SingleLineVector] _AlphamapValueST ("Alphamap Intensity (X), Offset (Y)", Vector) = (1,0,0,0)
		[SingleLineVector] _VertexOffsetWS ("Vertex OFfset (WS)", Vector) = (0,0,0,0)
		_MaterialTiling ("Tiling", Float) = 1
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