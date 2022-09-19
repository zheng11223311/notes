.class public Lio/rong/imkit/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBitmapOptionsInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "input":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 213
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 214
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v1, :cond_1

    .line 228
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    :cond_1
    :goto_1
    return-object v3

    .line 210
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-nez v1, :cond_3

    .line 219
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imkit/utils/FileUtil;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 221
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v1, :cond_1

    .line 228
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 229
    :catch_1
    move-exception v4

    goto :goto_1

    .line 226
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 228
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    :cond_4
    :goto_2
    throw v4

    .line 229
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static getBase64FromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "base64Str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 34
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 36
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x3c

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 40
    .local v3, "bitmapBytes":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 49
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bitmapBytes":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :cond_1
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v4

    .line 54
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 46
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 53
    :catch_2
    move-exception v4

    .line 54
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 49
    :goto_2
    if-eqz v0, :cond_2

    .line 50
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    :cond_2
    :goto_3
    throw v5

    .line 53
    :catch_3
    move-exception v4

    .line 54
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 48
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 45
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
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 68
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 69
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
    .line 74
    const/16 v16, 0x0

    .line 75
    .local v16, "path":Ljava/lang/String;
    const/16 v17, 0x0

    .line 77
    .local v17, "result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 88
    :goto_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 90
    .local v11, "exifInterface":Landroid/media/ExifInterface;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 96
    .local v15, "orientation":I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_0

    const/16 v3, 0x8

    if-eq v15, v3, :cond_0

    const/4 v3, 0x5

    if-eq v15, v3, :cond_0

    const/4 v3, 0x7

    if-ne v15, v3, :cond_1

    .line 100
    :cond_0
    move/from16 v21, p2

    .line 101
    .local v21, "tmp":I
    move/from16 p2, p3

    .line 102
    move/from16 p3, v21

    .line 105
    .end local v21    # "tmp":I
    :cond_1
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 106
    .local v23, "width":I
    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 107
    .local v13, "height":I
    const/16 v20, 0x1

    .local v20, "sampleW":I
    const/16 v18, 0x1

    .line 108
    .local v18, "sampleH":I
    :goto_1
    div-int/lit8 v3, v23, 0x2

    move/from16 v0, p2

    if-le v3, v0, :cond_5

    .line 109
    div-int/lit8 v23, v23, 0x2

    .line 110
    shl-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 79
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

    .line 80
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

    .line 81
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x0

    .line 188
    :cond_4
    :goto_2
    return-object v2

    .line 114
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

    .line 115
    div-int/lit8 v13, v13, 0x2

    .line 116
    shl-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 118
    :cond_6
    const/16 v19, 0x1

    .line 120
    .local v19, "sampleSize":I
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 122
    :cond_7
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 126
    :goto_4
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 138
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 142
    .local v22, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 144
    .local v12, "h":I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_8

    const/16 v3, 0x8

    if-eq v15, v3, :cond_8

    const/4 v3, 0x5

    if-eq v15, v3, :cond_8

    const/4 v3, 0x7

    if-ne v15, v3, :cond_9

    .line 148
    :cond_8
    move/from16 v21, v22

    .line 149
    .restart local v21    # "tmp":I
    move/from16 v22, v12

    .line 150
    move/from16 v12, v21

    .line 152
    .end local v21    # "tmp":I
    :cond_9
    packed-switch v15, :pswitch_data_0

    .line 177
    :goto_6
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v3, v4

    .line 178
    .local v24, "xS":F
    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v25, v3, v4

    .line 180
    .local v25, "yS":F
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
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

    .line 188
    goto/16 :goto_2

    .line 124
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

    .line 131
    :catch_0
    move-exception v10

    .line 132
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 133
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 154
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

    .line 157
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

    .line 160
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

    .line 163
    :pswitch_3
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 166
    :pswitch_4
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 169
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

    .line 170
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 173
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

    .line 174
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 183
    .restart local v24    # "xS":F
    .restart local v25    # "yS":F
    :catch_1
    move-exception v10

    .line 184
    .restart local v10    # "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 185
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 152
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

.method public static getRotateBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "degrees"    # F
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 193
    .local v3, "bmpW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 195
    .local v4, "bmpH":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    .local v5, "mt":Landroid/graphics/Matrix;
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 201
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static rotateBitMap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 248
    const/4 v10, 0x0

    .line 251
    .local v10, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "exif":Landroid/media/ExifInterface;
    .local v11, "exif":Landroid/media/ExifInterface;
    move-object v10, v11

    .line 256
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    :goto_0
    const/4 v8, 0x0

    .line 258
    .local v8, "degree":F
    if-eqz v10, :cond_0

    .line 259
    const-string v0, "Orientation"

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v8, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 280
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    if-eq p1, v7, :cond_1

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    move-object p1, v7

    .line 286
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_1
    return-object p1

    .line 252
    .end local v8    # "degree":F
    :catch_0
    move-exception v9

    .line 253
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "degree":F
    :pswitch_1
    const/high16 v8, 0x42b40000    # 90.0f

    .line 263
    goto :goto_1

    .line 265
    :pswitch_2
    const/high16 v8, 0x43340000    # 180.0f

    .line 266
    goto :goto_1

    .line 268
    :pswitch_3
    const/high16 v8, 0x43870000    # 270.0f

    .line 269
    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
