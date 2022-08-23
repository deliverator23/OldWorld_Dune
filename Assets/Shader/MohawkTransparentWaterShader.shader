Shader "Mohawk/Transparent/WaterShader" {
	Properties {
		[Header(Sky)] [NoScaleOffset] _SkyCubemap ("Sky Cubemap (HDR)", Cube) = "grey" {}
		[HDR] _SkyTint ("Sky Tint", Vector) = (1,1,1,1)
		[Header(Ocean)] _SpecularTintOcean ("Specular Color", Vector) = (1,1,1,1)
		_WaterTransmittanceOcean ("Water Transmittance (RGB)", Vector) = (0,0,0,1)
		_WaterScatteringOcean ("Water Scattering (RGB)", Vector) = (0,0,0,1)
		_WaterDensityOcean ("Water Density", Float) = 1
		_WaterLevelOcean ("Water Level", Float) = 0
		_FoamColorOcean ("Foam Color", Vector) = (1,1,1,1)
		[Header(Coast)] _SpecularTintCoast ("Specular Color", Vector) = (1,1,1,1)
		_WaterTransmittanceCoast ("Water Transmittance (RGB)", Vector) = (0,0,0,1)
		_WaterScatteringCoast ("Water Scattering (RGB)", Vector) = (0,0,0,1)
		_WaterDensityCoast ("Water Density", Float) = 1
		_WaterLevelCoast ("Water Level", Float) = 0
		_FoamColorCoast ("Foam Color", Vector) = (1,1,1,1)
		[Header(River)] _SpecularTintRiver ("Specular Color", Vector) = (1,1,1,1)
		_WaterTransmittanceRiver ("Water Transmittance (RGB)", Vector) = (0,0,0,1)
		_WaterScatteringRiver ("Water Scattering (RGB)", Vector) = (0,0,0,1)
		_WaterDensityRiver ("Water Density", Float) = 1
		_WaterLevelRiver ("Water Level", Float) = 0
		_FoamColorRiver ("Foam Color", Vector) = (1,1,1,1)
		[Header(Marsh)] _SpecularTintMarsh ("Specular Color", Vector) = (1,1,1,1)
		_WaterTransmittanceMarsh ("Water Transmittance (RGB)", Vector) = (0,0,0,1)
		_WaterScatteringMarsh ("Water Scattering (RGB)", Vector) = (0,0,0,1)
		_WaterDensityMarsh ("Water Density", Float) = 1
		_WaterLevelMarsh ("Water Level", Float) = 0
		_FoamColorMarsh ("Foam Color", Vector) = (1,1,1,1)
		[Header(Lake)] _SpecularTintLake ("Specular Color", Vector) = (1,1,1,1)
		_WaterTransmittanceLake ("Water Transmittance (RGB)", Vector) = (0,0,0,1)
		_WaterScatteringLake ("Water Scattering (RGB)", Vector) = (0,0,0,1)
		_WaterDensityLake ("Water Density", Float) = 1
		_WaterLevelLake ("Water Level", Float) = 0
		_FoamColorLake ("Foam Color", Vector) = (1,1,1,1)
		[Header(Debug)] [ToggleUI] _EnableDebugColorsWater ("Enable Debug Colors on Water Tiles", Float) = 0
		[Header(Normals)] [Normal] _BumpMap ("Normal Map", 2D) = "bump" {}
		_NoiseMap ("Noise Texture (R)", 2D) = "grey" {}
		_BendFresnel ("Bend Fresnel", Range(0, 1)) = 0
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		_FlowRate ("Flow Rate", Float) = 1
		_FlowCycle ("Flow Cycle", Float) = 1
		[Header(Reflections)] [ToggleUI] _ReflectionsEnabled ("SS Reflection Enabled", Float) = 0
		_SSReflectionBendFactor ("SS Bend Factor", Range(0, 1)) = 0
		[SingleLineVector] _ReflectionFactors ("SS Reflection Thickness, Stride, Steps, Distance", Vector) = (1,3,50,100)
		[SingleLineVector] _ReflectionFactors2 ("SS Reflection Jitter, Padding, Factor, Intensity", Vector) = (1,0.1,1,1)
		[Header(Stencil)] [IntRange] _Stencil ("Stencil Ref", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Float) = 2
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		[Header(CoastalWake)] [Toggle(ENABLE_COASTAL_WAKE)] _CoastalWakeEnabled ("Enable Coastal Wake", Float) = 0
		_manyfroth ("manyfroth", 2D) = "white" {}
		_trim ("trim", Float) = 0.77
		_shoreD ("shoreD", Float) = 3.5
		_seamCon ("seamCon", Float) = 1
		_seamSoften ("seamSoften", Float) = 0.32
		_Speed_Edge ("Speed_Edge", Float) = 0.36
		_BreakSp ("BreakSp", Float) = 0.36
		_Speed_waves ("Speed_waves", Float) = 0.5
		_distortTiling ("distortTiling", Float) = 10
		_speed ("speed", Float) = 0.49
		_intensity ("intensity", Float) = 0.9
		_Shore_Fade ("Shore_Fade", Float) = 1
		_BreakMul ("BreakMul", Float) = 0.87
		_Shore_Con ("Shore_Con", Float) = 0.87
		_frothTilingY ("frothTilingY", Float) = 0.1
		_frothTilingX ("frothTilingX", Float) = 3
		_FrothBendX ("FrothBendX", Float) = 4.85
		_coast_all_shoreWaves ("coast_all_shoreWaves", 2D) = "white" {}
		_BreakSc ("BreakSc", Float) = 1
		_deformTile ("deformTile", Float) = 1
		_DistortionTexture ("Distortion Texture", 2D) = "white" {}
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
}