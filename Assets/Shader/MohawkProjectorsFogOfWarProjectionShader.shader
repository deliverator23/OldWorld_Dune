Shader "Mohawk/Projectors/FogOfWarProjectionShader" {
	Properties {
		_FogTexture ("Fog Mask Texture", 2D) = "grey" {}
		[HDR] _SelectedColor ("Selected Color", Vector) = (1,1,1,1)
		_UnselectedColor ("Unselected Color", Vector) = (1,1,1,1)
		_UnselectedSaturation ("Unselected Saturation", Range(0, 1)) = 0
		_FogColor1 ("Partial Color", Vector) = (0.5,0.5,0.5,0.5)
		_FogColor2 ("Clear Color", Vector) = (1,1,1,1)
		_Saturation1 ("Partial Saturation", Range(0, 1)) = 1
		_Saturation2 ("Clear Saturation", Range(0, 1)) = 1
		_CloudShadowColor1 ("Partial Cloud Shadow", Vector) = (0.5,0.5,0.5,1)
		_CloudShadowColor2 ("Clear Cloud Shadow", Vector) = (0.5,0.5,0.5,1)
		_FogTransitionRange ("Transition Range", Range(0.01, 0.5)) = 0.1
		_SelectionRangeMin ("Selection Range Min", Range(0, 1)) = 0
		_SelectionRangeMax ("Selection Range Max", Range(0, 1)) = 1
		_MinProjectionHeight ("Min Projection Height", Float) = 0
		_FogCloudHeightFactors ("Fog Cloud Height (X), Offset (Y), Range (Z)", Vector) = (5,0,1,0)
		[ToggleUI] _DrawSelection ("Draw Selection", Float) = 0
		[Header(Minimap Cloud Layer)] [ToggleUI] _DrawClouds ("Draw Clouds", Float) = 0
		_FogCloudTexture ("Cloud Noise Texture", 2D) = "grey" {}
		_FogCloudColor0 ("Cloud Color0", Vector) = (0,0,0,1)
		_FogCloudColor1 ("Cloud Color1", Vector) = (1,1,1,1)
		[MinMaxSlider] _FogCloudEdgeRange ("Cloud Edge Range (Min, Max)", Vector) = (0,1,0,0)
		_FogCloudDarkColor0 ("Cloud Dark Color0", Vector) = (0,0,0,1)
		_FogCloudDarkColor1 ("Cloud Dark Color1", Vector) = (1,1,1,1)
		[MinMaxSlider] _FogCloudDarkEdgeRange ("Cloud Edge Range (Min, Max)", Vector) = (0,1,0,0)
		[NoScaleOffset] _UnTilemap ("Cloud Untile Map (R)", 2D) = "black" {}
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