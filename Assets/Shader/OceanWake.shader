Shader "OceanWake" {
	Properties {
		_DistortionTexture ("DistortionTexture", 2D) = "white" {}
		_TextureSample11 ("Texture Sample 11", 2D) = "white" {}
		_TextureSample0 ("Texture Sample 0", 2D) = "white" {}
		_WaveEdgeDeform ("WaveEdgeDeform", Float) = 0.1
		_TextureSample4 ("Texture Sample 4", 2D) = "white" {}
		_TextureSample6 ("Texture Sample 6", 2D) = "white" {}
		_TextureSample8 ("Texture Sample 8", 2D) = "white" {}
		_TextureSample10 ("Texture Sample 10", 2D) = "white" {}
		_TextureSample7 ("Texture Sample 7", 2D) = "white" {}
		_TextureSample5 ("Texture Sample 5", 2D) = "white" {}
		_TextureSample1 ("Texture Sample 1", 2D) = "white" {}
		_warpTiling ("warpTiling", Vector) = (2,2,0,0)
		_roundedCrestEdge ("roundedCrestEdge", 2D) = "white" {}
		_offsetTime ("offsetTime", Float) = 0.8
		_overallTime ("overallTime", Float) = 10
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