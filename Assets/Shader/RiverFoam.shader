Shader "RiverFoam" {
	Properties {
		_DistortionTexture ("DistortionTexture", 2D) = "white" {}
		_manyfroth ("manyfroth", 2D) = "white" {}
		_Foam_contrast ("Foam_contrast", Float) = 3.75
		_FoamRegion ("FoamRegion", 2D) = "white" {}
		_SpeedFoam ("SpeedFoam", Vector) = (0,-0.03,0,0)
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
	//CustomEditor "ASEMaterialInspector"
}