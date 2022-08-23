Shader "Mohawk/Impostors/Octahedron Impostor (Mohawk)" {
	Properties {
		[NoScaleOffset] _Albedo ("Albedo & Alpha", 2D) = "white" {}
		[NoScaleOffset] _Normals ("Normals & Depth", 2D) = "white" {}
		[NoScaleOffset] _Specular ("Specular & Smoothness", 2D) = "black" {}
		[NoScaleOffset] _Emission ("Emission & Occlusion", 2D) = "black" {}
		_Color ("Color", Vector) = (1,1,1,1)
		[HideInInspector] _Frames ("Frames", Float) = 16
		[HideInInspector] _ImpostorSize ("Impostor Size", Float) = 1
		[HideInInspector] _Offset ("Offset", Vector) = (0,0,0,0)
		_TextureBias ("Texture Bias", Float) = -1
		_Parallax ("Parallax", Range(-1, 1)) = 1
		[HideInInspector] _DepthSize ("DepthSize", Float) = 1
		_ClipMask ("Clip", Range(0, 1)) = 0.5
		_AI_ShadowBias ("Shadow Bias", Range(0, 2)) = 0.25
		_AI_ShadowView ("Shadow View", Range(0, 1)) = 1
		[Toggle(_HEMI_ON)] _Hemi ("Hemi", Float) = 0
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 2
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