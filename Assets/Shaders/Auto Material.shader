// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Auto Material"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_Grass("Grass", 2D) = "white" {}
		_GrassNormal("Grass Normal", 2D) = "white" {}
		_GrassMask("Grass Mask", 2D) = "white" {}
		_Dirt("Dirt", 2D) = "white" {}
		_Rock("Rock", 2D) = "white" {}
		_RockNormal("Rock Normal", 2D) = "bump" {}
		_RockMask("Rock Mask", 2D) = "white" {}
		_Snow("Snow", 2D) = "white" {}
		_SnowNormal("Snow Normal", 2D) = "white" {}
		_BlendSharpness("Blend Sharpness", Float) = 30
		_SnowBlendSharpness("Snow Blend Sharpness", Float) = 30
		_BlendBias("Blend Bias", Float) = -12
		_SnowBlendBias("Snow Blend Bias", Float) = -12
		_GrassNear("Grass Near", Float) = 40
		_GrassFar("Grass Far", Float) = 40
		_GrassNormalScale("Grass Normal Scale", Range( 0 , 2)) = 1
		_DirtNear("Dirt Near", Float) = 40
		_DirtFar("Dirt Far", Float) = 40
		_RockNear("Rock Near", Float) = 0.001
		_RockFar("Rock Far", Float) = 0
		_RockNormalScale("Rock Normal Scale", Range( 0 , 2)) = 1
		_SnowNear("Snow Near", Float) = 0.001
		_SnowFar("Snow Far", Float) = 0.001
		_SnowNormalScale("Snow Normal Scale", Range( 0 , 2)) = 1
		_SnowHeight("Snow Height", Float) = 0
		_SnowHardness("Snow Hardness", Float) = 0
		_BlendDistance("Blend Distance", Float) = 0
		_BlendFaloff("Blend Faloff", Float) = 0
		_DirtSize("Dirt Size", Float) = 0
		_Variation("Variation", 2D) = "white" {}
		_Variation1("Variation 1", Float) = 0.2134
		_Variation2("Variation 2", Float) = 0.05341
		_Variation3("Variation 3", Float) = 2
		_T_Perlin_Noise_M("T_Perlin_Noise_M", 2D) = "white" {}
		[ASEEnd]_Masks_4K__ugspafgdy("Masks_4K__ugspafgdy", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		[HideInInspector] [ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 6
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 8
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 40
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 40
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 14
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 10
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector] [ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector] [ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector] [ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector] [ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 1
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Int) = 0
		[HideInInspector] [ToggleUI] _EnableFogOnTransparent("Enable Fog On Transparent", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2
		[HideInInspector] [Enum(Front, 1, Back, 2)] _TransparentCullMode("Transparent Cull Mode", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4
		[HideInInspector] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Float) = 4
		[HideInInspector] [ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector] [ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 0
		[HideInInspector] [ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector] [ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 0
		[HideInInspector] [Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
		#pragma multi_compile_instancing
		#pragma instancing_options renderinglayer

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 Albedo;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
			float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
			//BakedGI
			float3 BakedGI;
			float3 BakedBackGI;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float DepthOffset;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float Alpha;
			float AlphaClipThresholdDepthPrepass;
			float DepthOffset;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float Alpha;
			float AlphaClipThresholdDepthPostpass;
			float DepthOffset;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct DistortionSurfaceDescription //Distortion
		{
			float Alpha;
			float2 Distortion;
			float DistortionBlur;
			float AlphaClipThreshold;
		};

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDHLSL
		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_CullMode]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile _ LIGHT_LAYERS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _Rock;
			sampler2D _Grass;
			sampler2D _Dirt;
			sampler2D _T_Perlin_Noise_M;
			sampler2D _Variation;
			sampler2D _Snow;
			sampler2D _RockNormal;
			sampler2D _GrassNormal;
			sampler2D _SnowNormal;
			sampler2D _RockMask;
			sampler2D _GrassMask;
			sampler2D _Masks_4K__ugspafgdy;
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord5.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float temp_output_1_0_g294 = _RockNear;
				float3 break8_g298 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g298 = (float2(break8_g298.x , break8_g298.y));
				float3 break15_g298 = abs( packedInput.ase_normal );
				float2 appendResult10_g298 = (float2(break8_g298.x , break8_g298.z));
				float2 appendResult11_g298 = (float2(break8_g298.y , break8_g298.z));
				float temp_output_17_0_g294 = _RockFar;
				float3 break8_g295 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g295 = (float2(break8_g295.x , break8_g295.y));
				float3 break15_g295 = abs( packedInput.ase_normal );
				float2 appendResult10_g295 = (float2(break8_g295.x , break8_g295.z));
				float2 appendResult11_g295 = (float2(break8_g295.y , break8_g295.z));
				float clampResult6_g86 = clamp( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - _BlendDistance ) / _BlendFaloff ) , 0.0 , 1.0 );
				float DistanceBlend177 = clampResult6_g86;
				float temp_output_19_0_g294 = DistanceBlend177;
				float4 lerpResult22_g294 = lerp( ( ( ( ( tex2D( _Rock, appendResult9_g298 ) * break15_g298.z ) + ( tex2D( _Rock, appendResult10_g298 ) * break15_g298.y ) ) + ( tex2D( _Rock, appendResult11_g298 ) * break15_g298.x ) ) * ( 1.0 / ( ( break15_g298.x + break15_g298.y ) + break15_g298.z ) ) ) , ( ( ( ( tex2D( _Rock, appendResult9_g295 ) * break15_g295.z ) + ( tex2D( _Rock, appendResult10_g295 ) * break15_g295.y ) ) + ( tex2D( _Rock, appendResult11_g295 ) * break15_g295.x ) ) * ( 1.0 / ( ( break15_g295.x + break15_g295.y ) + break15_g295.z ) ) ) , temp_output_19_0_g294);
				float4 temp_output_382_0 = lerpResult22_g294;
				float temp_output_1_0_g284 = _GrassNear;
				float3 break8_g288 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g288 = (float2(break8_g288.x , break8_g288.y));
				float3 break15_g288 = abs( packedInput.ase_normal );
				float2 appendResult10_g288 = (float2(break8_g288.x , break8_g288.z));
				float2 appendResult11_g288 = (float2(break8_g288.y , break8_g288.z));
				float temp_output_17_0_g284 = _GrassFar;
				float3 break8_g285 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g285 = (float2(break8_g285.x , break8_g285.y));
				float3 break15_g285 = abs( packedInput.ase_normal );
				float2 appendResult10_g285 = (float2(break8_g285.x , break8_g285.z));
				float2 appendResult11_g285 = (float2(break8_g285.y , break8_g285.z));
				float temp_output_19_0_g284 = DistanceBlend177;
				float4 lerpResult22_g284 = lerp( ( ( ( ( tex2D( _Grass, appendResult9_g288 ) * break15_g288.z ) + ( tex2D( _Grass, appendResult10_g288 ) * break15_g288.y ) ) + ( tex2D( _Grass, appendResult11_g288 ) * break15_g288.x ) ) * ( 1.0 / ( ( break15_g288.x + break15_g288.y ) + break15_g288.z ) ) ) , ( ( ( ( tex2D( _Grass, appendResult9_g285 ) * break15_g285.z ) + ( tex2D( _Grass, appendResult10_g285 ) * break15_g285.y ) ) + ( tex2D( _Grass, appendResult11_g285 ) * break15_g285.x ) ) * ( 1.0 / ( ( break15_g285.x + break15_g285.y ) + break15_g285.z ) ) ) , temp_output_19_0_g284);
				float temp_output_1_0_g289 = _DirtNear;
				float3 break8_g293 = ( ase_worldPos * temp_output_1_0_g289 );
				float2 appendResult9_g293 = (float2(break8_g293.x , break8_g293.y));
				float3 break15_g293 = abs( packedInput.ase_normal );
				float2 appendResult10_g293 = (float2(break8_g293.x , break8_g293.z));
				float2 appendResult11_g293 = (float2(break8_g293.y , break8_g293.z));
				float temp_output_17_0_g289 = _DirtFar;
				float3 break8_g290 = ( ase_worldPos * temp_output_17_0_g289 );
				float2 appendResult9_g290 = (float2(break8_g290.x , break8_g290.y));
				float3 break15_g290 = abs( packedInput.ase_normal );
				float2 appendResult10_g290 = (float2(break8_g290.x , break8_g290.z));
				float2 appendResult11_g290 = (float2(break8_g290.y , break8_g290.z));
				float temp_output_19_0_g289 = DistanceBlend177;
				float4 lerpResult22_g289 = lerp( ( ( ( ( tex2D( _Dirt, appendResult9_g293 ) * break15_g293.z ) + ( tex2D( _Dirt, appendResult10_g293 ) * break15_g293.y ) ) + ( tex2D( _Dirt, appendResult11_g293 ) * break15_g293.x ) ) * ( 1.0 / ( ( break15_g293.x + break15_g293.y ) + break15_g293.z ) ) ) , ( ( ( ( tex2D( _Dirt, appendResult9_g290 ) * break15_g290.z ) + ( tex2D( _Dirt, appendResult10_g290 ) * break15_g290.y ) ) + ( tex2D( _Dirt, appendResult11_g290 ) * break15_g290.x ) ) * ( 1.0 / ( ( break15_g290.x + break15_g290.y ) + break15_g290.z ) ) ) , temp_output_19_0_g289);
				float2 temp_cast_0 = (_DirtSize).xx;
				float2 texCoord237 = packedInput.ase_texcoord5.xy * temp_cast_0 + float2( 0,0 );
				float4 DirtBlend255 = tex2D( _T_Perlin_Noise_M, texCoord237 );
				float4 lerpResult251 = lerp( lerpResult22_g284 , lerpResult22_g289 , DirtBlend255);
				float2 temp_cast_1 = (_Variation1).xx;
				float2 texCoord273 = packedInput.ase_texcoord5.xy * temp_cast_1 + float2( 0,0 );
				float2 temp_cast_2 = (_Variation2).xx;
				float2 texCoord271 = packedInput.ase_texcoord5.xy * temp_cast_2 + float2( 0,0 );
				float2 temp_cast_3 = (_Variation3).xx;
				float2 texCoord278 = packedInput.ase_texcoord5.xy * temp_cast_3 + float2( 0,0 );
				float3 lerpResult274 = lerp( float3(0.5,0.5,0.5) , float3( 1,1,1 ) , ( ( tex2D( _Variation, texCoord273 ).r + 0.5 ) * ( ( tex2D( _Variation, texCoord271 ).r + 0.5 ) * ( tex2D( _Variation, texCoord278 ).r + 0.5 ) ) ));
				float3 Variation284 = lerpResult274;
				float3 normalizeResult38_g316 = normalize( float3( 0,1,0 ) );
				float dotResult37_g316 = dot( normalWS , normalizeResult38_g316 );
				float temp_output_88_0_g316 = _BlendSharpness;
				float clampResult46_g316 = clamp( ( ( dotResult37_g316 * temp_output_88_0_g316 ) + ( _BlendBias - ( temp_output_88_0_g316 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_392_87 = clampResult46_g316;
				float4 lerpResult77 = lerp( temp_output_382_0 , ( lerpResult251 * float4( Variation284 , 0.0 ) ) , temp_output_392_87);
				float temp_output_1_0_g299 = _SnowNear;
				float3 break8_g303 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g303 = (float2(break8_g303.x , break8_g303.y));
				float3 break15_g303 = abs( packedInput.ase_normal );
				float2 appendResult10_g303 = (float2(break8_g303.x , break8_g303.z));
				float2 appendResult11_g303 = (float2(break8_g303.y , break8_g303.z));
				float temp_output_17_0_g299 = _SnowFar;
				float3 break8_g300 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g300 = (float2(break8_g300.x , break8_g300.y));
				float3 break15_g300 = abs( packedInput.ase_normal );
				float2 appendResult10_g300 = (float2(break8_g300.x , break8_g300.z));
				float2 appendResult11_g300 = (float2(break8_g300.y , break8_g300.z));
				float temp_output_19_0_g299 = DistanceBlend177;
				float4 lerpResult22_g299 = lerp( ( ( ( ( tex2D( _Snow, appendResult9_g303 ) * break15_g303.z ) + ( tex2D( _Snow, appendResult10_g303 ) * break15_g303.y ) ) + ( tex2D( _Snow, appendResult11_g303 ) * break15_g303.x ) ) * ( 1.0 / ( ( break15_g303.x + break15_g303.y ) + break15_g303.z ) ) ) , ( ( ( ( tex2D( _Snow, appendResult9_g300 ) * break15_g300.z ) + ( tex2D( _Snow, appendResult10_g300 ) * break15_g300.y ) ) + ( tex2D( _Snow, appendResult11_g300 ) * break15_g300.x ) ) * ( 1.0 / ( ( break15_g300.x + break15_g300.y ) + break15_g300.z ) ) ) , temp_output_19_0_g299);
				float3 normalizeResult38_g315 = normalize( float3( 0,1,0 ) );
				float dotResult37_g315 = dot( normalWS , normalizeResult38_g315 );
				float temp_output_88_0_g315 = _SnowBlendSharpness;
				float clampResult46_g315 = clamp( ( ( dotResult37_g315 * temp_output_88_0_g315 ) + ( _SnowBlendBias - ( temp_output_88_0_g315 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_391_87 = clampResult46_g315;
				float4 lerpResult367 = lerp( temp_output_382_0 , lerpResult22_g299 , temp_output_391_87);
				float temp_output_12_0_g270 = saturate( ( ( ase_worldPos.y - _SnowHeight ) * _SnowHardness ) );
				float4 lerpResult10_g270 = lerp( lerpResult77 , lerpResult367 , temp_output_12_0_g270);
				
				float3 break8_g296 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g296 = (float2(break8_g296.x , break8_g296.y));
				float temp_output_7_0_g294 = _RockNormalScale;
				float temp_output_27_0_g296 = temp_output_7_0_g294;
				float3 unpack2_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g296 ), temp_output_27_0_g296 );
				unpack2_g296.z = lerp( 1, unpack2_g296.z, saturate(temp_output_27_0_g296) );
				float3 break15_g296 = abs( packedInput.ase_normal );
				float2 appendResult10_g296 = (float2(break8_g296.x , break8_g296.z));
				float3 unpack3_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g296 ), temp_output_27_0_g296 );
				unpack3_g296.z = lerp( 1, unpack3_g296.z, saturate(temp_output_27_0_g296) );
				float2 appendResult11_g296 = (float2(break8_g296.y , break8_g296.z));
				float3 unpack4_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g296 ), temp_output_27_0_g296 );
				unpack4_g296.z = lerp( 1, unpack4_g296.z, saturate(temp_output_27_0_g296) );
				float3 break8_g297 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g297 = (float2(break8_g297.x , break8_g297.y));
				float temp_output_27_0_g297 = temp_output_7_0_g294;
				float3 unpack2_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g297 ), temp_output_27_0_g297 );
				unpack2_g297.z = lerp( 1, unpack2_g297.z, saturate(temp_output_27_0_g297) );
				float3 break15_g297 = abs( packedInput.ase_normal );
				float2 appendResult10_g297 = (float2(break8_g297.x , break8_g297.z));
				float3 unpack3_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g297 ), temp_output_27_0_g297 );
				unpack3_g297.z = lerp( 1, unpack3_g297.z, saturate(temp_output_27_0_g297) );
				float2 appendResult11_g297 = (float2(break8_g297.y , break8_g297.z));
				float3 unpack4_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g297 ), temp_output_27_0_g297 );
				unpack4_g297.z = lerp( 1, unpack4_g297.z, saturate(temp_output_27_0_g297) );
				float3 lerpResult23_g294 = lerp( ( ( ( ( unpack2_g296 * break15_g296.z ) + ( unpack3_g296 * break15_g296.y ) ) + ( unpack4_g296 * break15_g296.x ) ) * ( 1.0 / ( ( break15_g296.x + break15_g296.y ) + break15_g296.z ) ) ) , ( ( ( ( unpack2_g297 * break15_g297.z ) + ( unpack3_g297 * break15_g297.y ) ) + ( unpack4_g297 * break15_g297.x ) ) * ( 1.0 / ( ( break15_g297.x + break15_g297.y ) + break15_g297.z ) ) ) , temp_output_19_0_g294);
				float3 temp_output_382_2 = lerpResult23_g294;
				float3 break8_g286 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g286 = (float2(break8_g286.x , break8_g286.y));
				float temp_output_7_0_g284 = _GrassNormalScale;
				float temp_output_27_0_g286 = temp_output_7_0_g284;
				float3 unpack2_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g286 ), temp_output_27_0_g286 );
				unpack2_g286.z = lerp( 1, unpack2_g286.z, saturate(temp_output_27_0_g286) );
				float3 break15_g286 = abs( packedInput.ase_normal );
				float2 appendResult10_g286 = (float2(break8_g286.x , break8_g286.z));
				float3 unpack3_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g286 ), temp_output_27_0_g286 );
				unpack3_g286.z = lerp( 1, unpack3_g286.z, saturate(temp_output_27_0_g286) );
				float2 appendResult11_g286 = (float2(break8_g286.y , break8_g286.z));
				float3 unpack4_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g286 ), temp_output_27_0_g286 );
				unpack4_g286.z = lerp( 1, unpack4_g286.z, saturate(temp_output_27_0_g286) );
				float3 break8_g287 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g287 = (float2(break8_g287.x , break8_g287.y));
				float temp_output_27_0_g287 = temp_output_7_0_g284;
				float3 unpack2_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g287 ), temp_output_27_0_g287 );
				unpack2_g287.z = lerp( 1, unpack2_g287.z, saturate(temp_output_27_0_g287) );
				float3 break15_g287 = abs( packedInput.ase_normal );
				float2 appendResult10_g287 = (float2(break8_g287.x , break8_g287.z));
				float3 unpack3_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g287 ), temp_output_27_0_g287 );
				unpack3_g287.z = lerp( 1, unpack3_g287.z, saturate(temp_output_27_0_g287) );
				float2 appendResult11_g287 = (float2(break8_g287.y , break8_g287.z));
				float3 unpack4_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g287 ), temp_output_27_0_g287 );
				unpack4_g287.z = lerp( 1, unpack4_g287.z, saturate(temp_output_27_0_g287) );
				float3 lerpResult23_g284 = lerp( ( ( ( ( unpack2_g286 * break15_g286.z ) + ( unpack3_g286 * break15_g286.y ) ) + ( unpack4_g286 * break15_g286.x ) ) * ( 1.0 / ( ( break15_g286.x + break15_g286.y ) + break15_g286.z ) ) ) , ( ( ( ( unpack2_g287 * break15_g287.z ) + ( unpack3_g287 * break15_g287.y ) ) + ( unpack4_g287 * break15_g287.x ) ) * ( 1.0 / ( ( break15_g287.x + break15_g287.y ) + break15_g287.z ) ) ) , temp_output_19_0_g284);
				float3 lerpResult78 = lerp( temp_output_382_2 , lerpResult23_g284 , temp_output_392_87);
				float3 break8_g301 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g301 = (float2(break8_g301.x , break8_g301.y));
				float temp_output_7_0_g299 = _SnowNormalScale;
				float temp_output_27_0_g301 = temp_output_7_0_g299;
				float3 unpack2_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g301 ), temp_output_27_0_g301 );
				unpack2_g301.z = lerp( 1, unpack2_g301.z, saturate(temp_output_27_0_g301) );
				float3 break15_g301 = abs( packedInput.ase_normal );
				float2 appendResult10_g301 = (float2(break8_g301.x , break8_g301.z));
				float3 unpack3_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g301 ), temp_output_27_0_g301 );
				unpack3_g301.z = lerp( 1, unpack3_g301.z, saturate(temp_output_27_0_g301) );
				float2 appendResult11_g301 = (float2(break8_g301.y , break8_g301.z));
				float3 unpack4_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g301 ), temp_output_27_0_g301 );
				unpack4_g301.z = lerp( 1, unpack4_g301.z, saturate(temp_output_27_0_g301) );
				float3 break8_g302 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g302 = (float2(break8_g302.x , break8_g302.y));
				float temp_output_27_0_g302 = temp_output_7_0_g299;
				float3 unpack2_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g302 ), temp_output_27_0_g302 );
				unpack2_g302.z = lerp( 1, unpack2_g302.z, saturate(temp_output_27_0_g302) );
				float3 break15_g302 = abs( packedInput.ase_normal );
				float2 appendResult10_g302 = (float2(break8_g302.x , break8_g302.z));
				float3 unpack3_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g302 ), temp_output_27_0_g302 );
				unpack3_g302.z = lerp( 1, unpack3_g302.z, saturate(temp_output_27_0_g302) );
				float2 appendResult11_g302 = (float2(break8_g302.y , break8_g302.z));
				float3 unpack4_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g302 ), temp_output_27_0_g302 );
				unpack4_g302.z = lerp( 1, unpack4_g302.z, saturate(temp_output_27_0_g302) );
				float3 lerpResult23_g299 = lerp( ( ( ( ( unpack2_g301 * break15_g301.z ) + ( unpack3_g301 * break15_g301.y ) ) + ( unpack4_g301 * break15_g301.x ) ) * ( 1.0 / ( ( break15_g301.x + break15_g301.y ) + break15_g301.z ) ) ) , ( ( ( ( unpack2_g302 * break15_g302.z ) + ( unpack3_g302 * break15_g302.y ) ) + ( unpack4_g302 * break15_g302.x ) ) * ( 1.0 / ( ( break15_g302.x + break15_g302.y ) + break15_g302.z ) ) ) , temp_output_19_0_g299);
				float3 lerpResult368 = lerp( temp_output_382_2 , lerpResult23_g299 , temp_output_391_87);
				float3 lerpResult11_g270 = lerp( lerpResult78 , lerpResult368 , temp_output_12_0_g270);
				
				float2 uv_RockMask = packedInput.ase_texcoord5.xy * _RockMask_ST.xy + _RockMask_ST.zw;
				float4 tex2DNode60 = tex2D( _RockMask, uv_RockMask );
				float2 uv_GrassMask = packedInput.ase_texcoord5.xy * _GrassMask_ST.xy + _GrassMask_ST.zw;
				float lerpResult88 = lerp( tex2DNode60.a , tex2D( _GrassMask, uv_GrassMask ).a , temp_output_392_87);
				float2 uv_Masks_4K__ugspafgdy = packedInput.ase_texcoord5.xy * _Masks_4K__ugspafgdy_ST.xy + _Masks_4K__ugspafgdy_ST.zw;
				float lerpResult369 = lerp( tex2DNode60.a , tex2D( _Masks_4K__ugspafgdy, uv_Masks_4K__ugspafgdy ).a , temp_output_391_87);
				float lerpResult23_g270 = lerp( lerpResult88 , lerpResult369 , temp_output_12_0_g270);
				
				surfaceDescription.Albedo = lerpResult10_g270.rgb;
				surfaceDescription.Normal = lerpResult11_g270;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult23_g270;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_DISTORTION
				surfaceDescription.Distortion = float2 ( 2, -1 );
				surfaceDescription.DistortionBlur = 1;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _Rock;
			sampler2D _Grass;
			sampler2D _Dirt;
			sampler2D _T_Perlin_Noise_M;
			sampler2D _Variation;
			sampler2D _Snow;
			sampler2D _RockNormal;
			sampler2D _GrassNormal;
			sampler2D _SnowNormal;
			sampler2D _RockMask;
			sampler2D _GrassMask;
			sampler2D _Masks_4K__ugspafgdy;
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.uv0.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			CBUFFER_START(UnityMetaPass)
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				inputMesh = ApplyMeshModification(inputMesh);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord.xyz = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = ase_worldNormal;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord1.xy = inputMesh.uv0.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord1.zw = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float2 uv = float2(0.0, 0.0);
				if (unity_MetaVertexControl.x)
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if (unity_MetaVertexControl.y)
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4(uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 ase_worldPos = packedInput.ase_texcoord.xyz;
				float temp_output_1_0_g294 = _RockNear;
				float3 break8_g298 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g298 = (float2(break8_g298.x , break8_g298.y));
				float3 break15_g298 = abs( packedInput.ase_normal );
				float2 appendResult10_g298 = (float2(break8_g298.x , break8_g298.z));
				float2 appendResult11_g298 = (float2(break8_g298.y , break8_g298.z));
				float temp_output_17_0_g294 = _RockFar;
				float3 break8_g295 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g295 = (float2(break8_g295.x , break8_g295.y));
				float3 break15_g295 = abs( packedInput.ase_normal );
				float2 appendResult10_g295 = (float2(break8_g295.x , break8_g295.z));
				float2 appendResult11_g295 = (float2(break8_g295.y , break8_g295.z));
				float clampResult6_g86 = clamp( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - _BlendDistance ) / _BlendFaloff ) , 0.0 , 1.0 );
				float DistanceBlend177 = clampResult6_g86;
				float temp_output_19_0_g294 = DistanceBlend177;
				float4 lerpResult22_g294 = lerp( ( ( ( ( tex2D( _Rock, appendResult9_g298 ) * break15_g298.z ) + ( tex2D( _Rock, appendResult10_g298 ) * break15_g298.y ) ) + ( tex2D( _Rock, appendResult11_g298 ) * break15_g298.x ) ) * ( 1.0 / ( ( break15_g298.x + break15_g298.y ) + break15_g298.z ) ) ) , ( ( ( ( tex2D( _Rock, appendResult9_g295 ) * break15_g295.z ) + ( tex2D( _Rock, appendResult10_g295 ) * break15_g295.y ) ) + ( tex2D( _Rock, appendResult11_g295 ) * break15_g295.x ) ) * ( 1.0 / ( ( break15_g295.x + break15_g295.y ) + break15_g295.z ) ) ) , temp_output_19_0_g294);
				float4 temp_output_382_0 = lerpResult22_g294;
				float temp_output_1_0_g284 = _GrassNear;
				float3 break8_g288 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g288 = (float2(break8_g288.x , break8_g288.y));
				float3 break15_g288 = abs( packedInput.ase_normal );
				float2 appendResult10_g288 = (float2(break8_g288.x , break8_g288.z));
				float2 appendResult11_g288 = (float2(break8_g288.y , break8_g288.z));
				float temp_output_17_0_g284 = _GrassFar;
				float3 break8_g285 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g285 = (float2(break8_g285.x , break8_g285.y));
				float3 break15_g285 = abs( packedInput.ase_normal );
				float2 appendResult10_g285 = (float2(break8_g285.x , break8_g285.z));
				float2 appendResult11_g285 = (float2(break8_g285.y , break8_g285.z));
				float temp_output_19_0_g284 = DistanceBlend177;
				float4 lerpResult22_g284 = lerp( ( ( ( ( tex2D( _Grass, appendResult9_g288 ) * break15_g288.z ) + ( tex2D( _Grass, appendResult10_g288 ) * break15_g288.y ) ) + ( tex2D( _Grass, appendResult11_g288 ) * break15_g288.x ) ) * ( 1.0 / ( ( break15_g288.x + break15_g288.y ) + break15_g288.z ) ) ) , ( ( ( ( tex2D( _Grass, appendResult9_g285 ) * break15_g285.z ) + ( tex2D( _Grass, appendResult10_g285 ) * break15_g285.y ) ) + ( tex2D( _Grass, appendResult11_g285 ) * break15_g285.x ) ) * ( 1.0 / ( ( break15_g285.x + break15_g285.y ) + break15_g285.z ) ) ) , temp_output_19_0_g284);
				float temp_output_1_0_g289 = _DirtNear;
				float3 break8_g293 = ( ase_worldPos * temp_output_1_0_g289 );
				float2 appendResult9_g293 = (float2(break8_g293.x , break8_g293.y));
				float3 break15_g293 = abs( packedInput.ase_normal );
				float2 appendResult10_g293 = (float2(break8_g293.x , break8_g293.z));
				float2 appendResult11_g293 = (float2(break8_g293.y , break8_g293.z));
				float temp_output_17_0_g289 = _DirtFar;
				float3 break8_g290 = ( ase_worldPos * temp_output_17_0_g289 );
				float2 appendResult9_g290 = (float2(break8_g290.x , break8_g290.y));
				float3 break15_g290 = abs( packedInput.ase_normal );
				float2 appendResult10_g290 = (float2(break8_g290.x , break8_g290.z));
				float2 appendResult11_g290 = (float2(break8_g290.y , break8_g290.z));
				float temp_output_19_0_g289 = DistanceBlend177;
				float4 lerpResult22_g289 = lerp( ( ( ( ( tex2D( _Dirt, appendResult9_g293 ) * break15_g293.z ) + ( tex2D( _Dirt, appendResult10_g293 ) * break15_g293.y ) ) + ( tex2D( _Dirt, appendResult11_g293 ) * break15_g293.x ) ) * ( 1.0 / ( ( break15_g293.x + break15_g293.y ) + break15_g293.z ) ) ) , ( ( ( ( tex2D( _Dirt, appendResult9_g290 ) * break15_g290.z ) + ( tex2D( _Dirt, appendResult10_g290 ) * break15_g290.y ) ) + ( tex2D( _Dirt, appendResult11_g290 ) * break15_g290.x ) ) * ( 1.0 / ( ( break15_g290.x + break15_g290.y ) + break15_g290.z ) ) ) , temp_output_19_0_g289);
				float2 temp_cast_0 = (_DirtSize).xx;
				float2 texCoord237 = packedInput.ase_texcoord1.xy * temp_cast_0 + float2( 0,0 );
				float4 DirtBlend255 = tex2D( _T_Perlin_Noise_M, texCoord237 );
				float4 lerpResult251 = lerp( lerpResult22_g284 , lerpResult22_g289 , DirtBlend255);
				float2 temp_cast_1 = (_Variation1).xx;
				float2 texCoord273 = packedInput.ase_texcoord1.xy * temp_cast_1 + float2( 0,0 );
				float2 temp_cast_2 = (_Variation2).xx;
				float2 texCoord271 = packedInput.ase_texcoord1.xy * temp_cast_2 + float2( 0,0 );
				float2 temp_cast_3 = (_Variation3).xx;
				float2 texCoord278 = packedInput.ase_texcoord1.xy * temp_cast_3 + float2( 0,0 );
				float3 lerpResult274 = lerp( float3(0.5,0.5,0.5) , float3( 1,1,1 ) , ( ( tex2D( _Variation, texCoord273 ).r + 0.5 ) * ( ( tex2D( _Variation, texCoord271 ).r + 0.5 ) * ( tex2D( _Variation, texCoord278 ).r + 0.5 ) ) ));
				float3 Variation284 = lerpResult274;
				float3 ase_worldNormal = packedInput.ase_texcoord2.xyz;
				float3 normalizeResult38_g316 = normalize( float3( 0,1,0 ) );
				float dotResult37_g316 = dot( ase_worldNormal , normalizeResult38_g316 );
				float temp_output_88_0_g316 = _BlendSharpness;
				float clampResult46_g316 = clamp( ( ( dotResult37_g316 * temp_output_88_0_g316 ) + ( _BlendBias - ( temp_output_88_0_g316 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_392_87 = clampResult46_g316;
				float4 lerpResult77 = lerp( temp_output_382_0 , ( lerpResult251 * float4( Variation284 , 0.0 ) ) , temp_output_392_87);
				float temp_output_1_0_g299 = _SnowNear;
				float3 break8_g303 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g303 = (float2(break8_g303.x , break8_g303.y));
				float3 break15_g303 = abs( packedInput.ase_normal );
				float2 appendResult10_g303 = (float2(break8_g303.x , break8_g303.z));
				float2 appendResult11_g303 = (float2(break8_g303.y , break8_g303.z));
				float temp_output_17_0_g299 = _SnowFar;
				float3 break8_g300 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g300 = (float2(break8_g300.x , break8_g300.y));
				float3 break15_g300 = abs( packedInput.ase_normal );
				float2 appendResult10_g300 = (float2(break8_g300.x , break8_g300.z));
				float2 appendResult11_g300 = (float2(break8_g300.y , break8_g300.z));
				float temp_output_19_0_g299 = DistanceBlend177;
				float4 lerpResult22_g299 = lerp( ( ( ( ( tex2D( _Snow, appendResult9_g303 ) * break15_g303.z ) + ( tex2D( _Snow, appendResult10_g303 ) * break15_g303.y ) ) + ( tex2D( _Snow, appendResult11_g303 ) * break15_g303.x ) ) * ( 1.0 / ( ( break15_g303.x + break15_g303.y ) + break15_g303.z ) ) ) , ( ( ( ( tex2D( _Snow, appendResult9_g300 ) * break15_g300.z ) + ( tex2D( _Snow, appendResult10_g300 ) * break15_g300.y ) ) + ( tex2D( _Snow, appendResult11_g300 ) * break15_g300.x ) ) * ( 1.0 / ( ( break15_g300.x + break15_g300.y ) + break15_g300.z ) ) ) , temp_output_19_0_g299);
				float3 normalizeResult38_g315 = normalize( float3( 0,1,0 ) );
				float dotResult37_g315 = dot( ase_worldNormal , normalizeResult38_g315 );
				float temp_output_88_0_g315 = _SnowBlendSharpness;
				float clampResult46_g315 = clamp( ( ( dotResult37_g315 * temp_output_88_0_g315 ) + ( _SnowBlendBias - ( temp_output_88_0_g315 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_391_87 = clampResult46_g315;
				float4 lerpResult367 = lerp( temp_output_382_0 , lerpResult22_g299 , temp_output_391_87);
				float temp_output_12_0_g270 = saturate( ( ( ase_worldPos.y - _SnowHeight ) * _SnowHardness ) );
				float4 lerpResult10_g270 = lerp( lerpResult77 , lerpResult367 , temp_output_12_0_g270);
				
				float3 break8_g296 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g296 = (float2(break8_g296.x , break8_g296.y));
				float temp_output_7_0_g294 = _RockNormalScale;
				float temp_output_27_0_g296 = temp_output_7_0_g294;
				float3 unpack2_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g296 ), temp_output_27_0_g296 );
				unpack2_g296.z = lerp( 1, unpack2_g296.z, saturate(temp_output_27_0_g296) );
				float3 break15_g296 = abs( packedInput.ase_normal );
				float2 appendResult10_g296 = (float2(break8_g296.x , break8_g296.z));
				float3 unpack3_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g296 ), temp_output_27_0_g296 );
				unpack3_g296.z = lerp( 1, unpack3_g296.z, saturate(temp_output_27_0_g296) );
				float2 appendResult11_g296 = (float2(break8_g296.y , break8_g296.z));
				float3 unpack4_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g296 ), temp_output_27_0_g296 );
				unpack4_g296.z = lerp( 1, unpack4_g296.z, saturate(temp_output_27_0_g296) );
				float3 break8_g297 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g297 = (float2(break8_g297.x , break8_g297.y));
				float temp_output_27_0_g297 = temp_output_7_0_g294;
				float3 unpack2_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g297 ), temp_output_27_0_g297 );
				unpack2_g297.z = lerp( 1, unpack2_g297.z, saturate(temp_output_27_0_g297) );
				float3 break15_g297 = abs( packedInput.ase_normal );
				float2 appendResult10_g297 = (float2(break8_g297.x , break8_g297.z));
				float3 unpack3_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g297 ), temp_output_27_0_g297 );
				unpack3_g297.z = lerp( 1, unpack3_g297.z, saturate(temp_output_27_0_g297) );
				float2 appendResult11_g297 = (float2(break8_g297.y , break8_g297.z));
				float3 unpack4_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g297 ), temp_output_27_0_g297 );
				unpack4_g297.z = lerp( 1, unpack4_g297.z, saturate(temp_output_27_0_g297) );
				float3 lerpResult23_g294 = lerp( ( ( ( ( unpack2_g296 * break15_g296.z ) + ( unpack3_g296 * break15_g296.y ) ) + ( unpack4_g296 * break15_g296.x ) ) * ( 1.0 / ( ( break15_g296.x + break15_g296.y ) + break15_g296.z ) ) ) , ( ( ( ( unpack2_g297 * break15_g297.z ) + ( unpack3_g297 * break15_g297.y ) ) + ( unpack4_g297 * break15_g297.x ) ) * ( 1.0 / ( ( break15_g297.x + break15_g297.y ) + break15_g297.z ) ) ) , temp_output_19_0_g294);
				float3 temp_output_382_2 = lerpResult23_g294;
				float3 break8_g286 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g286 = (float2(break8_g286.x , break8_g286.y));
				float temp_output_7_0_g284 = _GrassNormalScale;
				float temp_output_27_0_g286 = temp_output_7_0_g284;
				float3 unpack2_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g286 ), temp_output_27_0_g286 );
				unpack2_g286.z = lerp( 1, unpack2_g286.z, saturate(temp_output_27_0_g286) );
				float3 break15_g286 = abs( packedInput.ase_normal );
				float2 appendResult10_g286 = (float2(break8_g286.x , break8_g286.z));
				float3 unpack3_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g286 ), temp_output_27_0_g286 );
				unpack3_g286.z = lerp( 1, unpack3_g286.z, saturate(temp_output_27_0_g286) );
				float2 appendResult11_g286 = (float2(break8_g286.y , break8_g286.z));
				float3 unpack4_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g286 ), temp_output_27_0_g286 );
				unpack4_g286.z = lerp( 1, unpack4_g286.z, saturate(temp_output_27_0_g286) );
				float3 break8_g287 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g287 = (float2(break8_g287.x , break8_g287.y));
				float temp_output_27_0_g287 = temp_output_7_0_g284;
				float3 unpack2_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g287 ), temp_output_27_0_g287 );
				unpack2_g287.z = lerp( 1, unpack2_g287.z, saturate(temp_output_27_0_g287) );
				float3 break15_g287 = abs( packedInput.ase_normal );
				float2 appendResult10_g287 = (float2(break8_g287.x , break8_g287.z));
				float3 unpack3_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g287 ), temp_output_27_0_g287 );
				unpack3_g287.z = lerp( 1, unpack3_g287.z, saturate(temp_output_27_0_g287) );
				float2 appendResult11_g287 = (float2(break8_g287.y , break8_g287.z));
				float3 unpack4_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g287 ), temp_output_27_0_g287 );
				unpack4_g287.z = lerp( 1, unpack4_g287.z, saturate(temp_output_27_0_g287) );
				float3 lerpResult23_g284 = lerp( ( ( ( ( unpack2_g286 * break15_g286.z ) + ( unpack3_g286 * break15_g286.y ) ) + ( unpack4_g286 * break15_g286.x ) ) * ( 1.0 / ( ( break15_g286.x + break15_g286.y ) + break15_g286.z ) ) ) , ( ( ( ( unpack2_g287 * break15_g287.z ) + ( unpack3_g287 * break15_g287.y ) ) + ( unpack4_g287 * break15_g287.x ) ) * ( 1.0 / ( ( break15_g287.x + break15_g287.y ) + break15_g287.z ) ) ) , temp_output_19_0_g284);
				float3 lerpResult78 = lerp( temp_output_382_2 , lerpResult23_g284 , temp_output_392_87);
				float3 break8_g301 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g301 = (float2(break8_g301.x , break8_g301.y));
				float temp_output_7_0_g299 = _SnowNormalScale;
				float temp_output_27_0_g301 = temp_output_7_0_g299;
				float3 unpack2_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g301 ), temp_output_27_0_g301 );
				unpack2_g301.z = lerp( 1, unpack2_g301.z, saturate(temp_output_27_0_g301) );
				float3 break15_g301 = abs( packedInput.ase_normal );
				float2 appendResult10_g301 = (float2(break8_g301.x , break8_g301.z));
				float3 unpack3_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g301 ), temp_output_27_0_g301 );
				unpack3_g301.z = lerp( 1, unpack3_g301.z, saturate(temp_output_27_0_g301) );
				float2 appendResult11_g301 = (float2(break8_g301.y , break8_g301.z));
				float3 unpack4_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g301 ), temp_output_27_0_g301 );
				unpack4_g301.z = lerp( 1, unpack4_g301.z, saturate(temp_output_27_0_g301) );
				float3 break8_g302 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g302 = (float2(break8_g302.x , break8_g302.y));
				float temp_output_27_0_g302 = temp_output_7_0_g299;
				float3 unpack2_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g302 ), temp_output_27_0_g302 );
				unpack2_g302.z = lerp( 1, unpack2_g302.z, saturate(temp_output_27_0_g302) );
				float3 break15_g302 = abs( packedInput.ase_normal );
				float2 appendResult10_g302 = (float2(break8_g302.x , break8_g302.z));
				float3 unpack3_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g302 ), temp_output_27_0_g302 );
				unpack3_g302.z = lerp( 1, unpack3_g302.z, saturate(temp_output_27_0_g302) );
				float2 appendResult11_g302 = (float2(break8_g302.y , break8_g302.z));
				float3 unpack4_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g302 ), temp_output_27_0_g302 );
				unpack4_g302.z = lerp( 1, unpack4_g302.z, saturate(temp_output_27_0_g302) );
				float3 lerpResult23_g299 = lerp( ( ( ( ( unpack2_g301 * break15_g301.z ) + ( unpack3_g301 * break15_g301.y ) ) + ( unpack4_g301 * break15_g301.x ) ) * ( 1.0 / ( ( break15_g301.x + break15_g301.y ) + break15_g301.z ) ) ) , ( ( ( ( unpack2_g302 * break15_g302.z ) + ( unpack3_g302 * break15_g302.y ) ) + ( unpack4_g302 * break15_g302.x ) ) * ( 1.0 / ( ( break15_g302.x + break15_g302.y ) + break15_g302.z ) ) ) , temp_output_19_0_g299);
				float3 lerpResult368 = lerp( temp_output_382_2 , lerpResult23_g299 , temp_output_391_87);
				float3 lerpResult11_g270 = lerp( lerpResult78 , lerpResult368 , temp_output_12_0_g270);
				
				float2 uv_RockMask = packedInput.ase_texcoord1.xy * _RockMask_ST.xy + _RockMask_ST.zw;
				float4 tex2DNode60 = tex2D( _RockMask, uv_RockMask );
				float2 uv_GrassMask = packedInput.ase_texcoord1.xy * _GrassMask_ST.xy + _GrassMask_ST.zw;
				float lerpResult88 = lerp( tex2DNode60.a , tex2D( _GrassMask, uv_GrassMask ).a , temp_output_392_87);
				float2 uv_Masks_4K__ugspafgdy = packedInput.ase_texcoord1.xy * _Masks_4K__ugspafgdy_ST.xy + _Masks_4K__ugspafgdy_ST.zw;
				float lerpResult369 = lerp( tex2DNode60.a , tex2D( _Masks_4K__ugspafgdy, uv_Masks_4K__ugspafgdy ).a , temp_output_391_87);
				float lerpResult23_g270 = lerp( lerpResult88 , lerpResult369 , temp_output_12_0_g270);
				
				surfaceDescription.Albedo = lerpResult10_g270.rgb;
				surfaceDescription.Normal = lerpResult11_g270;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult23_g270;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4(0.0, 0.0, 0.0, 1.0);
				if (unity_MetaFragmentControl.x)
				{
					res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
				}

				if (unity_MetaFragmentControl.y)
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_SHADOWS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			//#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				#ifdef _ALPHATEST_SHADOW_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				#else
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif
			
			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }
			ColorMask 0

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS
			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			int _ObjectId;
			int _PassValue;

			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				outputPackedVaryingsMeshToPS.ase_texcoord1 = inputMesh.ase_texcoord;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _RockNormal;
			sampler2D _GrassNormal;
			sampler2D _SnowNormal;
			sampler2D _RockMask;
			sampler2D _GrassMask;
			sampler2D _Masks_4K__ugspafgdy;
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification(inputMesh);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord3.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float temp_output_1_0_g294 = _RockNear;
				float3 break8_g296 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g296 = (float2(break8_g296.x , break8_g296.y));
				float temp_output_7_0_g294 = _RockNormalScale;
				float temp_output_27_0_g296 = temp_output_7_0_g294;
				float3 unpack2_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g296 ), temp_output_27_0_g296 );
				unpack2_g296.z = lerp( 1, unpack2_g296.z, saturate(temp_output_27_0_g296) );
				float3 break15_g296 = abs( packedInput.ase_normal );
				float2 appendResult10_g296 = (float2(break8_g296.x , break8_g296.z));
				float3 unpack3_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g296 ), temp_output_27_0_g296 );
				unpack3_g296.z = lerp( 1, unpack3_g296.z, saturate(temp_output_27_0_g296) );
				float2 appendResult11_g296 = (float2(break8_g296.y , break8_g296.z));
				float3 unpack4_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g296 ), temp_output_27_0_g296 );
				unpack4_g296.z = lerp( 1, unpack4_g296.z, saturate(temp_output_27_0_g296) );
				float temp_output_17_0_g294 = _RockFar;
				float3 break8_g297 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g297 = (float2(break8_g297.x , break8_g297.y));
				float temp_output_27_0_g297 = temp_output_7_0_g294;
				float3 unpack2_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g297 ), temp_output_27_0_g297 );
				unpack2_g297.z = lerp( 1, unpack2_g297.z, saturate(temp_output_27_0_g297) );
				float3 break15_g297 = abs( packedInput.ase_normal );
				float2 appendResult10_g297 = (float2(break8_g297.x , break8_g297.z));
				float3 unpack3_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g297 ), temp_output_27_0_g297 );
				unpack3_g297.z = lerp( 1, unpack3_g297.z, saturate(temp_output_27_0_g297) );
				float2 appendResult11_g297 = (float2(break8_g297.y , break8_g297.z));
				float3 unpack4_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g297 ), temp_output_27_0_g297 );
				unpack4_g297.z = lerp( 1, unpack4_g297.z, saturate(temp_output_27_0_g297) );
				float clampResult6_g86 = clamp( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - _BlendDistance ) / _BlendFaloff ) , 0.0 , 1.0 );
				float DistanceBlend177 = clampResult6_g86;
				float temp_output_19_0_g294 = DistanceBlend177;
				float3 lerpResult23_g294 = lerp( ( ( ( ( unpack2_g296 * break15_g296.z ) + ( unpack3_g296 * break15_g296.y ) ) + ( unpack4_g296 * break15_g296.x ) ) * ( 1.0 / ( ( break15_g296.x + break15_g296.y ) + break15_g296.z ) ) ) , ( ( ( ( unpack2_g297 * break15_g297.z ) + ( unpack3_g297 * break15_g297.y ) ) + ( unpack4_g297 * break15_g297.x ) ) * ( 1.0 / ( ( break15_g297.x + break15_g297.y ) + break15_g297.z ) ) ) , temp_output_19_0_g294);
				float3 temp_output_382_2 = lerpResult23_g294;
				float temp_output_1_0_g284 = _GrassNear;
				float3 break8_g286 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g286 = (float2(break8_g286.x , break8_g286.y));
				float temp_output_7_0_g284 = _GrassNormalScale;
				float temp_output_27_0_g286 = temp_output_7_0_g284;
				float3 unpack2_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g286 ), temp_output_27_0_g286 );
				unpack2_g286.z = lerp( 1, unpack2_g286.z, saturate(temp_output_27_0_g286) );
				float3 break15_g286 = abs( packedInput.ase_normal );
				float2 appendResult10_g286 = (float2(break8_g286.x , break8_g286.z));
				float3 unpack3_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g286 ), temp_output_27_0_g286 );
				unpack3_g286.z = lerp( 1, unpack3_g286.z, saturate(temp_output_27_0_g286) );
				float2 appendResult11_g286 = (float2(break8_g286.y , break8_g286.z));
				float3 unpack4_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g286 ), temp_output_27_0_g286 );
				unpack4_g286.z = lerp( 1, unpack4_g286.z, saturate(temp_output_27_0_g286) );
				float temp_output_17_0_g284 = _GrassFar;
				float3 break8_g287 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g287 = (float2(break8_g287.x , break8_g287.y));
				float temp_output_27_0_g287 = temp_output_7_0_g284;
				float3 unpack2_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g287 ), temp_output_27_0_g287 );
				unpack2_g287.z = lerp( 1, unpack2_g287.z, saturate(temp_output_27_0_g287) );
				float3 break15_g287 = abs( packedInput.ase_normal );
				float2 appendResult10_g287 = (float2(break8_g287.x , break8_g287.z));
				float3 unpack3_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g287 ), temp_output_27_0_g287 );
				unpack3_g287.z = lerp( 1, unpack3_g287.z, saturate(temp_output_27_0_g287) );
				float2 appendResult11_g287 = (float2(break8_g287.y , break8_g287.z));
				float3 unpack4_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g287 ), temp_output_27_0_g287 );
				unpack4_g287.z = lerp( 1, unpack4_g287.z, saturate(temp_output_27_0_g287) );
				float temp_output_19_0_g284 = DistanceBlend177;
				float3 lerpResult23_g284 = lerp( ( ( ( ( unpack2_g286 * break15_g286.z ) + ( unpack3_g286 * break15_g286.y ) ) + ( unpack4_g286 * break15_g286.x ) ) * ( 1.0 / ( ( break15_g286.x + break15_g286.y ) + break15_g286.z ) ) ) , ( ( ( ( unpack2_g287 * break15_g287.z ) + ( unpack3_g287 * break15_g287.y ) ) + ( unpack4_g287 * break15_g287.x ) ) * ( 1.0 / ( ( break15_g287.x + break15_g287.y ) + break15_g287.z ) ) ) , temp_output_19_0_g284);
				float3 normalizeResult38_g316 = normalize( float3( 0,1,0 ) );
				float dotResult37_g316 = dot( normalWS , normalizeResult38_g316 );
				float temp_output_88_0_g316 = _BlendSharpness;
				float clampResult46_g316 = clamp( ( ( dotResult37_g316 * temp_output_88_0_g316 ) + ( _BlendBias - ( temp_output_88_0_g316 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_392_87 = clampResult46_g316;
				float3 lerpResult78 = lerp( temp_output_382_2 , lerpResult23_g284 , temp_output_392_87);
				float temp_output_1_0_g299 = _SnowNear;
				float3 break8_g301 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g301 = (float2(break8_g301.x , break8_g301.y));
				float temp_output_7_0_g299 = _SnowNormalScale;
				float temp_output_27_0_g301 = temp_output_7_0_g299;
				float3 unpack2_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g301 ), temp_output_27_0_g301 );
				unpack2_g301.z = lerp( 1, unpack2_g301.z, saturate(temp_output_27_0_g301) );
				float3 break15_g301 = abs( packedInput.ase_normal );
				float2 appendResult10_g301 = (float2(break8_g301.x , break8_g301.z));
				float3 unpack3_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g301 ), temp_output_27_0_g301 );
				unpack3_g301.z = lerp( 1, unpack3_g301.z, saturate(temp_output_27_0_g301) );
				float2 appendResult11_g301 = (float2(break8_g301.y , break8_g301.z));
				float3 unpack4_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g301 ), temp_output_27_0_g301 );
				unpack4_g301.z = lerp( 1, unpack4_g301.z, saturate(temp_output_27_0_g301) );
				float temp_output_17_0_g299 = _SnowFar;
				float3 break8_g302 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g302 = (float2(break8_g302.x , break8_g302.y));
				float temp_output_27_0_g302 = temp_output_7_0_g299;
				float3 unpack2_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g302 ), temp_output_27_0_g302 );
				unpack2_g302.z = lerp( 1, unpack2_g302.z, saturate(temp_output_27_0_g302) );
				float3 break15_g302 = abs( packedInput.ase_normal );
				float2 appendResult10_g302 = (float2(break8_g302.x , break8_g302.z));
				float3 unpack3_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g302 ), temp_output_27_0_g302 );
				unpack3_g302.z = lerp( 1, unpack3_g302.z, saturate(temp_output_27_0_g302) );
				float2 appendResult11_g302 = (float2(break8_g302.y , break8_g302.z));
				float3 unpack4_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g302 ), temp_output_27_0_g302 );
				unpack4_g302.z = lerp( 1, unpack4_g302.z, saturate(temp_output_27_0_g302) );
				float temp_output_19_0_g299 = DistanceBlend177;
				float3 lerpResult23_g299 = lerp( ( ( ( ( unpack2_g301 * break15_g301.z ) + ( unpack3_g301 * break15_g301.y ) ) + ( unpack4_g301 * break15_g301.x ) ) * ( 1.0 / ( ( break15_g301.x + break15_g301.y ) + break15_g301.z ) ) ) , ( ( ( ( unpack2_g302 * break15_g302.z ) + ( unpack3_g302 * break15_g302.y ) ) + ( unpack4_g302 * break15_g302.x ) ) * ( 1.0 / ( ( break15_g302.x + break15_g302.y ) + break15_g302.z ) ) ) , temp_output_19_0_g299);
				float3 normalizeResult38_g315 = normalize( float3( 0,1,0 ) );
				float dotResult37_g315 = dot( normalWS , normalizeResult38_g315 );
				float temp_output_88_0_g315 = _SnowBlendSharpness;
				float clampResult46_g315 = clamp( ( ( dotResult37_g315 * temp_output_88_0_g315 ) + ( _SnowBlendBias - ( temp_output_88_0_g315 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_391_87 = clampResult46_g315;
				float3 lerpResult368 = lerp( temp_output_382_2 , lerpResult23_g299 , temp_output_391_87);
				float temp_output_12_0_g270 = saturate( ( ( ase_worldPos.y - _SnowHeight ) * _SnowHardness ) );
				float3 lerpResult11_g270 = lerp( lerpResult78 , lerpResult368 , temp_output_12_0_g270);
				
				float2 uv_RockMask = packedInput.ase_texcoord3.xy * _RockMask_ST.xy + _RockMask_ST.zw;
				float4 tex2DNode60 = tex2D( _RockMask, uv_RockMask );
				float2 uv_GrassMask = packedInput.ase_texcoord3.xy * _GrassMask_ST.xy + _GrassMask_ST.zw;
				float lerpResult88 = lerp( tex2DNode60.a , tex2D( _GrassMask, uv_GrassMask ).a , temp_output_392_87);
				float2 uv_Masks_4K__ugspafgdy = packedInput.ase_texcoord3.xy * _Masks_4K__ugspafgdy_ST.xy + _Masks_4K__ugspafgdy_ST.zw;
				float lerpResult369 = lerp( tex2DNode60.a , tex2D( _Masks_4K__ugspafgdy, uv_Masks_4K__ugspafgdy ).a , temp_output_391_87);
				float lerpResult23_g270 = lerp( lerpResult88 , lerpResult369 , temp_output_12_0_g270);
				
				surfaceDescription.Normal = lerpResult11_g270;
				surfaceDescription.Smoothness = lerpResult23_g270;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Motion Vectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_MOTION_VECTORS
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _RockNormal;
			sampler2D _GrassNormal;
			sampler2D _SnowNormal;
			sampler2D _RockMask;
			sampler2D _GrassMask;
			sampler2D _Masks_4K__ugspafgdy;
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1; //interpolators0
				float3 vpassInterpolators1 : TEXCOORD2; //interpolators1
				float4 ase_texcoord3 : TEXCOORD3;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				inputMesh = ApplyMeshModification(inputMesh);
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldNormal;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				outputPackedVaryingsMeshToPS.vmeshPositionCS = VMESHpositionCS;
				outputPackedVaryingsMeshToPS.vmeshInterp00.xyz = VMESHpositionRWS;

				outputPackedVaryingsMeshToPS.vpassInterpolators0 = float3(VPASSpositionCS.xyw);
				outputPackedVaryingsMeshToPS.vpassInterpolators1 = float3(VPASSpreviousPositionCS.xyw);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
				o.precomputedVelocity = v.precomputedVelocity;
				#endif
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
				, out float4 outMotionVector : SV_Target0
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target1
					#ifdef WRITE_MSAA_DEPTH
						, out float1 depthColor : SV_Target2
					#endif
				#elif defined(WRITE_MSAA_DEPTH)
				, out float4 outNormalBuffer : SV_Target1
				, out float1 depthColor : SV_Target2
				#endif

				#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
				#endif
				
				)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 ase_worldPos = packedInput.ase_texcoord3.xyz;
				float temp_output_1_0_g294 = _RockNear;
				float3 break8_g296 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g296 = (float2(break8_g296.x , break8_g296.y));
				float temp_output_7_0_g294 = _RockNormalScale;
				float temp_output_27_0_g296 = temp_output_7_0_g294;
				float3 unpack2_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g296 ), temp_output_27_0_g296 );
				unpack2_g296.z = lerp( 1, unpack2_g296.z, saturate(temp_output_27_0_g296) );
				float3 break15_g296 = abs( packedInput.ase_normal );
				float2 appendResult10_g296 = (float2(break8_g296.x , break8_g296.z));
				float3 unpack3_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g296 ), temp_output_27_0_g296 );
				unpack3_g296.z = lerp( 1, unpack3_g296.z, saturate(temp_output_27_0_g296) );
				float2 appendResult11_g296 = (float2(break8_g296.y , break8_g296.z));
				float3 unpack4_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g296 ), temp_output_27_0_g296 );
				unpack4_g296.z = lerp( 1, unpack4_g296.z, saturate(temp_output_27_0_g296) );
				float temp_output_17_0_g294 = _RockFar;
				float3 break8_g297 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g297 = (float2(break8_g297.x , break8_g297.y));
				float temp_output_27_0_g297 = temp_output_7_0_g294;
				float3 unpack2_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g297 ), temp_output_27_0_g297 );
				unpack2_g297.z = lerp( 1, unpack2_g297.z, saturate(temp_output_27_0_g297) );
				float3 break15_g297 = abs( packedInput.ase_normal );
				float2 appendResult10_g297 = (float2(break8_g297.x , break8_g297.z));
				float3 unpack3_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g297 ), temp_output_27_0_g297 );
				unpack3_g297.z = lerp( 1, unpack3_g297.z, saturate(temp_output_27_0_g297) );
				float2 appendResult11_g297 = (float2(break8_g297.y , break8_g297.z));
				float3 unpack4_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g297 ), temp_output_27_0_g297 );
				unpack4_g297.z = lerp( 1, unpack4_g297.z, saturate(temp_output_27_0_g297) );
				float clampResult6_g86 = clamp( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - _BlendDistance ) / _BlendFaloff ) , 0.0 , 1.0 );
				float DistanceBlend177 = clampResult6_g86;
				float temp_output_19_0_g294 = DistanceBlend177;
				float3 lerpResult23_g294 = lerp( ( ( ( ( unpack2_g296 * break15_g296.z ) + ( unpack3_g296 * break15_g296.y ) ) + ( unpack4_g296 * break15_g296.x ) ) * ( 1.0 / ( ( break15_g296.x + break15_g296.y ) + break15_g296.z ) ) ) , ( ( ( ( unpack2_g297 * break15_g297.z ) + ( unpack3_g297 * break15_g297.y ) ) + ( unpack4_g297 * break15_g297.x ) ) * ( 1.0 / ( ( break15_g297.x + break15_g297.y ) + break15_g297.z ) ) ) , temp_output_19_0_g294);
				float3 temp_output_382_2 = lerpResult23_g294;
				float temp_output_1_0_g284 = _GrassNear;
				float3 break8_g286 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g286 = (float2(break8_g286.x , break8_g286.y));
				float temp_output_7_0_g284 = _GrassNormalScale;
				float temp_output_27_0_g286 = temp_output_7_0_g284;
				float3 unpack2_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g286 ), temp_output_27_0_g286 );
				unpack2_g286.z = lerp( 1, unpack2_g286.z, saturate(temp_output_27_0_g286) );
				float3 break15_g286 = abs( packedInput.ase_normal );
				float2 appendResult10_g286 = (float2(break8_g286.x , break8_g286.z));
				float3 unpack3_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g286 ), temp_output_27_0_g286 );
				unpack3_g286.z = lerp( 1, unpack3_g286.z, saturate(temp_output_27_0_g286) );
				float2 appendResult11_g286 = (float2(break8_g286.y , break8_g286.z));
				float3 unpack4_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g286 ), temp_output_27_0_g286 );
				unpack4_g286.z = lerp( 1, unpack4_g286.z, saturate(temp_output_27_0_g286) );
				float temp_output_17_0_g284 = _GrassFar;
				float3 break8_g287 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g287 = (float2(break8_g287.x , break8_g287.y));
				float temp_output_27_0_g287 = temp_output_7_0_g284;
				float3 unpack2_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g287 ), temp_output_27_0_g287 );
				unpack2_g287.z = lerp( 1, unpack2_g287.z, saturate(temp_output_27_0_g287) );
				float3 break15_g287 = abs( packedInput.ase_normal );
				float2 appendResult10_g287 = (float2(break8_g287.x , break8_g287.z));
				float3 unpack3_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g287 ), temp_output_27_0_g287 );
				unpack3_g287.z = lerp( 1, unpack3_g287.z, saturate(temp_output_27_0_g287) );
				float2 appendResult11_g287 = (float2(break8_g287.y , break8_g287.z));
				float3 unpack4_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g287 ), temp_output_27_0_g287 );
				unpack4_g287.z = lerp( 1, unpack4_g287.z, saturate(temp_output_27_0_g287) );
				float temp_output_19_0_g284 = DistanceBlend177;
				float3 lerpResult23_g284 = lerp( ( ( ( ( unpack2_g286 * break15_g286.z ) + ( unpack3_g286 * break15_g286.y ) ) + ( unpack4_g286 * break15_g286.x ) ) * ( 1.0 / ( ( break15_g286.x + break15_g286.y ) + break15_g286.z ) ) ) , ( ( ( ( unpack2_g287 * break15_g287.z ) + ( unpack3_g287 * break15_g287.y ) ) + ( unpack4_g287 * break15_g287.x ) ) * ( 1.0 / ( ( break15_g287.x + break15_g287.y ) + break15_g287.z ) ) ) , temp_output_19_0_g284);
				float3 ase_worldNormal = packedInput.ase_texcoord4.xyz;
				float3 normalizeResult38_g316 = normalize( float3( 0,1,0 ) );
				float dotResult37_g316 = dot( ase_worldNormal , normalizeResult38_g316 );
				float temp_output_88_0_g316 = _BlendSharpness;
				float clampResult46_g316 = clamp( ( ( dotResult37_g316 * temp_output_88_0_g316 ) + ( _BlendBias - ( temp_output_88_0_g316 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_392_87 = clampResult46_g316;
				float3 lerpResult78 = lerp( temp_output_382_2 , lerpResult23_g284 , temp_output_392_87);
				float temp_output_1_0_g299 = _SnowNear;
				float3 break8_g301 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g301 = (float2(break8_g301.x , break8_g301.y));
				float temp_output_7_0_g299 = _SnowNormalScale;
				float temp_output_27_0_g301 = temp_output_7_0_g299;
				float3 unpack2_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g301 ), temp_output_27_0_g301 );
				unpack2_g301.z = lerp( 1, unpack2_g301.z, saturate(temp_output_27_0_g301) );
				float3 break15_g301 = abs( packedInput.ase_normal );
				float2 appendResult10_g301 = (float2(break8_g301.x , break8_g301.z));
				float3 unpack3_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g301 ), temp_output_27_0_g301 );
				unpack3_g301.z = lerp( 1, unpack3_g301.z, saturate(temp_output_27_0_g301) );
				float2 appendResult11_g301 = (float2(break8_g301.y , break8_g301.z));
				float3 unpack4_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g301 ), temp_output_27_0_g301 );
				unpack4_g301.z = lerp( 1, unpack4_g301.z, saturate(temp_output_27_0_g301) );
				float temp_output_17_0_g299 = _SnowFar;
				float3 break8_g302 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g302 = (float2(break8_g302.x , break8_g302.y));
				float temp_output_27_0_g302 = temp_output_7_0_g299;
				float3 unpack2_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g302 ), temp_output_27_0_g302 );
				unpack2_g302.z = lerp( 1, unpack2_g302.z, saturate(temp_output_27_0_g302) );
				float3 break15_g302 = abs( packedInput.ase_normal );
				float2 appendResult10_g302 = (float2(break8_g302.x , break8_g302.z));
				float3 unpack3_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g302 ), temp_output_27_0_g302 );
				unpack3_g302.z = lerp( 1, unpack3_g302.z, saturate(temp_output_27_0_g302) );
				float2 appendResult11_g302 = (float2(break8_g302.y , break8_g302.z));
				float3 unpack4_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g302 ), temp_output_27_0_g302 );
				unpack4_g302.z = lerp( 1, unpack4_g302.z, saturate(temp_output_27_0_g302) );
				float temp_output_19_0_g299 = DistanceBlend177;
				float3 lerpResult23_g299 = lerp( ( ( ( ( unpack2_g301 * break15_g301.z ) + ( unpack3_g301 * break15_g301.y ) ) + ( unpack4_g301 * break15_g301.x ) ) * ( 1.0 / ( ( break15_g301.x + break15_g301.y ) + break15_g301.z ) ) ) , ( ( ( ( unpack2_g302 * break15_g302.z ) + ( unpack3_g302 * break15_g302.y ) ) + ( unpack4_g302 * break15_g302.x ) ) * ( 1.0 / ( ( break15_g302.x + break15_g302.y ) + break15_g302.z ) ) ) , temp_output_19_0_g299);
				float3 normalizeResult38_g315 = normalize( float3( 0,1,0 ) );
				float dotResult37_g315 = dot( ase_worldNormal , normalizeResult38_g315 );
				float temp_output_88_0_g315 = _SnowBlendSharpness;
				float clampResult46_g315 = clamp( ( ( dotResult37_g315 * temp_output_88_0_g315 ) + ( _SnowBlendBias - ( temp_output_88_0_g315 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_391_87 = clampResult46_g315;
				float3 lerpResult368 = lerp( temp_output_382_2 , lerpResult23_g299 , temp_output_391_87);
				float temp_output_12_0_g270 = saturate( ( ( ase_worldPos.y - _SnowHeight ) * _SnowHardness ) );
				float3 lerpResult11_g270 = lerp( lerpResult78 , lerpResult368 , temp_output_12_0_g270);
				
				float2 uv_RockMask = packedInput.ase_texcoord5.xy * _RockMask_ST.xy + _RockMask_ST.zw;
				float4 tex2DNode60 = tex2D( _RockMask, uv_RockMask );
				float2 uv_GrassMask = packedInput.ase_texcoord5.xy * _GrassMask_ST.xy + _GrassMask_ST.zw;
				float lerpResult88 = lerp( tex2DNode60.a , tex2D( _GrassMask, uv_GrassMask ).a , temp_output_392_87);
				float2 uv_Masks_4K__ugspafgdy = packedInput.ase_texcoord5.xy * _Masks_4K__ugspafgdy_ST.xy + _Masks_4K__ugspafgdy_ST.zw;
				float lerpResult369 = lerp( tex2DNode60.a , tex2D( _Masks_4K__ugspafgdy, uv_Masks_4K__ugspafgdy ).a , temp_output_391_87);
				float lerpResult23_g270 = lerp( lerpResult88 , lerpResult369 , temp_output_12_0_g270);
				
				surfaceDescription.Normal = lerpResult11_g270;
				surfaceDescription.Smoothness = lerpResult23_g270;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				float4 VPASSpositionCS = float4(packedInput.vpassInterpolators0.xy, 0.0, packedInput.vpassInterpolators0.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassInterpolators1.xy, 0.0, packedInput.vpassInterpolators1.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmeshPositionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmeshPositionCS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask [_ColorMaskTransparentVel] 1

			HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#define ASE_SRP_VERSION 999999


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_FORWARD
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			#pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			// CBuffer must be declared before Material.hlsl since it internaly uses _BlendMode now
			CBUFFER_START( UnityPerMaterial )
			float4 _Masks_4K__ugspafgdy_ST;
			float4 _RockMask_ST;
			float4 _GrassMask_ST;
			float _SnowNormalScale;
			float _GrassNormalScale;
			float _RockNormalScale;
			float _SnowHardness;
			float _SnowHeight;
			float _SnowBlendBias;
			float _SnowBlendSharpness;
			float _SnowFar;
			float _SnowNear;
			float _BlendBias;
			float _BlendSharpness;
			float _Variation2;
			float _Variation1;
			float _DirtSize;
			float _DirtFar;
			float _DirtNear;
			float _GrassFar;
			float _GrassNear;
			float _BlendFaloff;
			float _BlendDistance;
			float _RockFar;
			float _Variation3;
			float _RockNear;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _Rock;
			sampler2D _Grass;
			sampler2D _Dirt;
			sampler2D _T_Perlin_Noise_M;
			sampler2D _Variation;
			sampler2D _Snow;
			sampler2D _RockNormal;
			sampler2D _GrassNormal;
			sampler2D _SnowNormal;
			sampler2D _RockMask;
			sampler2D _GrassMask;
			sampler2D _Masks_4K__ugspafgdy;
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
			#define HAS_LIGHTLOOP
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float3 ase_normal : NORMAL;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			AttributesMesh ApplyMeshModification( AttributesMesh inputMesh )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = inputMesh.positionOS.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				inputMesh.positionOS.xz = sampleCoords* _TerrainHeightmapScale.xz;
				inputMesh.positionOS.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					inputMesh.normalOS = float3(0, 1, 0);
				#else
					inputMesh.normalOS = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				inputMesh.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return inputMesh;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				bentNormalWS = surfaceData.normalWS;
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				inputMesh = ApplyMeshModification(inputMesh);
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xy = inputMesh.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = inputMesh.tangentOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = v.previousPositionOS;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = v.precomputedVelocity;
					#endif
				#endif
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
					#endif
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(PackedVaryingsMeshToPS packedInput,
					#ifdef OUTPUT_SPLIT_LIGHTING
						out float4 outColor : SV_Target0,
						out float4 outDiffuseLighting : SV_Target1,
						OUTPUT_SSSBUFFER(outSSSBuffer)
					#else
						out float4 outColor : SV_Target0
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						, out float4 outMotionVec : SV_Target1
					#endif
					#endif
					#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
					#endif
					
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				input.positionSS.xy = _OffScreenRendering > 0 ? (input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;
				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float temp_output_1_0_g294 = _RockNear;
				float3 break8_g298 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g298 = (float2(break8_g298.x , break8_g298.y));
				float3 break15_g298 = abs( packedInput.ase_normal );
				float2 appendResult10_g298 = (float2(break8_g298.x , break8_g298.z));
				float2 appendResult11_g298 = (float2(break8_g298.y , break8_g298.z));
				float temp_output_17_0_g294 = _RockFar;
				float3 break8_g295 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g295 = (float2(break8_g295.x , break8_g295.y));
				float3 break15_g295 = abs( packedInput.ase_normal );
				float2 appendResult10_g295 = (float2(break8_g295.x , break8_g295.z));
				float2 appendResult11_g295 = (float2(break8_g295.y , break8_g295.z));
				float clampResult6_g86 = clamp( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - _BlendDistance ) / _BlendFaloff ) , 0.0 , 1.0 );
				float DistanceBlend177 = clampResult6_g86;
				float temp_output_19_0_g294 = DistanceBlend177;
				float4 lerpResult22_g294 = lerp( ( ( ( ( tex2D( _Rock, appendResult9_g298 ) * break15_g298.z ) + ( tex2D( _Rock, appendResult10_g298 ) * break15_g298.y ) ) + ( tex2D( _Rock, appendResult11_g298 ) * break15_g298.x ) ) * ( 1.0 / ( ( break15_g298.x + break15_g298.y ) + break15_g298.z ) ) ) , ( ( ( ( tex2D( _Rock, appendResult9_g295 ) * break15_g295.z ) + ( tex2D( _Rock, appendResult10_g295 ) * break15_g295.y ) ) + ( tex2D( _Rock, appendResult11_g295 ) * break15_g295.x ) ) * ( 1.0 / ( ( break15_g295.x + break15_g295.y ) + break15_g295.z ) ) ) , temp_output_19_0_g294);
				float4 temp_output_382_0 = lerpResult22_g294;
				float temp_output_1_0_g284 = _GrassNear;
				float3 break8_g288 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g288 = (float2(break8_g288.x , break8_g288.y));
				float3 break15_g288 = abs( packedInput.ase_normal );
				float2 appendResult10_g288 = (float2(break8_g288.x , break8_g288.z));
				float2 appendResult11_g288 = (float2(break8_g288.y , break8_g288.z));
				float temp_output_17_0_g284 = _GrassFar;
				float3 break8_g285 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g285 = (float2(break8_g285.x , break8_g285.y));
				float3 break15_g285 = abs( packedInput.ase_normal );
				float2 appendResult10_g285 = (float2(break8_g285.x , break8_g285.z));
				float2 appendResult11_g285 = (float2(break8_g285.y , break8_g285.z));
				float temp_output_19_0_g284 = DistanceBlend177;
				float4 lerpResult22_g284 = lerp( ( ( ( ( tex2D( _Grass, appendResult9_g288 ) * break15_g288.z ) + ( tex2D( _Grass, appendResult10_g288 ) * break15_g288.y ) ) + ( tex2D( _Grass, appendResult11_g288 ) * break15_g288.x ) ) * ( 1.0 / ( ( break15_g288.x + break15_g288.y ) + break15_g288.z ) ) ) , ( ( ( ( tex2D( _Grass, appendResult9_g285 ) * break15_g285.z ) + ( tex2D( _Grass, appendResult10_g285 ) * break15_g285.y ) ) + ( tex2D( _Grass, appendResult11_g285 ) * break15_g285.x ) ) * ( 1.0 / ( ( break15_g285.x + break15_g285.y ) + break15_g285.z ) ) ) , temp_output_19_0_g284);
				float temp_output_1_0_g289 = _DirtNear;
				float3 break8_g293 = ( ase_worldPos * temp_output_1_0_g289 );
				float2 appendResult9_g293 = (float2(break8_g293.x , break8_g293.y));
				float3 break15_g293 = abs( packedInput.ase_normal );
				float2 appendResult10_g293 = (float2(break8_g293.x , break8_g293.z));
				float2 appendResult11_g293 = (float2(break8_g293.y , break8_g293.z));
				float temp_output_17_0_g289 = _DirtFar;
				float3 break8_g290 = ( ase_worldPos * temp_output_17_0_g289 );
				float2 appendResult9_g290 = (float2(break8_g290.x , break8_g290.y));
				float3 break15_g290 = abs( packedInput.ase_normal );
				float2 appendResult10_g290 = (float2(break8_g290.x , break8_g290.z));
				float2 appendResult11_g290 = (float2(break8_g290.y , break8_g290.z));
				float temp_output_19_0_g289 = DistanceBlend177;
				float4 lerpResult22_g289 = lerp( ( ( ( ( tex2D( _Dirt, appendResult9_g293 ) * break15_g293.z ) + ( tex2D( _Dirt, appendResult10_g293 ) * break15_g293.y ) ) + ( tex2D( _Dirt, appendResult11_g293 ) * break15_g293.x ) ) * ( 1.0 / ( ( break15_g293.x + break15_g293.y ) + break15_g293.z ) ) ) , ( ( ( ( tex2D( _Dirt, appendResult9_g290 ) * break15_g290.z ) + ( tex2D( _Dirt, appendResult10_g290 ) * break15_g290.y ) ) + ( tex2D( _Dirt, appendResult11_g290 ) * break15_g290.x ) ) * ( 1.0 / ( ( break15_g290.x + break15_g290.y ) + break15_g290.z ) ) ) , temp_output_19_0_g289);
				float2 temp_cast_0 = (_DirtSize).xx;
				float2 texCoord237 = packedInput.ase_texcoord7.xy * temp_cast_0 + float2( 0,0 );
				float4 DirtBlend255 = tex2D( _T_Perlin_Noise_M, texCoord237 );
				float4 lerpResult251 = lerp( lerpResult22_g284 , lerpResult22_g289 , DirtBlend255);
				float2 temp_cast_1 = (_Variation1).xx;
				float2 texCoord273 = packedInput.ase_texcoord7.xy * temp_cast_1 + float2( 0,0 );
				float2 temp_cast_2 = (_Variation2).xx;
				float2 texCoord271 = packedInput.ase_texcoord7.xy * temp_cast_2 + float2( 0,0 );
				float2 temp_cast_3 = (_Variation3).xx;
				float2 texCoord278 = packedInput.ase_texcoord7.xy * temp_cast_3 + float2( 0,0 );
				float3 lerpResult274 = lerp( float3(0.5,0.5,0.5) , float3( 1,1,1 ) , ( ( tex2D( _Variation, texCoord273 ).r + 0.5 ) * ( ( tex2D( _Variation, texCoord271 ).r + 0.5 ) * ( tex2D( _Variation, texCoord278 ).r + 0.5 ) ) ));
				float3 Variation284 = lerpResult274;
				float3 normalizeResult38_g316 = normalize( float3( 0,1,0 ) );
				float dotResult37_g316 = dot( normalWS , normalizeResult38_g316 );
				float temp_output_88_0_g316 = _BlendSharpness;
				float clampResult46_g316 = clamp( ( ( dotResult37_g316 * temp_output_88_0_g316 ) + ( _BlendBias - ( temp_output_88_0_g316 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_392_87 = clampResult46_g316;
				float4 lerpResult77 = lerp( temp_output_382_0 , ( lerpResult251 * float4( Variation284 , 0.0 ) ) , temp_output_392_87);
				float temp_output_1_0_g299 = _SnowNear;
				float3 break8_g303 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g303 = (float2(break8_g303.x , break8_g303.y));
				float3 break15_g303 = abs( packedInput.ase_normal );
				float2 appendResult10_g303 = (float2(break8_g303.x , break8_g303.z));
				float2 appendResult11_g303 = (float2(break8_g303.y , break8_g303.z));
				float temp_output_17_0_g299 = _SnowFar;
				float3 break8_g300 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g300 = (float2(break8_g300.x , break8_g300.y));
				float3 break15_g300 = abs( packedInput.ase_normal );
				float2 appendResult10_g300 = (float2(break8_g300.x , break8_g300.z));
				float2 appendResult11_g300 = (float2(break8_g300.y , break8_g300.z));
				float temp_output_19_0_g299 = DistanceBlend177;
				float4 lerpResult22_g299 = lerp( ( ( ( ( tex2D( _Snow, appendResult9_g303 ) * break15_g303.z ) + ( tex2D( _Snow, appendResult10_g303 ) * break15_g303.y ) ) + ( tex2D( _Snow, appendResult11_g303 ) * break15_g303.x ) ) * ( 1.0 / ( ( break15_g303.x + break15_g303.y ) + break15_g303.z ) ) ) , ( ( ( ( tex2D( _Snow, appendResult9_g300 ) * break15_g300.z ) + ( tex2D( _Snow, appendResult10_g300 ) * break15_g300.y ) ) + ( tex2D( _Snow, appendResult11_g300 ) * break15_g300.x ) ) * ( 1.0 / ( ( break15_g300.x + break15_g300.y ) + break15_g300.z ) ) ) , temp_output_19_0_g299);
				float3 normalizeResult38_g315 = normalize( float3( 0,1,0 ) );
				float dotResult37_g315 = dot( normalWS , normalizeResult38_g315 );
				float temp_output_88_0_g315 = _SnowBlendSharpness;
				float clampResult46_g315 = clamp( ( ( dotResult37_g315 * temp_output_88_0_g315 ) + ( _SnowBlendBias - ( temp_output_88_0_g315 * 0.5 ) ) ) , 0.0 , 1.0 );
				float temp_output_391_87 = clampResult46_g315;
				float4 lerpResult367 = lerp( temp_output_382_0 , lerpResult22_g299 , temp_output_391_87);
				float temp_output_12_0_g270 = saturate( ( ( ase_worldPos.y - _SnowHeight ) * _SnowHardness ) );
				float4 lerpResult10_g270 = lerp( lerpResult77 , lerpResult367 , temp_output_12_0_g270);
				
				float3 break8_g296 = ( ase_worldPos * temp_output_1_0_g294 );
				float2 appendResult9_g296 = (float2(break8_g296.x , break8_g296.y));
				float temp_output_7_0_g294 = _RockNormalScale;
				float temp_output_27_0_g296 = temp_output_7_0_g294;
				float3 unpack2_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g296 ), temp_output_27_0_g296 );
				unpack2_g296.z = lerp( 1, unpack2_g296.z, saturate(temp_output_27_0_g296) );
				float3 break15_g296 = abs( packedInput.ase_normal );
				float2 appendResult10_g296 = (float2(break8_g296.x , break8_g296.z));
				float3 unpack3_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g296 ), temp_output_27_0_g296 );
				unpack3_g296.z = lerp( 1, unpack3_g296.z, saturate(temp_output_27_0_g296) );
				float2 appendResult11_g296 = (float2(break8_g296.y , break8_g296.z));
				float3 unpack4_g296 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g296 ), temp_output_27_0_g296 );
				unpack4_g296.z = lerp( 1, unpack4_g296.z, saturate(temp_output_27_0_g296) );
				float3 break8_g297 = ( ase_worldPos * temp_output_17_0_g294 );
				float2 appendResult9_g297 = (float2(break8_g297.x , break8_g297.y));
				float temp_output_27_0_g297 = temp_output_7_0_g294;
				float3 unpack2_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult9_g297 ), temp_output_27_0_g297 );
				unpack2_g297.z = lerp( 1, unpack2_g297.z, saturate(temp_output_27_0_g297) );
				float3 break15_g297 = abs( packedInput.ase_normal );
				float2 appendResult10_g297 = (float2(break8_g297.x , break8_g297.z));
				float3 unpack3_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult10_g297 ), temp_output_27_0_g297 );
				unpack3_g297.z = lerp( 1, unpack3_g297.z, saturate(temp_output_27_0_g297) );
				float2 appendResult11_g297 = (float2(break8_g297.y , break8_g297.z));
				float3 unpack4_g297 = UnpackNormalScale( tex2D( _RockNormal, appendResult11_g297 ), temp_output_27_0_g297 );
				unpack4_g297.z = lerp( 1, unpack4_g297.z, saturate(temp_output_27_0_g297) );
				float3 lerpResult23_g294 = lerp( ( ( ( ( unpack2_g296 * break15_g296.z ) + ( unpack3_g296 * break15_g296.y ) ) + ( unpack4_g296 * break15_g296.x ) ) * ( 1.0 / ( ( break15_g296.x + break15_g296.y ) + break15_g296.z ) ) ) , ( ( ( ( unpack2_g297 * break15_g297.z ) + ( unpack3_g297 * break15_g297.y ) ) + ( unpack4_g297 * break15_g297.x ) ) * ( 1.0 / ( ( break15_g297.x + break15_g297.y ) + break15_g297.z ) ) ) , temp_output_19_0_g294);
				float3 temp_output_382_2 = lerpResult23_g294;
				float3 break8_g286 = ( ase_worldPos * temp_output_1_0_g284 );
				float2 appendResult9_g286 = (float2(break8_g286.x , break8_g286.y));
				float temp_output_7_0_g284 = _GrassNormalScale;
				float temp_output_27_0_g286 = temp_output_7_0_g284;
				float3 unpack2_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g286 ), temp_output_27_0_g286 );
				unpack2_g286.z = lerp( 1, unpack2_g286.z, saturate(temp_output_27_0_g286) );
				float3 break15_g286 = abs( packedInput.ase_normal );
				float2 appendResult10_g286 = (float2(break8_g286.x , break8_g286.z));
				float3 unpack3_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g286 ), temp_output_27_0_g286 );
				unpack3_g286.z = lerp( 1, unpack3_g286.z, saturate(temp_output_27_0_g286) );
				float2 appendResult11_g286 = (float2(break8_g286.y , break8_g286.z));
				float3 unpack4_g286 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g286 ), temp_output_27_0_g286 );
				unpack4_g286.z = lerp( 1, unpack4_g286.z, saturate(temp_output_27_0_g286) );
				float3 break8_g287 = ( ase_worldPos * temp_output_17_0_g284 );
				float2 appendResult9_g287 = (float2(break8_g287.x , break8_g287.y));
				float temp_output_27_0_g287 = temp_output_7_0_g284;
				float3 unpack2_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult9_g287 ), temp_output_27_0_g287 );
				unpack2_g287.z = lerp( 1, unpack2_g287.z, saturate(temp_output_27_0_g287) );
				float3 break15_g287 = abs( packedInput.ase_normal );
				float2 appendResult10_g287 = (float2(break8_g287.x , break8_g287.z));
				float3 unpack3_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult10_g287 ), temp_output_27_0_g287 );
				unpack3_g287.z = lerp( 1, unpack3_g287.z, saturate(temp_output_27_0_g287) );
				float2 appendResult11_g287 = (float2(break8_g287.y , break8_g287.z));
				float3 unpack4_g287 = UnpackNormalScale( tex2D( _GrassNormal, appendResult11_g287 ), temp_output_27_0_g287 );
				unpack4_g287.z = lerp( 1, unpack4_g287.z, saturate(temp_output_27_0_g287) );
				float3 lerpResult23_g284 = lerp( ( ( ( ( unpack2_g286 * break15_g286.z ) + ( unpack3_g286 * break15_g286.y ) ) + ( unpack4_g286 * break15_g286.x ) ) * ( 1.0 / ( ( break15_g286.x + break15_g286.y ) + break15_g286.z ) ) ) , ( ( ( ( unpack2_g287 * break15_g287.z ) + ( unpack3_g287 * break15_g287.y ) ) + ( unpack4_g287 * break15_g287.x ) ) * ( 1.0 / ( ( break15_g287.x + break15_g287.y ) + break15_g287.z ) ) ) , temp_output_19_0_g284);
				float3 lerpResult78 = lerp( temp_output_382_2 , lerpResult23_g284 , temp_output_392_87);
				float3 break8_g301 = ( ase_worldPos * temp_output_1_0_g299 );
				float2 appendResult9_g301 = (float2(break8_g301.x , break8_g301.y));
				float temp_output_7_0_g299 = _SnowNormalScale;
				float temp_output_27_0_g301 = temp_output_7_0_g299;
				float3 unpack2_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g301 ), temp_output_27_0_g301 );
				unpack2_g301.z = lerp( 1, unpack2_g301.z, saturate(temp_output_27_0_g301) );
				float3 break15_g301 = abs( packedInput.ase_normal );
				float2 appendResult10_g301 = (float2(break8_g301.x , break8_g301.z));
				float3 unpack3_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g301 ), temp_output_27_0_g301 );
				unpack3_g301.z = lerp( 1, unpack3_g301.z, saturate(temp_output_27_0_g301) );
				float2 appendResult11_g301 = (float2(break8_g301.y , break8_g301.z));
				float3 unpack4_g301 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g301 ), temp_output_27_0_g301 );
				unpack4_g301.z = lerp( 1, unpack4_g301.z, saturate(temp_output_27_0_g301) );
				float3 break8_g302 = ( ase_worldPos * temp_output_17_0_g299 );
				float2 appendResult9_g302 = (float2(break8_g302.x , break8_g302.y));
				float temp_output_27_0_g302 = temp_output_7_0_g299;
				float3 unpack2_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult9_g302 ), temp_output_27_0_g302 );
				unpack2_g302.z = lerp( 1, unpack2_g302.z, saturate(temp_output_27_0_g302) );
				float3 break15_g302 = abs( packedInput.ase_normal );
				float2 appendResult10_g302 = (float2(break8_g302.x , break8_g302.z));
				float3 unpack3_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult10_g302 ), temp_output_27_0_g302 );
				unpack3_g302.z = lerp( 1, unpack3_g302.z, saturate(temp_output_27_0_g302) );
				float2 appendResult11_g302 = (float2(break8_g302.y , break8_g302.z));
				float3 unpack4_g302 = UnpackNormalScale( tex2D( _SnowNormal, appendResult11_g302 ), temp_output_27_0_g302 );
				unpack4_g302.z = lerp( 1, unpack4_g302.z, saturate(temp_output_27_0_g302) );
				float3 lerpResult23_g299 = lerp( ( ( ( ( unpack2_g301 * break15_g301.z ) + ( unpack3_g301 * break15_g301.y ) ) + ( unpack4_g301 * break15_g301.x ) ) * ( 1.0 / ( ( break15_g301.x + break15_g301.y ) + break15_g301.z ) ) ) , ( ( ( ( unpack2_g302 * break15_g302.z ) + ( unpack3_g302 * break15_g302.y ) ) + ( unpack4_g302 * break15_g302.x ) ) * ( 1.0 / ( ( break15_g302.x + break15_g302.y ) + break15_g302.z ) ) ) , temp_output_19_0_g299);
				float3 lerpResult368 = lerp( temp_output_382_2 , lerpResult23_g299 , temp_output_391_87);
				float3 lerpResult11_g270 = lerp( lerpResult78 , lerpResult368 , temp_output_12_0_g270);
				
				float2 uv_RockMask = packedInput.ase_texcoord7.xy * _RockMask_ST.xy + _RockMask_ST.zw;
				float4 tex2DNode60 = tex2D( _RockMask, uv_RockMask );
				float2 uv_GrassMask = packedInput.ase_texcoord7.xy * _GrassMask_ST.xy + _GrassMask_ST.zw;
				float lerpResult88 = lerp( tex2DNode60.a , tex2D( _GrassMask, uv_GrassMask ).a , temp_output_392_87);
				float2 uv_Masks_4K__ugspafgdy = packedInput.ase_texcoord7.xy * _Masks_4K__ugspafgdy_ST.xy + _Masks_4K__ugspafgdy_ST.zw;
				float lerpResult369 = lerp( tex2DNode60.a , tex2D( _Masks_4K__ugspafgdy, uv_Masks_4K__ugspafgdy ).a , temp_output_391_87);
				float lerpResult23_g270 = lerp( lerpResult88 , lerpResult369 , temp_output_12_0_g270);
				
				surfaceDescription.Albedo = lerpResult10_g270.rgb;
				surfaceDescription.Normal = lerpResult11_g270;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = 0;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult23_g270;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);
				#ifdef DEBUG_DISPLAY
				#ifdef OUTPUT_SPLIT_LIGHTING
					outDiffuseLighting = 0;
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#endif

				bool viewMaterial = false;
				int bufferSize = int(_DebugViewMaterialArray[0].x);
				if (bufferSize != 0)
				{
					bool needLinearToSRGB = false;
					float3 result = float3(1.0, 0.0, 1.0);

					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = int(_DebugViewMaterialArray[index].x);

						if (indexMaterialProperty != 0)
						{
							viewMaterial = true;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);
						}
					}

					if (!needLinearToSRGB)
						result = SRGBToLinear(max(0, result));

					outColor = float4(result, 1.0);
				}

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);

						GetPBRValidatorDebug(surfaceData, result);

						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
				#endif
					{
				#ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
				#else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
				#endif
					
						LightLoopOutput lightLoopOutput;
						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

						// Alias
						float3 diffuseLighting = lightLoopOutput.diffuseLighting;
						float3 specularLighting = lightLoopOutput.specularLighting;
					
						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

				#ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = 0;
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
				#endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
						if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
					}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}
			ENDHLSL
		}
		
	}
	CustomEditor "Rendering.HighDefinition.LightingShaderGraphGUI"
	
	
}
/*ASEBEGIN
Version=18800
64.8;319.2;2035.2;1043.8;2663.661;1423.201;2.557151;True;True
Node;AmplifyShaderEditor.RangedFloatNode;282;-3601.75,-473.5251;Inherit;False;Property;_Variation3;Variation 3;35;0;Create;True;0;0;0;False;0;False;2;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;281;-3597.025,-668.957;Inherit;False;Property;_Variation2;Variation 2;34;0;Create;True;0;0;0;False;0;False;0.05341;0.2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;283;-3597.405,-903.9328;Inherit;False;Property;_Variation1;Variation 1;33;0;Create;True;0;0;0;False;0;False;0.2134;0.09;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;278;-3369.127,-478.0822;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;271;-3365.313,-699.2692;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;280;-2979.709,-479.0822;Inherit;True;Property;_TextureSample3;Texture Sample 3;32;0;Create;True;0;0;0;False;0;False;-1;b4ab6ec80b9b3d349869bb78d26eea9b;b4ab6ec80b9b3d349869bb78d26eea9b;True;0;False;white;Auto;False;Instance;272;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;273;-3362,-936.1758;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;275;-2990.709,-705.0823;Inherit;True;Property;_TextureSample2;Texture Sample 2;32;0;Create;True;0;0;0;False;0;False;-1;b4ab6ec80b9b3d349869bb78d26eea9b;b4ab6ec80b9b3d349869bb78d26eea9b;True;0;False;white;Auto;False;Instance;272;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;238;-2729.079,-163.2996;Inherit;False;Property;_DirtSize;Dirt Size;31;0;Create;True;0;0;0;False;0;False;0;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;175;-2139.315,40.69505;Inherit;False;Property;_BlendDistance;Blend Distance;29;0;Create;True;0;0;0;False;0;False;0;100;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;269;-2615.709,-394.0822;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;272;-2993.709,-931.0823;Inherit;True;Property;_Variation;Variation;32;0;Create;True;0;0;0;False;0;False;-1;b4ab6ec80b9b3d349869bb78d26eea9b;b4ab6ec80b9b3d349869bb78d26eea9b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;176;-2131.155,215.9463;Inherit;False;Property;_BlendFaloff;Blend Faloff;30;0;Create;True;0;0;0;False;0;False;0;200;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;270;-2658.709,-626.0823;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;174;-1920.833,99.88204;Inherit;False;Distance Blend;-1;;86;dcce8b3773ddd12409a4435cab83bff0;0;2;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;237;-2524.593,-199.489;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;276;-2504.94,-558.9227;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;268;-2652.709,-876.0824;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;277;-2335.678,-741.7417;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;279;-2135.043,-833.1459;Inherit;False;Constant;_Vector0;Vector 0;3;0;Create;True;0;0;0;False;0;False;0.5,0.5,0.5;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;364;-2144.206,-206.608;Inherit;True;Property;_T_Perlin_Noise_M;T_Perlin_Noise_M;40;0;Create;True;0;0;0;False;0;False;-1;e6e0f469df849b9439c4c6d3b4aeb0c4;e6e0f469df849b9439c4c6d3b4aeb0c4;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;177;-1671.815,90.70648;Inherit;False;DistanceBlend;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;186;-607.1836,-180.8763;Inherit;False;177;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;185;-1068.105,-360.0451;Inherit;False;Property;_GrassFar;Grass Far;16;0;Create;True;0;0;0;False;0;False;40;0.04;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;274;-1945.632,-680.0823;Inherit;False;3;0;FLOAT3;1,0,0;False;1;FLOAT3;1,1,1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;259;-866.584,-923.5859;Inherit;True;Property;_Dirt;Dirt;3;0;Create;True;0;0;0;False;0;False;None;a140c8e962f2ade4a90badb9512a5263;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;182;-855.1973,-495.9834;Inherit;True;Property;_Grass;Grass;0;0;Create;True;0;0;0;False;0;False;None;1fcb6fd0a80f5d749a59a561416b0b56;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;262;-822.3871,-676.0475;Inherit;False;177;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;183;-842.8016,-278.2303;Inherit;True;Property;_GrassNormal;Grass Normal;1;0;Create;True;0;0;0;False;0;False;None;6005b1cc652a6e24db276e78c9c70cfb;True;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;65;-1157.987,-226.3029;Inherit;False;Property;_GrassNormalScale;Grass Normal Scale;17;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;255;-1669.617,-150.4622;Inherit;False;DirtBlend;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;260;-1019.527,-700.6064;Inherit;False;Property;_DirtFar;Dirt Far;19;0;Create;True;0;0;0;False;0;False;40;0.04;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;257;-1018.03,-793.4013;Inherit;False;Property;_DirtNear;Dirt Near;18;0;Create;True;0;0;0;False;0;False;40;0.07;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-1095.623,-477.9858;Inherit;False;Property;_GrassNear;Grass Near;15;0;Create;True;0;0;0;False;0;False;40;0.07;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;-430.8496,-492.7602;Inherit;False;255;DirtBlend;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;284;-1684.279,-643.1608;Inherit;False;Variation;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;381;-506.5111,-732.8724;Inherit;False;3Planar Mat;-1;;289;20d6ecaab76a1434c9c00dee4b8f7205;0;6;3;SAMPLER2D;0;False;5;SAMPLER2D;0;False;7;FLOAT;1;False;1;FLOAT;0.001;False;17;FLOAT;0;False;19;FLOAT;0;False;2;COLOR;0;FLOAT3;2
Node;AmplifyShaderEditor.FunctionNode;380;-532.9977,-345.8885;Inherit;False;3Planar Mat;-1;;284;20d6ecaab76a1434c9c00dee4b8f7205;0;6;3;SAMPLER2D;0;False;5;SAMPLER2D;0;False;7;FLOAT;1;False;1;FLOAT;0.001;False;17;FLOAT;0;False;19;FLOAT;0;False;2;COLOR;0;FLOAT3;2
Node;AmplifyShaderEditor.LerpOp;251;-226.886,-540.3251;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-1182.194,400.6446;Inherit;False;Property;_RockNormalScale;Rock Normal Scale;22;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;179;-1156.59,612.7444;Inherit;False;Property;_RockFar;Rock Far;21;0;Create;True;0;0;0;False;0;False;0;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;10;-861.8285,517.4575;Inherit;True;Property;_RockNormal;Rock Normal;5;0;Create;True;0;0;0;False;0;False;d0f5b18d8488bf24e8898c239c556680;1442a19385e89c04ba0ee9e57b065e77;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;116;-547.5782,124.6594;Inherit;False;Property;_BlendSharpness;Blend Sharpness;11;0;Create;True;0;0;0;False;0;False;30;16.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;371;-20.2178,-415.7993;Inherit;False;Property;_SnowBlendBias;Snow Blend Bias;14;0;Create;True;0;0;0;False;0;False;-12;-12;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;117;-538.8977,224.18;Inherit;False;Property;_BlendBias;Blend Bias;13;0;Create;True;0;0;0;False;0;False;-12;-14.7;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-1172.33,511.3577;Inherit;False;Property;_RockNear;Rock Near;20;0;Create;True;0;0;0;False;0;False;0.001;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;178;-614.2142,587.377;Inherit;False;177;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-719.4114,-1635.586;Inherit;False;177;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;142;-1382.774,-1743.211;Inherit;False;Property;_SnowNear;Snow Near;23;0;Create;True;0;0;0;False;0;False;0.001;0.05;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;370;-43.21848,-605.014;Inherit;False;Property;_SnowBlendSharpness;Snow Blend Sharpness;12;0;Create;True;0;0;0;False;0;False;30;36;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;9;-867.0287,299.5799;Inherit;True;Property;_Rock;Rock;4;0;Create;True;0;0;0;False;0;False;663e749da3d96e947bf729819e0cfd8b;ddfce55c099cf734696da9d772fce0c2;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;181;-1381.818,-1651.711;Inherit;False;Property;_SnowFar;Snow Far;24;0;Create;True;0;0;0;False;0;False;0.001;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;147;-982.7753,-1984.978;Inherit;True;Property;_Snow;Snow;7;0;Create;True;0;0;0;False;0;False;None;01034f8ad34ce4e49bb4f84baedfa3a0;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;285;-314.9325,-113.293;Inherit;False;284;Variation;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;148;-975.9306,-1765.942;Inherit;True;Property;_SnowNormal;Snow Normal;8;0;Create;True;0;0;0;False;0;False;None;a0a5847074a2aec4a96147ad4f683e3a;True;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;145;-1399.483,-1851.588;Inherit;False;Property;_SnowNormalScale;Snow Normal Scale;25;0;Create;True;0;0;0;False;0;False;1;1.5;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;391;198.7402,-629.9784;Inherit;False;Blending;-1;;315;8874773fa9c56d94cb5902bec1128093;0;3;36;FLOAT3;0,1,0;False;88;FLOAT;2;False;89;FLOAT;-1;False;1;FLOAT;87
Node;AmplifyShaderEditor.SamplerNode;365;-905.7235,-1448.332;Inherit;True;Property;_Masks_4K__ugspafgdy;Masks_4K__ugspafgdy;41;0;Create;True;0;0;0;False;0;False;-1;af416d2c2ac4ec74281dca09e2b1e65b;af416d2c2ac4ec74281dca09e2b1e65b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;81;-867.2359,-78.94388;Inherit;True;Property;_GrassMask;Grass Mask;2;0;Create;True;0;0;0;False;0;False;-1;None;7f29964c4bef46941846b07d64875af3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;392;-340.7055,90.47548;Inherit;False;Blending;-1;;316;8874773fa9c56d94cb5902bec1128093;0;3;36;FLOAT3;0,1,0;False;88;FLOAT;2;False;89;FLOAT;-1;False;1;FLOAT;87
Node;AmplifyShaderEditor.SamplerNode;60;-883.704,732.8754;Inherit;True;Property;_RockMask;Rock Mask;6;0;Create;True;0;0;0;False;0;False;-1;None;63798459bfd2084438409e6787338bd3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;265;-119.8953,-192.5872;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;382;-447.3246,382.8959;Inherit;False;3Planar Mat;-1;;294;20d6ecaab76a1434c9c00dee4b8f7205;0;6;3;SAMPLER2D;0;False;5;SAMPLER2D;0;False;7;FLOAT;1;False;1;FLOAT;0.001;False;17;FLOAT;0;False;19;FLOAT;0;False;2;COLOR;0;FLOAT3;2
Node;AmplifyShaderEditor.FunctionNode;383;-664.6131,-1869.336;Inherit;False;3Planar Mat;-1;;299;20d6ecaab76a1434c9c00dee4b8f7205;0;6;3;SAMPLER2D;0;False;5;SAMPLER2D;0;False;7;FLOAT;1;False;1;FLOAT;0.001;False;17;FLOAT;0;False;19;FLOAT;0;False;2;COLOR;0;FLOAT3;2
Node;AmplifyShaderEditor.LerpOp;368;617.4703,-885.05;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;367;629.6016,-1136.504;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;369;623.6093,-700.6578;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;230;283.9257,228.3627;Inherit;False;Property;_SnowHardness;Snow Hardness;27;0;Create;True;0;0;0;False;0;False;0;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;77;57.12757,-90.52917;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;229;293.2861,149.5401;Inherit;False;Property;_SnowHeight;Snow Height;26;0;Create;True;0;0;0;False;0;False;0;800;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;78;51.54281,72.09859;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;88;56.93279,226.6861;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;293;496.3415,13.01981;Inherit;False;Custom Gradient;-1;;270;3a2618eb8d7035248a839bf86964379f;0;8;1;COLOR;0,0,0,0;False;14;COLOR;0,0,0,0;False;15;FLOAT3;0,0,0;False;16;FLOAT3;0,0,0;False;33;FLOAT;0;False;32;FLOAT;0;False;8;FLOAT;0;False;9;FLOAT;0;False;3;COLOR;0;FLOAT3;17;FLOAT;29
Node;AmplifyShaderEditor.TexturePropertyNode;352;68.28372,1189.148;Inherit;True;Property;_Sand;Sand;9;0;Create;True;0;0;0;False;0;False;None;be346a8ea77910e48af955924c667777;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;356;770.5853,1046.19;Inherit;False;Property;_SandHeight;SandHeight;28;0;Create;True;0;0;0;False;0;False;0;16.65;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;359;-314.1981,1442.646;Inherit;False;Property;_SandNear;SandNear;38;0;Create;True;0;0;0;False;0;False;0;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-197.8253,1245.229;Inherit;False;Property;_SandNormalScale;SandNormalScale;37;0;Create;True;0;0;0;False;0;False;0;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;353;70.03122,1397.151;Inherit;True;Property;_SandNormal;SandNormal;10;0;Create;True;0;0;0;False;0;False;None;89eebc8a2077d164fb05f4305ace691c;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;360;-318.3541,1521.613;Inherit;False;Property;_SandFar;SandFar;39;0;Create;True;0;0;0;False;0;False;0;0.02;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;361;323.7743,1421.864;Inherit;False;177;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;384;445.8328,1190.896;Inherit;False;3Planar Mat;-1;;304;20d6ecaab76a1434c9c00dee4b8f7205;0;6;3;SAMPLER2D;0;False;5;SAMPLER2D;0;False;7;FLOAT;1;False;1;FLOAT;0.001;False;17;FLOAT;0;False;19;FLOAT;0;False;2;COLOR;0;FLOAT3;2
Node;AmplifyShaderEditor.RangedFloatNode;357;769.0981,1192.807;Inherit;False;Property;_SandHardness;SandHardness;36;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;339;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;340;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;346;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;8;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPrepass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;345;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;7;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;1;False;-1;False;True;True;True;True;True;0;True;-44;False;False;False;True;0;True;-23;True;0;True;-31;False;True;1;LightMode=TransparentBackface;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;343;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-8;255;False;-1;255;True;-9;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;338;942.7696,-7.642278;Float;False;True;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;2;Auto Material;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;35;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-13;255;False;-1;255;True;-12;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-14;False;True;1;LightMode=GBuffer;False;0;;0;0;Standard;41;Surface Type;0;  Rendering Pass;1;  Refraction Model;0;    Blending Mode;0;    Blend Preserves Specular;1;  Receive Fog;1;  Back Then Front Rendering;0;  Transparent Depth Prepass;0;  Transparent Depth Postpass;0;  Transparent Writes Motion Vector;0;  Distortion;0;    Distortion Mode;0;    Distortion Depth Test;1;  ZWrite;0;  Z Test;4;Double-Sided;0;Alpha Clipping;0;  Use Shadow Threshold;0;Material Type,InvertActionOnDeselection;0;  Energy Conserving Specular;1;  Transmission;1;Receive Decals;1;Receives SSR;1;Motion Vectors;1;  Add Precomputed Velocity;0;Specular AA;0;Specular Occlusion Mode;1;Override Baked GI;0;Depth Offset;0;DOTS Instancing;0;LOD CrossFade;0;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position;1;0;11;True;True;True;True;True;True;False;False;False;False;True;True;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;344;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Distortion;0;6;Distortion;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;-10;255;False;-1;255;True;-11;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;348;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;10;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;True;0;True;-28;False;True;True;True;True;True;0;True;-44;False;False;True;True;0;True;-4;255;False;-1;255;True;-5;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;0;True;-23;True;0;True;-30;False;True;1;LightMode=Forward;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;347;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;9;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;True;0;True;-25;True;False;False;False;False;0;False;-1;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPostpass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;341;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;342;919.7851,20.09932;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;True;True;0;True;-6;255;False;-1;255;True;-7;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;;0;0;Standard;0;False;0
WireConnection;278;0;282;0
WireConnection;271;0;281;0
WireConnection;280;1;278;0
WireConnection;273;0;283;0
WireConnection;275;1;271;0
WireConnection;269;0;280;1
WireConnection;272;1;273;0
WireConnection;270;0;275;1
WireConnection;174;7;175;0
WireConnection;174;8;176;0
WireConnection;237;0;238;0
WireConnection;276;0;270;0
WireConnection;276;1;269;0
WireConnection;268;0;272;1
WireConnection;277;0;268;0
WireConnection;277;1;276;0
WireConnection;364;1;237;0
WireConnection;177;0;174;0
WireConnection;274;0;279;0
WireConnection;274;2;277;0
WireConnection;255;0;364;0
WireConnection;284;0;274;0
WireConnection;381;3;259;0
WireConnection;381;1;257;0
WireConnection;381;17;260;0
WireConnection;381;19;262;0
WireConnection;380;3;182;0
WireConnection;380;5;183;0
WireConnection;380;7;65;0
WireConnection;380;1;70;0
WireConnection;380;17;185;0
WireConnection;380;19;186;0
WireConnection;251;0;380;0
WireConnection;251;1;381;0
WireConnection;251;2;256;0
WireConnection;391;88;370;0
WireConnection;391;89;371;0
WireConnection;392;88;116;0
WireConnection;392;89;117;0
WireConnection;265;0;251;0
WireConnection;265;1;285;0
WireConnection;382;3;9;0
WireConnection;382;5;10;0
WireConnection;382;7;15;0
WireConnection;382;1;11;0
WireConnection;382;17;179;0
WireConnection;382;19;178;0
WireConnection;383;3;147;0
WireConnection;383;5;148;0
WireConnection;383;7;145;0
WireConnection;383;1;142;0
WireConnection;383;17;181;0
WireConnection;383;19;180;0
WireConnection;368;0;382;2
WireConnection;368;1;383;2
WireConnection;368;2;391;87
WireConnection;367;0;382;0
WireConnection;367;1;383;0
WireConnection;367;2;391;87
WireConnection;369;0;60;4
WireConnection;369;1;365;4
WireConnection;369;2;391;87
WireConnection;77;0;382;0
WireConnection;77;1;265;0
WireConnection;77;2;392;87
WireConnection;78;0;382;2
WireConnection;78;1;380;2
WireConnection;78;2;392;87
WireConnection;88;0;60;4
WireConnection;88;1;81;4
WireConnection;88;2;392;87
WireConnection;293;1;367;0
WireConnection;293;14;77;0
WireConnection;293;15;368;0
WireConnection;293;16;78;0
WireConnection;293;33;369;0
WireConnection;293;32;88;0
WireConnection;293;8;229;0
WireConnection;293;9;230;0
WireConnection;384;3;352;0
WireConnection;384;5;353;0
WireConnection;384;7;358;0
WireConnection;384;1;359;0
WireConnection;384;17;360;0
WireConnection;384;19;361;0
WireConnection;338;0;293;0
WireConnection;338;1;293;17
WireConnection;338;7;293;29
ASEEND*/
//CHKSM=F312BD854C4FFD73C06EE721B015A152CB615615