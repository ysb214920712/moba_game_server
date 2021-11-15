using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using ZXing;
using ZXing.QrCode;
using ZXing.Common;
using System.IO;

public class ZXingQRCodeTool : MonoBehaviour
{
    static Texture2D tex_Encoded;
    static Texture2D tex_Result;

    public static void SaveToPath(Texture2D tex, string path)
    {
        byte[] data = tex.EncodeToPNG();
        File.WriteAllBytes(path, data);
    }

    public static Texture2D CreateTex(string qr, Texture2D org, int x, int y, int w, int h)
    {
        Texture2D tex = new Texture2D(org.width, org.height, TextureFormat.RGBA32, false);
        tex.SetPixels(org.GetPixels());

        // 编码成color32
        MultiFormatWriter writer = new MultiFormatWriter();
        Dictionary<EncodeHintType, object> hints = new Dictionary<EncodeHintType, object>();
        hints.Add(EncodeHintType.CHARACTER_SET, "UTF-8");
        hints.Add(EncodeHintType.MARGIN, 1);
        hints.Add(EncodeHintType.ERROR_CORRECTION, ZXing.QrCode.Internal.ErrorCorrectionLevel.M);
        BitMatrix bitMatrix = writer.encode(qr, BarcodeFormat.QR_CODE, w, h, hints);


        for (int i = 0; i < h; i++)
        {
            for (int j = 0; j < w; j++)
            {
                var indexy = (i + y);
                var indexx = j + x;
                if (bitMatrix[j, i])
                {
                    tex.SetPixel(indexx, indexy, Color.black);
                }
                else
                {
                    tex.SetPixel(indexx, indexy, Color.white);
                }
            }
        }

        tex.Apply();
        return tex;
    }

    //生成256*256二维码图片
    public static Texture2D CreateQRCode(string QRResult)
    {
        tex_Encoded = new Texture2D(256, 256);
        if (!string.IsNullOrEmpty(QRResult))
        {
            var color32 = Encode(QRResult, tex_Encoded.width, tex_Encoded.height);
            tex_Encoded.SetPixels32(color32);
            tex_Encoded.Apply();
        }

        //填充合适图片大小
        tex_Result = new Texture2D(200, 200);
        tex_Result.SetPixels(tex_Encoded.GetPixels(28, 28, 200, 200));
        tex_Result.Apply();

        return tex_Result;
    }

    //生成任意尺寸二维码图片
    public static Texture2D CreateQRCode(string QRResult, int width, int height)
    {
        // 编码成color32
        MultiFormatWriter writer = new MultiFormatWriter();
        Dictionary<EncodeHintType, object> hints = new Dictionary<EncodeHintType, object>();
        hints.Add(EncodeHintType.CHARACTER_SET, "UTF-8");
        hints.Add(EncodeHintType.MARGIN, 1);
        hints.Add(EncodeHintType.ERROR_CORRECTION, ZXing.QrCode.Internal.ErrorCorrectionLevel.M);
        BitMatrix bitMatrix = writer.encode(QRResult, BarcodeFormat.QR_CODE, width, height, hints);

        // 转成texture2d
        int w = bitMatrix.Width;
        int h = bitMatrix.Height;

        Texture2D texture = new Texture2D(w, h);
        for (int x = 0; x < h; x++)
        {
            for (int y = 0; y < w; y++)
            {
                if (bitMatrix[x, y])
                {
                    texture.SetPixel(y, x, Color.black);
                }
                else
                {
                    texture.SetPixel(y, x, Color.white);
                }
            }
        }
        texture.Apply();

        return texture;
    }


    //生成二维码算法
    private static Color32[] Encode(string textForEncoding, int width, int height)
    {
        var writer = new BarcodeWriter
        {
            Format = BarcodeFormat.QR_CODE,
            Options = new QrCodeEncodingOptions
            {
                Height = height,
                Width = width
            }
        };
        return writer.Write(textForEncoding);
    }
}
