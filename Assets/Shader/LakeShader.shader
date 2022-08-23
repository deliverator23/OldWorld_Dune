Shader "LakeShader" {
	Properties {
		_Color0 ("Color 0", Vector) = (0,0,0,0)
		_refractamount ("refract amount", Float) = 1
		_farDepth ("farDepth", Float) = 2
		_rippleSpeed ("rippleSpeed", Float) = 0.1
		_bigRippleSPd ("bigRippleSPd", Float) = 0.1
		_BigRippleSpdY ("BigRippleSpdY", Float) = 0.1
		_jitterSpd ("jitterSpd", Float) = 1
		_size_ripple ("size_ripple", Float) = 1
		_ShimSpd ("ShimSpd", Float) = 1
		_Size_wind ("Size_wind", Float) = 0.05
		_bigRippleX ("bigRippleX", Float) = 1
		_bigRippleY ("bigRippleY", Float) = 1
		_Size_simmer ("Size_simmer", Float) = 10
		_shoreDepth ("shoreDepth", Float) = 1
		_Fresnel ("Fresnel", Float) = 1
		_edge ("edge", Float) = 1
		_metal ("metal", Float) = 1
		_smooth ("smooth", Float) = 1
		_frothContrast ("frothContrast", Float) = 1
		_frothEdgePow ("frothEdgePow", Float) = 1
		_froth ("froth", Float) = 1
		_Spec ("Spec", Float) = 1
		_ripplePow ("ripplePow", Float) = 0.5
		_edgeSoftness ("edgeSoftness", Float) = 1
		_DeepSoftness ("DeepSoftness", Float) = 1
		_Color1 ("Color 1", Vector) = (0,0,0,0)
		_normal ("normal", Vector) = (0,0,0,0)
		_Texture0 ("Texture 0", 2D) = "white" {}
		_shimmerSize ("shimmerSize", Float) = 1
		_shimmerHardness ("shimmerHardness", Float) = 10
		_radialFlow ("radialFlow", 2D) = "white" {}
		_manyfroth ("manyfroth", 2D) = "white" {}
		_Color2 ("Color 2", Vector) = (0,0,0,0)
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