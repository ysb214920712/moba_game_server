using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Defines
{
    public static string BundleExtraInfoName = "BundleExtraInfo";

    public static readonly char ABNameSeparatorChar = '_';
    public static readonly string AssetBoundleSuffix = "";

    public static readonly string SpriteAltasSourceImagePath = "Assets/Linked/Images";
    public static readonly string SpriteAltasPath = "Assets/Linked/BundledRes/spriteatlas";
    public static readonly string ExternResourcePath = "Assets/Linked/Resources";
    public static readonly string SpritePrefabPath = "Assets/Linked/BundledRes/sprite";


#if UNITY_ART
    public static string BundleExtraCacheInfoPath = "Assets/Scripts/Editor/Bundle/BundleExtraInfo.txt";
    public static string BundleExtraPackageInfoPath = "Assets/Scripts/Editor/Bundle/BundleExtraPackageInfo";
    public static readonly string AssetBundleSourcePath = "Assets/BundledRes";
    public static readonly string AssetBundleSceneSourcePath = "Assets/Scenes";
    public static readonly string FBXDefaultMaterialsPath = "Assets/Shaders/DefaultMaterials/default_fbx.mat";
    public static readonly string SpritePackerSourceImagePath = "Assets/BundledRes/image";
    public static readonly string SpriteAtlasSourcePath = "Assets/BundledRes/spriteAtlas";
    public static readonly string SpriteBackgroundSourcePath = "Assets/BundledRes/image/background";
    public static readonly string EffectTexturePath = "Assets/Effect/texture";
#else
    public static string BundleExtraCacheInfoPath = "Assets/Linked/Scripts/Editor/Bundle/BundleExtraInfo.txt";
    public static string BundleExtraPackageInfoPath = "Assets/Linked/Scripts/Editor/Bundle/BundleExtraPackageInfo.txt";
    public static readonly string AssetBundleSourcePath = "Assets/Linked/BundledRes";
    public static readonly string AssetBundleSceneSourcePath = "Assets/Linked/Scenes";
    public static readonly string FBXDefaultMaterialsPath = "Assets/Linked/Shaders/DefaultMaterials/default_fbx.mat";
    public static readonly string SpritePackerSourceImagePath = "Assets/Linked/BundledRes/image";
    public static readonly string SpriteAtlasSourcePath = "Assets/Linked/BundledRes/spriteAtlas";
    public static readonly string SpriteBackgroundSourcePath = "Assets/Linked/BundledRes/image/background";
    public static readonly string EffectTexturePath = "Assets/Linked/Effect/texture";
#endif


    public static readonly string LuaEntryFileName = "main";
    public static readonly string LuaSourcePath = "Assets/Scripts/Lua";
    public static readonly string LuaConfigPath = "Assets/Config";
    public static readonly string LuaByteCodePath = "Assets/Linked/Luas";
}
