using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

[CreateAssetMenu(fileName = "Landscape Config", menuName = "Procedural Generation/Landscape Configuration", order = -1)]
public class LandscapeConfiguration : BaseHeightMapModifier
{ 
    [SerializeField]private List<HightMapGenerator> HeightMaps;
    
    [Range(0f, 1f)]
    [SerializeField]private float blendingRatio;

    public enum EBlendingMode
    {
        None,
        Blend,
        Max,
        Add
    }

    public EBlendingMode BlendingMode = EBlendingMode.None;

    public Erosion erosion;

    public override void Execute(int mapResolution, float[,] heightMap, Vector3 heightMapScale, byte[,] biomeMap = null, int biomeIndex = -1, BiomeSO biome = null)
    {
        if (HeightMaps.Count == 0 || HeightMaps.All(h => h == null))
        {
            Debug.Log("Add at least 1 HeightMap Generator");
            return;
        }
        else if (HeightMaps.Count > 1 && HeightMaps[0] == null)
        {
            Debug.Log("Add HeightMap Generator as first element");
            return;
        }
        else if (HeightMaps[0] != null && HeightMaps.Count == 1 || HeightMaps[0] != null && HeightMaps[1] == null || BlendingMode == EBlendingMode.None)
        {
            float[,] result = HeightMaps[0].Generate(mapResolution, heightMap, heightMapScale);
            for(int x = 0; x < mapResolution; x++)
            {
                for(int y = 0; y < mapResolution; y++)
                {
                    heightMap[x, y] = result[x, y];
                }
            }
        } 
        else
        {
            Combine(heightMap, mapResolution, HeightMaps[0].Generate(mapResolution, heightMap, heightMapScale), HeightMaps[1].Generate(mapResolution, heightMap, heightMapScale));
        } 

        if(erosion != null)
        {
            erosion.Erode(heightMap, mapResolution);
        }
    }

    private void Combine(float[,] heightMap, int mapResolution, float[,] input1, float[,] input2)
    {
        switch (BlendingMode)
        {
            case EBlendingMode.Blend:
                for(int x = 0; x < mapResolution; x++)
                {
                    for(int y = 0; y < mapResolution; y++)
                    {
                        heightMap[x,y] = input1[x, y] * (1 - blendingRatio) + input2[x,y] * blendingRatio;
                    }
                }
                break;
            
            case EBlendingMode.Max:
                for(int x = 0; x < mapResolution; x++)
                {
                    for(int y = 0; y < mapResolution; y++)
                    {
                        heightMap[x,y] = Mathf.Max(input1[x, y], input2[x,y] * blendingRatio);
                    }
                }
                break;

            case EBlendingMode.Add:
                for(int x = 0; x < mapResolution; x++)
                {
                    for(int y = 0; y < mapResolution; y++)
                    {
                        heightMap[x,y] = input1[x, y] + input2[x,y] * blendingRatio;
                    }
                }
                break;
        }

        /* if(BlendingMode == EBlendingMode.Blend)
        {
            for(int x = 0; x < mapResolution; x++)
            {
                for(int y = 0; y < mapResolution; y++)
                {
                    heightMap[x,y] = input1[x, y] * (1 - blendingRatio) + input2[x,y] * blendingRatio;
                }
            }
        }
        else if(BlendingMode == EBlendingMode.Max)
        {
            for(int x = 0; x < mapResolution; x++)
            {
                for(int y = 0; y < mapResolution; y++)
                {
                    heightMap[x,y] = Mathf.Max(input1[x, y], input2[x,y] * blendingRatio);
                }
            }
        }
        else if(BlendingMode == EBlendingMode.Add)
        {
            for(int x = 0; x < mapResolution; x++)
            {
                for(int y = 0; y < mapResolution; y++)
                {
                    heightMap[x,y] = input1[x, y] + input2[x,y] * blendingRatio;
                }
            }
        } */
    }
}
