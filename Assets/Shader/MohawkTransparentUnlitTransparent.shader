Shader "Mohawk/Transparent/UnlitTransparent" {
	Properties {
		_MainTex ("Base1 (RGB) Trans (A)", 2D) = "white" {}
		_MainTex2 ("Base2 (RGB) Trans (A)", 2D) = "white" {}
		_MainTex3 ("Base3 (RGB) Trans (A)", 2D) = "white" {}
		_Scroll1 ("Scroll 1 (XY)", Vector) = (0,0,0,0)
		_Scroll2 ("Scroll 2 (XY)", Vector) = (0,0,0,0)
		_Scroll3 ("Scroll 3 (XY)", Vector) = (0,0,0,0)
		_Color ("Color", Vector) = (1,1,1,1)
		_ColorMultiplier ("Color Multipler", Float) = 1
		_SoftAlphaDepth ("Soft Alpha Depth", Float) = 1
		_SoftAlphaExponent ("Soft Alpha Exponent", Float) = 1
		[ToggleUI] _Additive ("Additive", Float) = 0
		[ToggleUI] _IgnoreAlpha ("Ignore Alpha", Float) = 0
		[ToggleUI] _ApplyFog ("Apply Fog", Float) = 0
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
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