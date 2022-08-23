Shader "NewGemFX" {
	Properties {
		_GemRefractions ("GemRefractions", Cube) = "white" {}
		_gems_diffuse ("gems_diffuse", 2D) = "white" {}
		_gemReflection ("gemReflection", Float) = 0.9
		_Emissive ("Emissive", Float) = 0.9
		_metal ("metal", Float) = 0.2
		_smooth ("smooth", Float) = 1
		_normal ("normal", Float) = 0.9
		_glare ("glare", Float) = 0
		_gems_Nrm ("gems_Nrm", 2D) = "bump" {}
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