.class public Lio/rong/message/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBase64FromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "base64Str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 29
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x28

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 35
    .local v3, "bitmapBytes":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v5, "base64Str"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 45
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bitmapBytes":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    if-eqz v0, :cond_1

    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    :cond_1
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v4

    .line 50
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 42
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v4

    .line 50
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 45
    :goto_2
    if-eqz v0, :cond_2

    .line 46
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 51
    :cond_2
    :goto_3
    throw v5

    .line 49
    :catch_3
    move-exception v4

    .line 50
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 44
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 41
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "base64Str"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 64
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 65
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "widthLimit"    # I
    .param p3, "heightLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/16 v16, 0x0

    .line 71
    .local v16, "path":Ljava/lang/String;
    const/16 v17, 0x0

    .line 73
    .local v17, "result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 84
    :goto_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 86
    .local v11, "exifInterface":Landroid/media/ExifInterface;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 92
    .local v15, "orientation":I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_0

    const/16 v3, 0x8

    if-eq v15, v3, :cond_0

    const/4 v3, 0x5

    if-eq v15, v3, :cond_0

    const/4 v3, 0x7

    if-ne v15, v3, :cond_1

    .line 96
    :cond_0
    move/from16 v21, p2

    .line 97
    .local v21, "tmp":I
    move/from16 p2, p3

    .line 98
    move/from16 p3, v21

    .line 101
    .end local v21    # "tmp":I
    :cond_1
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 102
    .local v23, "width":I
    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 103
    .local v13, "height":I
    const/16 v20, 0x1

    .local v20, "sampleW":I
    const/16 v18, 0x1

    .line 104
    .local v18, "sampleH":I
    :goto_1
    div-int/lit8 v3, v23, 0x2

    move/from16 v0, p2

    if-le v3, v0, :cond_5

    .line 105
    div-int/lit8 v23, v23, 0x2

    .line 106
    shl-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 75
    .end local v11    # "exifInterface":Landroid/media/ExifInterface;
    .end local v13    # "height":I
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "orientation":I
    .end local v18    # "sampleH":I
    .end local v20    # "sampleW":I
    .end local v23    # "width":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 79
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x0

    .line 184
    :cond_4
    :goto_2
    return-object v2

    .line 110
    .restart local v11    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v13    # "height":I
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "orientation":I
    .restart local v18    # "sampleH":I
    .restart local v20    # "sampleW":I
    .restart local v23    # "width":I
    :cond_5
    :goto_3
    div-int/lit8 v3, v13, 0x2

    move/from16 v0, p3

    if-le v3, v0, :cond_6

    .line 111
    div-int/lit8 v13, v13, 0x2

    .line 112
    shl-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 114
    :cond_6
    const/16 v19, 0x1

    .line 116
    .local v19, "sampleSize":I
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 118
    :cond_7
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 122
    :goto_4
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 138
    .local v22, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 140
    .local v12, "h":I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_8

    const/16 v3, 0x8

    if-eq v15, v3, :cond_8

    const/4 v3, 0x5

    if-eq v15, v3, :cond_8

    const/4 v3, 0x7

    if-ne v15, v3, :cond_9

    .line 144
    :cond_8
    move/from16 v21, v22

    .line 145
    .restart local v21    # "tmp":I
    move/from16 v22, v12

    .line 146
    move/from16 v12, v21

    .line 148
    .end local v21    # "tmp":I
    :cond_9
    packed-switch v15, :pswitch_data_0

    .line 173
    :goto_6
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v3, v4

    .line 174
    .local v24, "xS":F
    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v25, v3, v4

    .line 176
    .local v25, "yS":F
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 178
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    move-object/from16 v2, v17

    .line 184
    goto/16 :goto_2

    .line 120
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "h":I
    .end local v22    # "w":I
    .end local v24    # "xS":F
    .end local v25    # "yS":F
    :cond_a
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto :goto_4

    .line 127
    :catch_0
    move-exception v10

    .line 128
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 129
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 150
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v12    # "h":I
    .restart local v22    # "w":I
    :pswitch_0
    const/high16 v3, 0x42b40000    # 90.0f

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 153
    :pswitch_1
    const/high16 v3, 0x43340000    # 180.0f

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 156
    :pswitch_2
    const/high16 v3, 0x43870000    # 270.0f

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 159
    :pswitch_3
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 162
    :pswitch_4
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 165
    :pswitch_5
    const/high16 v3, 0x42b40000    # 90.0f

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 166
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 169
    :pswitch_6
    const/high16 v3, 0x43870000    # 270.0f

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 170
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 179
    .restart local v24    # "xS":F
    .restart local v25    # "yS":F
    :catch_1
    move-exception v10

    .line 180
    .restart local v10    # "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 181
    const-string v3, "ResourceCompressHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOMHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "matrix:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
