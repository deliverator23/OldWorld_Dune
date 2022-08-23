Shader "Mohawk/Transparent/FogOfWarMeshShader" {
	Properties {
		[SingleLineTexture] _FogTexture ("Fog Texture", 2D) = "white" {}
		[SingleLineTexture] _FogTexture2 ("Fog Texture 2", 2D) = "white" {}
		[SingleLineVector] _FogTextureSize ("Fog Texture Size", Vector) = (1,1,1,1)
		[SingleLineTexture] _MainTexture ("Quad Texture", 2D) = "white" {}
		[SingleLineTexture] _HeightmapQuadTexture ("Heightmap Quad Texture", 2D) = "white" {}
		[SingleLineTexture] _HeightmapAddTexture ("Heightmap Add Texture", 2D) = "black" {}
		_QuadSize ("Quad Size", Float) = 10
		_HeightmapQuadSize ("Heightmap Quad Size", Float) = 10
		_HeightmapAddSize ("Heightmap Add Size", Float) = 10
		_HeightmapScaleExponent ("Heightmap Scale (X), Exponent (Y)", Vector) = (1,1,0,0)
		_FogTextureLerp ("Fog Texture Lerp", Float) = 0
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