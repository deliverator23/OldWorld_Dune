Shader "Mohawk/Terrain/TerrainPostProcessing" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_BlurHeight ("BlurHeight (RGB)", 2D) = "white" {}
		_TexelSizeMultiplier ("TexelSizeMultiplier", Float) = 1
		_BlurRadius ("Blur Radius", Range(0, 10)) = 8
		_ClutterDilation ("Clutter Dilation Radius (m)", Float) = 1
		_CurvatureRadius ("Curvature Radius (m)", Float) = 1
		_AlphaChannel ("Alpha Channel Data", 2D) = "white" {}
		_AlphaChannel_BlurTexelSizeMultiplier ("FlowmapAlpha_TexelSizeMultiplier", Float) = 1
		_AlphaChannel_BlurRadius ("FlowmapAlpha_BlurRadius", Range(0, 10)) = 5
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}