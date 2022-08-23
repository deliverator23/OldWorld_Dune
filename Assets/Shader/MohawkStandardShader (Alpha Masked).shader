Shader "Mohawk/StandardShader (Alpha Masked)" {
	Properties {
		[Header(Base)] [SingleLineTexture(true)] _MainTex ("Albedo (RGB)", 2D) = "white" {}
		[SingleLineVector] _MainTexScaleBias ("Main Texture Scale (XY), Bias (ZW)", Vector) = (1,1,0,0)
		_Color ("Color", Vector) = (1,1,1,1)
		[Header(Normal)] [Toggle(Enable_Bump_Map)] _EnableBumpMap ("Enable Bump Map", Float) = 1
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		[SingleLineTexture] [Normal] _BumpMap ("Normal Map", 2D) = "bump" {}
		[Header(Metalic)] [Toggle(Enable_Metalic_Gloss_Map)] _EnableMetalicGlossMap ("Enable Metalic", Float) = 1
		_Metallic ("Metallic", Range(0, 1)) = 0
		_Roughness ("Roughness", Range(0, 1)) = 0.5
		[BindTextureAction(_Metallic, 1.0, _Roughness, 1.0)] _MetallicGlossMap ("Metallic (R), Roughness (A)", 2D) = "white" {}
		[Header(Occlusion and Emission)] [Toggle(Enable_Occlusion)] _EnableOcclusion ("Enable Occlusion", Float) = 1
		[SingleLineTexture(true)] _OcclusionMap ("Occlusion (R)", 2D) = "white" {}
		[Enum(UV0,0,UV1,1)] _OcclusionUVChannel ("Occlusion Map UV Set", Float) = 0
		_OcclusionStrength ("Occlusion Strength", Range(0, 2)) = 1
		[Header(Overlay)] [Toggle(Enable_Overlay)] _EnableOverlay ("Enable Overlay", Float) = 1
		[SingleLineTexture(true)] _OverlayTex ("Overlay Texture", 2D) = "white" {}
		[ToggleUI] _OverlayBordersMasked ("Mask Overlay Borders", Float) = 0
		_OverlayColor ("Overlay Color", Vector) = (1,1,1,0)
		[SingleLineVector] _OverlaySpriteScaleBias ("Overlay Sprite Scale (xy), Bias (zw)", Vector) = (1,1,0,0)
		[Header(Team Color)] [Toggle(Enable_Team_Color)] _EnableTeamColor ("Enable Team Color", Float) = 1
		[SingleLineTexture] _TeamColorMask ("Team Color Mask (RG)", 2D) = "black" {}
		_PrimaryTeamColor ("Primary Team Color", Vector) = (1,1,1,1)
		_SecondaryTeamColor ("Secondary Team Color", Vector) = (1,1,1,1)
		[Header(Alpha Clipping Cutoff)] [Toggle(Enable_Alpha_Clipping)] _EnableAlphaClipping ("Enable Alpha Clipping", Float) = 1
		_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 2
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		[Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
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
	Fallback "Diffuse"
}