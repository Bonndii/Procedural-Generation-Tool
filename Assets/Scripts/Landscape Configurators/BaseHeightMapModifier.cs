using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseHeightMapModifier : ScriptableObject
{
    [SerializeField] [Range(0f, 1f)] protected float Strength = 1f;

    public virtual void Execute(int mapResolution, float[,] heightMap, Vector3 heightMapScale, byte[,] biomeMap = null, int biomeIndex = -1, BiomeSO biome = null)
    {

    }
}
