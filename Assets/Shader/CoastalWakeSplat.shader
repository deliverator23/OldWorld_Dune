Shader "CoastalWakeSplat" {
	Properties {
		_DistortionTexture ("DistortionTexture", 2D) = "white" {}
		_coast_waveMask ("coast_waveMask", 2D) = "white" {}
		_manyfroth ("manyfroth", 2D) = "white" {}
		_manyWaves ("manyWaves", 2D) = "white" {}
		_coast_waveBase ("coast_waveBase", 2D) = "white" {}
		_radialFlow ("radialFlow", 2D) = "white" {}
		_FrothRim ("FrothRim", Float) = 1
		_FrothRimFad ("FrothRimFad", Float) = 1.3
		_FrothRimCon ("FrothRimCon", Float) = 0.56
		_Color0 ("Color 0", Vector) = (0.7735849,0.7735849,0.7735849,0)
		[HideInInspector] _texcoord ("", 2D) = "white" {}
		[HideInInspector] __dirty ("", Float) = 1
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
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}