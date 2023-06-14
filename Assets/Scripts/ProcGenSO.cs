using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class BiomeConfig
{
    public BiomeSO Biome;

    [Range(0f, 1f)] public float Weighting = 1f;
}

[CreateAssetMenu(fileName = "ProcGen Config", menuName = "Procedural Generation/ProcGen Configuration", order = -1)]
public class ProcGenSO : ScriptableObject
{
    public List<BiomeConfig> Biomes;

    /* public enum EBiomeMapBaseResolution
    {
        Size64x64 = 64,
        Size_128x128 = 128,
        Size_256x256 = 256,
        Size_512x512 = 512
    } */

    [Range(0,1000)] public int NumberOfSeedPoints = 100;
    //public EBiomeMapBaseResolution BiomeMapResolution = EBiomeMapBaseResolution.Size64x64;

    public LandscapeConfiguration InitialHeightModifier;

    public int NumBiomes => Biomes.Count;

    public float TotalWeghting
    {
        get
        {
            float sum = 0f;

            foreach(var biome in Biomes)
            {
                sum += biome.Weighting;
            }

            return sum;
        }
    }
}
