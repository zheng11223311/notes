.class public Lcom/corncop/virgo/VirgoPreDecodeAct;
.super Ljava/lang/Object;
.source "VirgoPreDecodeAct.java"


# static fields
.field private static HEIGHT_MAX:F

.field private static WIDTH_MAX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 18
    sput v0, Lcom/corncop/virgo/VirgoPreDecodeAct;->WIDTH_MAX:F

    .line 19
    sput v0, Lcom/corncop/virgo/VirgoPreDecodeAct;->HEIGHT_MAX:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 196
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 197
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 199
    .local v3, "width":I
    const/4 v2, 0x1

    .line 200
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 202
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 204
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 207
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 209
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 207
    goto :goto_0
.end method

.method public static comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    .line 134
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    div-int/lit16 v9, v9, 0x400

    const/16 v10, 0x400

    if-le v9, v10, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 138
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-virtual {p0, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    .local v5, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 143
    .local v6, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 147
    .local v7, "w":I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 149
    .local v3, "h":I
    sget v4, Lcom/corncop/virgo/VirgoPreDecodeAct;->WIDTH_MAX:F

    .line 150
    .local v4, "hh":F
    sget v8, Lcom/corncop/virgo/VirgoPreDecodeAct;->HEIGHT_MAX:F

    .line 152
    .local v8, "ww":F
    const/4 v1, 0x1

    .line 153
    .local v1, "be":I
    if-le v7, v3, :cond_3

    int-to-float v9, v7

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    .line 154
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v1, v9

    .line 158
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    .line 159
    const/4 v1, 0x1

    .line 160
    :cond_2
    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .restart local v5    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 164
    invoke-static {v2}, Lcom/corncop/virgo/VirgoPreDecodeAct;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 155
    :cond_3
    if-ge v7, v3, :cond_1

    int-to-float v9, v3

    cmpl-float v9, v9, v4

    if-lez v9, :cond_1

    .line 156
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v4

    float-to-int v1, v9

    goto :goto_0
.end method

.method private static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-object v1

    .line 26
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 28
    const/16 v3, 0x64

    .line 29
    .local v3, "options":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v5, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 31
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 32
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 33
    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    .line 38
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static compressImage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "desPath"    # Ljava/lang/String;
    .param p2, "maxKB"    # I

    .prologue
    .line 45
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v2, v6, v8

    .line 53
    .local v2, "filesize":J
    int-to-long v6, p2

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 54
    invoke-static {p0, p1}, Lcom/corncop/virgo/VirgoPreDecodeAct;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0}, Lcom/corncop/virgo/VirgoPreDecodeAct;->getImageByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    .local v4, "image":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    div-int/lit16 v6, v6, 0x400

    int-to-long v2, v6

    .line 63
    const/16 v5, 0x50

    .line 64
    .local v5, "options":I
    :goto_1
    int-to-long v6, p2

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 66
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v6, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    div-int/lit16 v6, v6, 0x400

    int-to-long v2, v6

    .line 68
    const/16 v6, 0x14

    if-le v5, v6, :cond_3

    .line 69
    add-int/lit8 v5, v5, -0x14

    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v0, p1}, Lcom/corncop/virgo/VirgoPreDecodeAct;->saveImage(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 216
    .local v1, "byteread":I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v6, "oldfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 219
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 220
    .local v4, "fs":Ljava/io/FileOutputStream;
    const v7, 0x19000

    new-array v0, v7, [B

    .line 222
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 223
    add-int/2addr v2, v1

    .line 224
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(I)V

    .line 225
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0    # "buffer":[B
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "oldfile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 231
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "\u590d\u5236\u5355\u4e2a\u6587\u4ef6\u64cd\u4f5c\u51fa\u9519"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 227
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "oldfile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 185
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 187
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 188
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 189
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/corncop/virgo/VirgoPreDecodeAct;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v2, 0x1

    .line 170
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 172
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 173
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 174
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 175
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    invoke-static {v0, p1, p2}, Lcom/corncop/virgo/VirgoPreDecodeAct;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getImageByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 85
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 82
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getcompressedimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    .local v4, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 97
    .local v5, "w":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 99
    .local v2, "h":I
    sget v3, Lcom/corncop/virgo/VirgoPreDecodeAct;->WIDTH_MAX:F

    .line 100
    .local v3, "hh":F
    sget v6, Lcom/corncop/virgo/VirgoPreDecodeAct;->HEIGHT_MAX:F

    .line 102
    .local v6, "ww":F
    const/4 v0, 0x1

    .line 103
    .local v0, "be":I
    if-le v5, v2, :cond_2

    int-to-float v7, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_2

    .line 104
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v0, v7

    .line 108
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 110
    :cond_1
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 113
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/corncop/virgo/VirgoPreDecodeAct;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 105
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-ge v5, v2, :cond_0

    int-to-float v7, v2

    cmpl-float v7, v7, v3

    if-lez v7, :cond_0

    .line 106
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v0, v7

    goto :goto_0
.end method

.method public static saveImage(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "desPath"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
