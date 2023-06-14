using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

#if UNITY_EDITOR
using UnityEditor;
using UnityEngine.SceneManagement;
#endif //UNITY_EDITOR


public class ProcGenManager : MonoBehaviour
{
    [SerializeField] ProcGenSO Config;
    [SerializeField] Terrain TargetTerrain;
    [SerializeField] bool RegenerateLayers = true;
    [HideInInspector] public float[,] NoiseMap;

#if UNITY_EDITOR
    byte[,] BiomeMap;
    float[,] BiomeStrengths;

    float[,] SlopeMap;
#endif //UNITY_EDITOR


#if UNITY_EDITOR
    public void RegenerateWorld()
    {
        // cache map resolution
        int mapResolution = TargetTerrain.terrainData.heightmapResolution;
        // cache alpha map resolution
        int alphaMapResolution = TargetTerrain.terrainData.alphamapResolution;

        // clear out any previously spawned objects
        for (int childIndex = transform.childCount - 1; childIndex >= 0; childIndex--)
        {
            Undo.DestroyObjectImmediate(transform.GetChild(childIndex).gameObject);
        }

        Perform_HeightMapModification(mapResolution, alphaMapResolution);

        Perform_BiomGeneration_LowResolution(mapResolution);

        Perform_ObjectPlacement(mapResolution, alphaMapResolution);
    }

    void Perform_BiomGeneration_LowResolution(int mapResolution)
    {
        // allocate the biome map and strength map
        BiomeMap = new byte[mapResolution, mapResolution];
        BiomeStrengths = new float[mapResolution, mapResolution];

        // setup space for the seed points
        int numSeedPoints = Config.NumberOfSeedPoints;
        List<byte> biomesToSpawn = new List<byte>(numSeedPoints);

        // populate the biomes to spawn based on weightings
        float totalBiomeWeighting = Config.TotalWeghting;
        for(int biomeIndex = 0; biomeIndex < Config.NumBiomes; biomeIndex++)
        {
            int numEntries = Mathf.RoundToInt(numSeedPoints * Config.Biomes[biomeIndex].Weighting / totalBiomeWeighting);

            for (int entryIndex = 0; entryIndex < numEntries; entryIndex++)
            {
                biomesToSpawn.Add((byte)biomeIndex);
            }
        }

        // spawn the individual biomes
        while(biomesToSpawn.Count > 0)
        {
            // pick a random seed point
            int seedPointIndex = Random.Range(0, biomesToSpawn.Count);

            //extract the biome index
            byte biomeIndex = biomesToSpawn[seedPointIndex];

            //remove seed point
            biomesToSpawn.RemoveAt(seedPointIndex);

            Perform_SpawnIndividualBiome(biomeIndex, mapResolution);

        }

        // save the biome map
        Texture2D biomeMap = new Texture2D(mapResolution, mapResolution, TextureFormat.RGB24, false);
        for (int y = 0; y < mapResolution; y++)
        {
            for (int x = 0; x < mapResolution; x++)
            {
                float hue = ((float)BiomeMap[x, y] / (float)Config.NumBiomes);

                biomeMap.SetPixel(x, y, Color.HSVToRGB(hue, 0.75f, 0.75f));
            }
        }
        biomeMap.Apply();

        System.IO.File.WriteAllBytes("BiomeMap.png", biomeMap.EncodeToPNG());
    }

    Vector2Int[] NeighbourOffsets = new Vector2Int[]
    {
        new Vector2Int(0, 1),
        new Vector2Int(0, -1),
        new Vector2Int(1, 0),
        new Vector2Int(-1, 0),
        new Vector2Int(1, 1),
        new Vector2Int(-1, -1),    
        new Vector2Int(1, 1),
        new Vector2Int(-1, 1)
    };

    void Perform_SpawnIndividualBiome(byte biomeIndex, int mapResolution)
    {
        float[,] heightMap = TargetTerrain.terrainData.GetHeights(0, 0, mapResolution, mapResolution);
        Vector3 heightMapScale = TargetTerrain.terrainData.heightmapScale;

        // biome config
        BiomeSO biomeConfig = Config.Biomes[biomeIndex].Biome;

        List<Vector2Int> possibleLocations = new List<Vector2Int>();

        for(int x = 0; x < mapResolution; x++)
        {
            for(int y = 0; y < mapResolution; y++)
            {
                if (heightMap[x, y] * heightMapScale.y <= biomeConfig.maxHeight && heightMap[x, y] * heightMapScale.y >= biomeConfig.minHeight) possibleLocations.Add(new Vector2Int(x, y));
            }
        }

        if(possibleLocations.Count == 0)
        {
            return;
        }
        // pick spawn location
        Vector2Int spawnLocation = possibleLocations[Random.Range(0, possibleLocations.Count)];

        // pick the starting intensity
        float startIntensity = Random.Range(biomeConfig.minIntensity, biomeConfig.maxIntensity);

        // setup working list
        Queue<Vector2Int> workingList = new Queue<Vector2Int>();
        workingList.Enqueue(spawnLocation);

        // setup the visited map and target intensity map
        bool[,] visited = new bool[mapResolution, mapResolution];
        float[,] targetIntensity = new float[mapResolution, mapResolution];

        // set the starting intensity
        targetIntensity[spawnLocation.x, spawnLocation.y] = startIntensity;

        //start generation
        while (workingList.Count > 0)
        {
            Vector2Int workingLocation = workingList.Dequeue();

            BiomeMap[workingLocation.x, workingLocation.y] = biomeIndex;
            visited[workingLocation.x, workingLocation.y] = true;

            for (int neighbourIndex = 0; neighbourIndex < NeighbourOffsets.Length; neighbourIndex++)
            {
                Vector2Int neighbourLocation = workingLocation + NeighbourOffsets[neighbourIndex];

                if (neighbourLocation.x < 0 || neighbourLocation.y < 0 || neighbourLocation.x >= mapResolution || neighbourLocation.y >= mapResolution 
                || heightMap[neighbourLocation.x, neighbourLocation.y] * heightMapScale.y > biomeConfig.maxHeight 
                || heightMap[neighbourLocation.x, neighbourLocation.y] * heightMapScale.y < biomeConfig.minHeight)
                    continue;

                if (visited[neighbourLocation.x, neighbourLocation.y])
                    continue;

                visited[neighbourLocation.x, neighbourLocation.y] = true;

                float decayAmount = Random.Range(biomeConfig.MinDecayRate, biomeConfig.MaxDecayRate) * NeighbourOffsets[neighbourIndex].magnitude;
                float neighbourStrength = targetIntensity[workingLocation.x, workingLocation.y] - decayAmount;
                targetIntensity[neighbourLocation.x, neighbourLocation.y] = neighbourStrength;

                if (neighbourStrength <= 0)
                    continue;

                workingList.Enqueue(neighbourLocation);
            }
        }
    }

    void Perform_HeightMapModification(int mapResolution, int alphaMapResolution)
    {
        float[,] heightMap = TargetTerrain.terrainData.GetHeights(0, 0, mapResolution, mapResolution);

        // run initial height modifiers
        if(Config.InitialHeightModifier != null)
        {
            LandscapeConfiguration modifier = Config.InitialHeightModifier;

            modifier.Execute(mapResolution, heightMap, TargetTerrain.terrainData.heightmapScale);
        }
    }

    void Perform_ObjectPlacement(int mapResolution, int alphaMapResolution)
    {
        float[,] heightMap = TargetTerrain.terrainData.GetHeights(0, 0, mapResolution, mapResolution);
        float[,,] alphaMaps = TargetTerrain.terrainData.GetAlphamaps(0, 0, alphaMapResolution, alphaMapResolution);

        // run object placement for each biome
        for (int biomeIndex = 0; biomeIndex < Config.NumBiomes; biomeIndex++)
        {
            var biome = Config.Biomes[biomeIndex].Biome;

            if (biome.ObjectPlacer == null)
                continue;

            BaseObjectPlacer[] modifiers = biome.ObjectPlacer.GetComponents<BaseObjectPlacer>();

            foreach (var modifier in modifiers)
            {
                modifier.Execute(Config, transform, mapResolution, heightMap, TargetTerrain.terrainData.heightmapScale, SlopeMap, alphaMaps, alphaMapResolution, BiomeMap, biomeIndex, biome);
            }
        }
    }

#endif //UNITY_EDITOR

}
