Shader "Mohawk/StandardShader (RimLight)" {
	Properties {
		[Header(Base)] [SingleLineTexture(true)] _MainTex ("Albedo (RGB)", 2D) = "white" {}
		[SingleLineTexture] _TeamColorMask ("Team Color Mask (RG)", 2D) = "black" {}
		[SingleLineTexture] [Normal] _BumpMap ("Normal Map", 2D) = "bump" {}
		[BindTextureAction(_Metallic, 1.0, _Roughness, 1.0)] _MetallicGlossMap ("Metallic (R), Roughness (A)", 2D) = "white" {}
		[Header(Occlusion)] [SingleLineTexture(true)] _OcclusionMap ("Occlusion (R)", 2D) = "white" {}
		[Enum(UV0,0,UV1,1)] _OcclusionUVChannel ("Occlusion Map UV Set", Float) = 0
		_OcclusionStrength ("Occlusion Strength", Range(0, 2)) = 1
		[Header(Overlay)] [SingleLineTexture(true)] _OverlayTex ("Overlay Texture", 2D) = "white" {}
		[ToggleUI] _OverlayBordersMasked ("Mask Overlay Borders", Float) = 0
		_OverlayColor ("Overlay Color", Vector) = (1,1,1,0)
		[SingleLineVector] _OverlaySpriteScaleBias ("Overlay Sprite Scale (xy), Bias (zw)", Vector) = (1,1,0,0)
		[Header(Fields)] _Color ("Color", Vector) = (1,1,1,1)
		_PrimaryTeamColor ("Primary Team Color", Vector) = (1,1,1,1)
		_SecondaryTeamColor ("Secondary Team Color", Vector) = (1,1,1,1)
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		_Metallic ("Metallic", Range(0, 1)) = 0
		_Roughness ("Roughness", Range(0, 1)) = 0.5
		_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
		[SingleLineVector] _MainTexScaleBias ("Main Texture Scale (XY), Bias (ZW)", Vector) = (1,1,0,0)
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 2
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		[Header(RimLight)] _RimColor ("Rim Color", Vector) = (1,1,1,1)
		_RimPower ("Rim Power", Float) = 3
		_Transparency ("Transparency", Range(0, 1)) = 1
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