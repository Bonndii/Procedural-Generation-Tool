using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseObjectPlacer : MonoBehaviour
{
    protected List<Vector3> GetAllLocationsForBiome(int mapResolution, float[,] heightMap, Vector3 heightmapScale, byte[,] biomeMap, int biomeIndex)
    {
        List<Vector3> locations = new List<Vector3>(mapResolution * mapResolution / 10);

        for(int x = 0; x < mapResolution; x++)
        {
            for(int y=0; y < mapResolution; y++)
            {
                if (biomeMap[x, y] != biomeIndex)
                    continue;

                locations.Add(new Vector3(y * heightmapScale.z, heightMap[x, y] * heightmapScale.y, x * heightmapScale.x));
            }
        }

        return locations;
    }  

    public virtual void Execute(ProcGenSO config, Transform objectRoot, int mapResolution, float[,] heightMap, Vector3 heightMapScale, float[,] slopeMap, float[,,] alphaMaps, int alphaMapResolution, byte[,] biomeMap = null, int biomeIndex = -1, BiomeSO biome = null)
    {

    }
}

