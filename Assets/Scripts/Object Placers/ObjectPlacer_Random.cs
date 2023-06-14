using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectPlacer_Random : BaseObjectPlacer
{
    [SerializeField] float SpawnDensity = 0.1f;
    [SerializeField] int MaxSpawnCount = 10000;

    [SerializeField] GameObject Prefab;

    public override void Execute(ProcGenSO config, Transform objectRoot, int mapResolution, float[,] heightMap, Vector3 heightMapScale, float[,] slopeMap, float[,,] alphaMaps, int alphaMapResolution, byte[,] biomeMap = null, int biomeIndex = -1, BiomeSO biome = null)
    {
        // get potential spawn location
        List<Vector3> candidateLocations = GetAllLocationsForBiome(mapResolution, heightMap, heightMapScale, biomeMap, biomeIndex);

        int numToSpawn = Mathf.FloorToInt(Mathf.Min(MaxSpawnCount, candidateLocations.Count * SpawnDensity));
        for (int i = 0; i < numToSpawn; i++)
        {
            // pick a random location to spawn at
            int randomLocationIndex = Random.Range(0, candidateLocations.Count);
            Vector3 spawnLocation = candidateLocations[randomLocationIndex];
            candidateLocations.RemoveAt(randomLocationIndex);
            
            Quaternion rotation = Quaternion.Euler(0, Random.Range(0f, 360f), 0);

            // instantiate the prefab
            GameObject newObject = Instantiate(Prefab, spawnLocation, rotation, objectRoot);
        }
    }
}
