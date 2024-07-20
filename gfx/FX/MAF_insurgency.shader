Includes = {
}

PixelShader =
{
	Samplers =
	{
		TextureOne =
		{
			Index = 0
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "None"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		TextureTwo =
		{
			Index = 1
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "None"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
	}
}

VertexStruct VS_INPUT
{
    float4 vPosition  : POSITION;
    float2 vTexCoord  : TEXCOORD0;
};

VertexStruct VS_OUTPUT
{
    float4  vPosition : PDX_POSITION;
    float2  vTexCoord0 : TEXCOORD0;
};

ConstantBuffer( 0, 0 )
{
	float4x4 WorldViewProjectionMatrix; 
	float4 vFirstColor;
	float4 vSecondColor;
	float CurrentState;
};

VertexShader =
{
	MainCode VertexShader
	[[
		
		VS_OUTPUT main(const VS_INPUT v )
		{
			VS_OUTPUT Out;
		   	Out.vPosition  = mul( WorldViewProjectionMatrix, v.vPosition );
			Out.vTexCoord0  = v.vTexCoord;
			Out.vTexCoord0.y = -Out.vTexCoord0.y;

			return Out;
		}
		
	]]
}

PixelShader =
{
	MainCode PixelColor
	[[
		
		float4 main( VS_OUTPUT v ) : PDX_COLOR
		{
			if( v.vTexCoord0.x <= CurrentState / 2.f )
				return vFirstColor;
			else
				return vSecondColor;
		}
		
	]]

	MainCode PixelTexture
	[[
		
		float4 main( VS_OUTPUT v ) : PDX_COLOR
		{
			float opacity;

			float4 paletteColour1 = tex2D(TextureTwo, float2(0.25, 0));
			float4 paletteColour2 = tex2D(TextureTwo, float2(0.75, 0));

			float4 returnColour = tex2D( TextureOne, v.vTexCoord0.xy );
			returnColour.r = paletteColour1.r;
			returnColour.g = paletteColour1.g;
			returnColour.b = paletteColour1.b;

			float4 returnColourReverse = tex2D( TextureOne, v.vTexCoord0.xy );
			returnColourReverse.r = paletteColour2.r;
			returnColourReverse.g = paletteColour2.g;
			returnColourReverse.b = paletteColour2.b;
			
			opacity = lerp(0, 1, CurrentState) * returnColour.a / returnColour.a;
			
			if (returnColour.a == 0) {
				return float4(0, 0, 0, 0);
			}

			returnColour.a = 1;
			returnColourReverse.a = 1;

			returnColour.rgba = returnColourReverse.rgba * (1 - opacity) + returnColour.rgba * opacity;

			return returnColour;
		}
	]]
}

BlendState BlendState
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "INV_SRC_ALPHA"
}

Effect Color
{
	VertexShader = "VertexShader"
	PixelShader = "PixelColor"
}

Effect Texture
{
	VertexShader = "VertexShader"
	PixelShader = "PixelTexture"
}
