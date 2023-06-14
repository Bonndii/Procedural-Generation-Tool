using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Height Map", menuName = "Procedural Generation/HeightMap Generator", order = -1)]
public class HightMapGenerator : ScriptableObject
{
    [SerializeField]private int seed = 0;
    [SerializeField]private bool randomizeSeed = true;

    [SerializeField]private float heightMultiplier = 1.5f;

    [SerializeField]private int numOctaves = 7;

    [SerializeField]private float persistence = .5f;
    [SerializeField]private float lacunarity = 2;
    [SerializeField]private float initialScale = 2;
    
    [SerializeField]private float power = 1;
    public enum ENoiseType
    {
        Default,
        Ridged,
        Gorge
    }

    public ENoiseType NoiseType = ENoiseType.Default;

    public AnimationCurve noiseCurve;
    public bool useHeightMapTexture = false;

    public Texture2D heightMapTexture;

    public float[,] Generate(int mapResolution, float[,] heightMap, Vector3 heightMapScale, byte[,] biomeMap = null, int biomeIndex = -1, BiomeSO biome = null)
    {
        Texture2D continentalnessTexture = new Texture2D(mapResolution, mapResolution);

        float[,] result = new float[mapResolution, mapResolution];
        
        if(useHeightMapTexture && heightMapTexture != null)
        {   
            Texture2D resizedTexture;

            if(!heightMapTexture.isReadable)
            {
                Debug.Log("Make texture readable in texture settings");
            }

            if(heightMapTexture.width != mapResolution || heightMapTexture.height != mapResolution)
            {
                resizedTexture = Resize(heightMapTexture, mapResolution, mapResolution);
            }
            else resizedTexture = heightMapTexture;

            for (int y = 0; y < mapResolution; y++)
            {
                for (int x = 0; x < mapResolution; x++)
                {
                    result[y, x] = resizedTexture.GetPixel(y, x).grayscale * noiseCurve.Evaluate(heightMapTexture.GetPixel(y, x).grayscale) / heightMapScale.y;
                }
            }
        }
        else
        {
            seed = (randomizeSeed) ? Random.Range(-10000, 10000) : seed;
            var prng = new System.Random(seed);

            Vector2[] offsets = new Vector2[numOctaves];
            for (int i = 0; i < numOctaves; i++)
            {
                offsets[i] = new Vector2(prng.Next(-1000, 1000), prng.Next(-1000, 1000));
            }

            for (int y = 0; y < mapResolution; y++)
            {
                for (int x = 0; x < mapResolution; x++)
                {
                    float noiseValue = 0;
                    float scale = initialScale;
                    float weight = 1;
                    for (int i = 0; i < numOctaves; i++)
                    {
                        Vector2 p = offsets[i] + new Vector2(x / (float)mapResolution, y / (float)mapResolution) * scale;
                        noiseValue += Mathf.PerlinNoise(p.x, p.y) * weight;
                        weight *= persistence;
                        scale *= lacunarity;
                    }

                    switch (NoiseType)
                    {
                        case ENoiseType.Ridged:
                            noiseValue = 1 - Mathf.Abs(noiseValue-0.5f)*2f;
                            break;
                        case ENoiseType.Gorge:
                            noiseValue = Mathf.Abs(noiseValue-0.5f)*2f;
                            break;
                    }

                    if(noiseValue > 0) noiseValue = Mathf.Pow(noiseValue, power);

                    result[y, x] = heightMultiplier * noiseValue * noiseCurve.Evaluate(noiseValue) / heightMapScale.y; 

                    Color color = new Color(noiseValue, noiseValue, noiseValue);
                    continentalnessTexture.SetPixel(x, y, color);
                }  
            }
        }
        continentalnessTexture.Apply();
        System.IO.File.WriteAllBytes("Continentalness.png", continentalnessTexture.EncodeToPNG());

        return result;
    }

    Texture2D Resize(Texture2D source, int newWidth, int newHeight)
    {
        source.filterMode = FilterMode.Bilinear;
        RenderTexture rt = RenderTexture.GetTemporary(newWidth, newHeight);
        rt.filterMode = FilterMode.Point;
        RenderTexture.active = rt;
        Graphics.Blit(source, rt);
        Texture2D nTex = new Texture2D(newWidth, newHeight);
        nTex.ReadPixels(new Rect(0, 0, newWidth, newWidth), 0, 0);
        nTex.Apply();
        RenderTexture.active = null;
        return nTex;
    }
}
