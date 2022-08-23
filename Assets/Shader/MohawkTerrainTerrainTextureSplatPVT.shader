Shader "Mohawk/Terrain/TerrainTextureSplatPVT" {
	Properties {
		[Header(Base)] [ToggleUI] _MaterialUseWorldUVs ("Use World UVs(A,N,M,R)", Float) = 0
		_MaterialTiling ("Tiling", Float) = 1
		[SingleLineTexture] _Albedomap ("Albedo (RGBA)", 2D) = "white" {}
		[SingleLineTexture] [Normal] _Normalmap ("Normal (Nx,Ny,Nz)", 2D) = "bump" {}
		[SingleLineTexture] _Metallicmap ("Metal  (R)", 2D) = "black" {}
		[SingleLineTexture] _Roughnessmap ("Roughness (R)", 2D) = "white" {}
		[Header(Mask)] [SingleLineTexture] _Alphamap ("Alphamap", 2D) = "white" {}
		[Enum(ColorChannel)] _AlphamapChannel ("Alphamap Channel", Float) = 0
		[ToggleUI] _AlphamapUseWorldUVs ("Alphamap Use World UVs", Float) = 0
		_AlphaTiling ("Alpha Tiling", Float) = 1
		[ToggleUI] _UnTileTextures ("Reduces tiling", Float) = 0
		[SingleLineTexture] _UnTilemap ("Untile Map (R)", 2D) = "black" {}
		_UnTileIntensity ("UnTile Intensity", Float) = 1
		[Header(Fields)] _AlbedoTint ("Albedo Tint", Vector) = (1,1,1,1)
		_Color ("Instance Color", Vector) = (1,1,1,1)
		_NormalMapIntensity ("Normal Map Intensity", Float) = 1
		_Metallic ("Metallic", Range(0, 1)) = 1
		_Roughness ("Roughness", Range(0, 1)) = 1
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