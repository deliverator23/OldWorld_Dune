Shader "Mohawk/UI/ButtonShader" {
	Properties {
		_MainTex ("Sprite Texture", 2D) = "white" {}
		_MaskTex ("Mask Texture", 2D) = "black" {}
		_GlowTex ("Glow Texture", 2D) = "black" {}
		_GlowScrollRate ("Glow Scroll Rate (XY)", Vector) = (0,0,0,0)
		_Color ("Text Color", Vector) = (1,1,1,1)
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
		[ToggleUI] _UseMipMaps ("Use MipMaps", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}