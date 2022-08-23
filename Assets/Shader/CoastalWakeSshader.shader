Shader "CoastalWakeSshader" {
	Properties {
		_manyfroth ("manyfroth", 2D) = "white" {}
		_trim ("trim", Float) = 0.77
		_shoreD ("shoreD", Float) = 3.5
		_seamCon ("seamCon", Float) = 1
		_seamSoften ("seamSoften", Float) = 0.32
		_Speed_Edge ("Speed_Edge", Float) = 0.36
		_BreakSp ("BreakSp", Float) = 0.36
		_Speed_waves ("Speed_waves", Float) = 0.5
		_distortTiling ("distortTiling", Float) = 10
		_Speed_distort ("Speed_distort", Float) = 1
		_speed ("speed", Float) = 0.49
		_ShoreDistort ("ShoreDistort", Float) = 0.003
		_intensity ("intensity", Float) = 0.9
		_BreakPow ("BreakPow", Float) = 1
		_Shore_Fad ("Shore_Fad", Float) = 1
		_BreakMul ("BreakMul", Float) = 0.87
		_Shore_Con ("Shore_Con", Float) = 0.87
		_frothTilingY ("frothTilingY", Float) = 0.1
		_frothTilingX ("frothTilingX", Float) = 3
		_FrothBendX ("FrothBendX", Float) = 4.85
		_coast_all_shoreWaves ("coast_all_shoreWaves", 2D) = "white" {}
		_BreakSc ("BreakSc", Float) = 1
		_deformTile ("deformTile", Float) = 1
		_Texture0 ("Texture 0", 2D) = "white" {}
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