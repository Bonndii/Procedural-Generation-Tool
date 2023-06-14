using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Biome Config", menuName = "Procedural Generation/Biome Configuration", order = -1) ]
public class BiomeSO : ScriptableObject
{
    public string Name;

    [Range(0f, 1f)] public float minIntensity = 0.5f;
    [Range(0f, 1f)] public float maxIntensity = 1f;

    [Range(0f, 1f)] public float MinDecayRate = 0.1f;
    [Range(0f, 1f)] public float MaxDecayRate = 0.2f;
    
    public GameObject ObjectPlacer;

    [Range(0f, 1000f)] public float minHeight = 50f;
    [Range(0f, 1000f)] public float maxHeight = 100f;
}
