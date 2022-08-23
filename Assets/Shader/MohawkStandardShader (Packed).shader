Shader "Mohawk/StandardShader (Packed)" {
	Properties {
		[Header(Base)] [SingleLineTexture(true)] _MainTex ("Albedo (RGB)", 2D) = "white" {}
		[SingleLineTexture] [Normal] _BumpMap ("Normal Map", 2D) = "bump" {}
		[Header(Details)] [SingleLineTexture(true)] _MetalicRoughnessOcclusionTeamColor ("Metalic (R), Roughness (G), Occlusion (B), TeamColor (Primary, Secondary packed in A)", 2D) = "white" {}
		[Header(Fields)] _Color ("Color", Vector) = (1,1,1,1)
		_PrimaryTeamColor ("Primary Team Color", Vector) = (1,1,1,1)
		_SecondaryTeamColor ("Secondary Team Color", Vector) = (1,1,1,1)
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		_OcclusionStrength ("Occlusion Strength", Range(0, 2)) = 1
		_Metallic ("Metallic", Range(0, 1)) = 0
		_Roughness ("Roughness", Range(0, 1)) = 0.5
		_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
		[SingleLineVector] _MainTexScaleBias ("Main Texture Scale (XY), Bias (ZW)", Vector) = (1,1,0,0)
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 2
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		[PerRendererData] _AnimTextures ("Animation Textures", 2DArray) = "" {}
		[PerRendererData] _AnimInfo ("Animation Info", Vector) = (0,0,0,0)
		[PerRendererData] _AnimScalar ("Animation Scalar", Vector) = (1,1,1,0)
		[PerRendererData] _AnimTextureIndex ("Animation Texture Index", Float) = -1
		[PerRendererData] _AnimTimeInfo ("Animation Time Info", Vector) = (0,0,0,0)
		[PerRendererData] _CrossfadeAnimTextureIndex ("Crossfade Texture Index", Float) = -1
		[PerRendererData] _CrossfadeAnimTimeInfo ("Animation Time Info", Vector) = (0,0,0,0)
		[PerRendererData] _Transparency ("Transparency", Range(0, 1)) = 1
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
	Fallback "Mohawk/StandardShader (RimLight)"
}