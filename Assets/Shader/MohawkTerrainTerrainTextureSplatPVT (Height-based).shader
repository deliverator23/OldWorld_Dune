Shader "Mohawk/Terrain/TerrainTextureSplatPVT (Height-based)" {
	Properties {
		[Header(Material)] [Enum(TexCoords,0,WorldXZ,1,TriPlanar,2)] _MaterialTextureMapping ("Texture Mapping", Float) = 1
		_MaterialTiling ("Tiling", Float) = 0.1
		[NoScaleOffset] _Albedomap ("Albedo (RGBA)", 2D) = "white" {}
		_AlbedoTint ("Albedo Tint", Vector) = (1,1,1,1)
		[NoScaleOffset] [Normal] _Normalmap ("Normal (Nx,Ny,Nz)", 2D) = "bump" {}
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		[NoScaleOffset] _Metallicmap ("Metal  (R)", 2D) = "black" {}
		[NoScaleOffset] _Roughnessmap ("Roughness (R)", 2D) = "white" {}
		[ToggleUI] _UnTileTextures ("Reduces tiling", Float) = 0
		[NoScaleOffset] _UnTilemap ("Untile Map (R)", 2D) = "black" {}
		_UnTileIntensity ("UnTile Intensity", Float) = 1
		[Header(Mask)] _Alphamap ("Alphamap", 2D) = "white" {}
		[Enum(ColorChannel)] _AlphamapChannel ("Alphamap Channel", Float) = 0
		_AlphamapScaleBias ("Alphamap Intensity (X), Offset (Y)", Vector) = (1,0,0,0)
		[ToggleUI] _AlphamapUseWorldUVs ("Alphamap Use World UVs", Float) = 0
		_MaximumHeight ("Maximum Height", Float) = 1
		[MinMaxSlider] _HeightRange ("Height Range", Vector) = (0,1,0,0)
		_HeightSoftness ("Height Softness", Range(0.01, 1)) = 0.01
		_HeightAlphaStrength ("Height Alpha Strength", Range(0, 1)) = 0.5
		[MinMaxSlider] _SlopeRange ("Slope Range", Vector) = (0,1,0,0)
		_SlopeSoftness ("Slope Softness", Range(0.01, 1)) = 0.01
		_SlopeRadius ("Slope Radius", Range(1, 10)) = 2
		[MinMaxSlider(n1.0, 1.0)] _CurvatureRange ("Curvature Range", Vector) = (-1,1,0,0)
		_CurvatureSoftness ("Curvature Softness", Range(0.01, 1)) = 0.01
		_CurvatureRadius ("Curvature Radius", Range(1, 10)) = 4
		[Header(Debug)] [ToggleUI] _ShowMask ("Show Mask", Float) = 1
		_ShowMaskColor ("Debug Color", Vector) = (0,0,1,1)
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