Shader "Mohawk/Debug/TexturePreviewShader" {
	Properties {
		[Enum(Texture2D,0,Texture2DArray,1)] _TextureType ("PreviewSource", Float) = 0
		[HideInInspector] _MainTex ("Unused", 2D) = "" {}
		_Texture2D ("Texture2D", 2D) = "" {}
		[NoScaleOffset] _Texture2DArray ("Texture2DArray", 2DArray) = "" {}
		[IntRange] _Slice ("Slice", Range(0, 1024)) = 0
		_Mip ("Mip", Range(0, 12)) = 0
		[Enum(TexturePreviewChannel)] _Channel ("Channel", Float) = 4
		_Intensity4 ("Color Multiplier", Vector) = (1,1,1,1)
		_Offset4 ("Color Offset", Vector) = (0,0,0,0)
		_Intensity ("Intensity", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}