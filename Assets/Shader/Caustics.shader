Shader "Caustics" {
	Properties {
		_Caustics1 ("Caustics1", 2D) = "white" {}
		_DistortionTexture ("DistortionTexture", 2D) = "white" {}
		_intensity ("intensity", Float) = 0.5
		_CausticsDirection ("CausticsDirection", Vector) = (0.1,0,0,0)
		_CausticsDirection2 ("CausticsDirection2", Vector) = (0,0.05,0,0)
		_pow ("pow", Float) = 0.5
		_scale ("scale", Float) = 0
		_Color0 ("Color 0", Vector) = (1,1,1,0)
		_distort ("distort", Float) = 0.1
		_Mask ("Mask", 2D) = "white" {}
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