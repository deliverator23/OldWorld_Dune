Shader "TilingBasicShader" {
	Properties {
		_XY_speed ("XY_speed", Vector) = (0,0,0,0)
		_XY_Tiling ("XY_Tiling", Vector) = (0,0,0,0)
		_Albedo ("Albedo", 2D) = "white" {}
		_Mask ("Mask", 2D) = "white" {}
		_blendColour ("blendColour", Float) = 0
		_Scale_Offset ("Scale_Offset", Vector) = (1,1,0,0)
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