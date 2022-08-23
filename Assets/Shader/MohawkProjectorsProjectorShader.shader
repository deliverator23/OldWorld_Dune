Shader "Mohawk/Projectors/ProjectorShader" {
	Properties {
		_SourceTexture ("Source Texture", 2D) = "white" {}
		_TextureScroll ("Scroll (RG)", Vector) = (0,0,0,0)
		_Color ("Main Color", Vector) = (1,1,1,1)
		_Tint ("Tint Color", Vector) = (1,1,1,1)
		_ColorMultiplier ("Color Multiplier", Float) = 1
		_AlphaMultiplier ("Alpha Multiplier", Float) = 1
		_BlendAddSlider ("Blend Add Slider", Range(0, 1)) = 0
		[ToggleUI] _ClampProjector ("Clamp Projector", Float) = 0
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

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
}