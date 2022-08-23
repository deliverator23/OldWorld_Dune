Shader "Mohawk/Transparent/FogOfWarCloudShader" {
	Properties {
		[SingleLineTexture] _FogTexture ("Fog Mask Texture", 2D) = "grey" {}
		_WorldSpaceToFogSpace ("WorldSpace->FogSpace (ST)", Vector) = (1,1,0,0)
		_VertexSampleWorldOffset ("Vertex Sample World Offset", Float) = 0
		_FogDensity ("Fog Density", Float) = 1
		_HeightDensity ("Height Density", Float) = 1
		[HDR] _FogColor ("Fog Color", Vector) = (1,1,1,1)
		[HDR] _FogColor2 ("Fog Color2", Vector) = (1,1,1,1)
		[Header(Rendering)] [IntRange] _NumSteps ("Num Steps", Range(1, 64)) = 8
		_JitterPercentage ("Jitter Percentage", Range(0, 1)) = 0
		[IntRange] _NumStepsNoTAA ("Num Steps (No TAA)", Range(1, 64)) = 8
		_JitterPercentageNoTAA ("Jitter Percentage (No TAA)", Range(0, 1)) = 0
		[SingleLineTexture] _JitterNoiseTexture ("Jitter Noise", 2D) = "grey" {}
		_MaximumRayDepth ("Maximum Ray Depth", Float) = 100
		_EarlyOutThreshold ("Early Out Threshold", Range(0, 1)) = 0
		[ToggleUI] _NoTAA ("No TAA", Float) = 0
		[ToggleUI] _DebugJitter ("Debug Jitter", Float) = 0
		[Header(Boundary)] [HDR] _BoundaryTint ("Boundary Tint", Vector) = (1,1,1,1)
		_BoundaryNoiseScale ("Boundary Noise Scale", Float) = 1
		[SingleLineVector] _BoundaryNoiseScroll ("Boundary Noise Scroll (XYZ)", Vector) = (0,0,0,0)
		[SingleLineVector] _BoundaryLightWS ("Boundary Light (WS)", Vector) = (0,0,0,0)
		[SingleLineVector] _BoundaryLightXAxis ("Boundary Light XAxis", Vector) = (1,0,0,0)
		[SingleLineVector] _BoundaryLightYAxis ("Boundary Light YAxis", Vector) = (0,1,0,0)
		[SingleLineVector] _BoundaryLightZAxis ("Boundary Light ZAxis", Vector) = (0,0,1,0)
		[HDR] _BoundaryLightColor ("Boundary Light Color", Vector) = (1,1,1,1)
		_BoundaryLightBrightness ("Boundary Light Brightness", Float) = 1
		[Header(Noise)] [SingleLineTexture] _3DNoiseTexture ("3D Noise Texture", 3D) = "black" {}
		[RotationMatrix(_NoiseRotation0, _NoiseRotation1, _NoiseRotation2)] _NoiseRotationAngles ("Noise Rotation (XYZ)", Vector) = (0,0,0,0)
		[HideInInspector] _NoiseRotation0 ("NoiseRotation0", Vector) = (1,0,0,0)
		[HideInInspector] _NoiseRotation1 ("NoiseRotation1", Vector) = (0,1,0,0)
		[HideInInspector] _NoiseRotation2 ("NoiseRotation2", Vector) = (0,0,1,0)
		_NoiseBaseScale ("Noise Base Scale", Float) = 1
		[SingleLineVector] _NoiseBaseScroll ("Noise Base Scroll (XYZ)", Vector) = (0,0,0,0)
		_NoiseDetailScale ("Noise Detail Scale", Float) = 1
		[SingleLineVector] _NoiseDetailScroll ("Noise Detail Scroll (XYZ)", Vector) = (0,0,0,0)
		_NoiseDetailBaseInfluence ("Noise Detail Base Influence", Float) = 1
		[Header(Lighting (High Only))] [SingleLineVector] _LightDirection ("Light Direction (XYZ)", Vector) = (0,1,0,0)
		[IntRange] _ShadowNumSteps ("Shadow Num Steps", Range(0, 32)) = 1
		_ShadowDistance ("Shadow Distance", Float) = 1
		[HDR] _LightColor ("Light Color", Vector) = (1,1,1,1)
		[HDR] _ExtinctionColor ("Extinction Color", Vector) = (1,1,1,1)
		[HDR] _AmbientColor ("Ambient Color", Vector) = (1,1,1,1)
		[Header(Selection Mode)] _UnselectedColor ("Unselected Color", Vector) = (1,1,1,1)
		_UnselectedSaturation ("Unselected Saturation", Range(0, 1)) = 0
		[ToggleUI] _DrawSelection ("Draw Selection", Float) = 0
		[Header(Low Settings)] _LowFogDensity ("Low Fog Density", Float) = 1
		_LowVertexHeightOffset ("Low Vertex Offset", Float) = 0
		[SingleLineVector] _LowFogColorNoiseScaleBias ("Low Color Noise Scale (X), Bias (Y)", Vector) = (1,0,0,0)
		[Header(Debug)] [ToggleUI] _DebugMesh ("Debug Mesh", Float) = 0
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
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
}