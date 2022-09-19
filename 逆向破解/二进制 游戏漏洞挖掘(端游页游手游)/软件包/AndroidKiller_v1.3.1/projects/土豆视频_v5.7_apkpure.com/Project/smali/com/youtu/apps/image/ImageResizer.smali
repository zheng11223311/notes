.class public Lcom/youtu/apps/image/ImageResizer;
.super Lcom/youtu/apps/image/ImageWorker;
.source "ImageResizer.java"


# instance fields
.field private isNeedCropHeight:Z

.field protected mCropHeight:I

.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/youtu/apps/image/ImageResizer;->setImageSize(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/youtu/apps/image/ImageResizer;->setImageSize(II)V

    .line 47
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 207
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 208
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 209
    .local v4, "width":I
    const/4 v1, 0x1

    .line 211
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 212
    :cond_0
    if-le v4, v0, :cond_1

    .line 213
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 225
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 229
    .local v2, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 231
    .local v3, "totalReqPixelsCap":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v2    # "totalPixels":F
    .end local v3    # "totalReqPixelsCap":F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 235
    :cond_2
    return v1
.end method

.method public static declared-synchronized decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 172
    const-class v3, Lcom/youtu/apps/image/ImageResizer;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    invoke-static {v1, p1, p2}, Lcom/youtu/apps/image/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    .local v0, "b":Landroid/graphics/Bitmap;
    monitor-exit v3

    return-object v0

    .line 172
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 141
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    invoke-static {v1, p2, p3}, Lcom/youtu/apps/image/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private processBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v2, p0, Lcom/youtu/apps/image/ImageResizer;->isNeedCropHeight:Z

    if-nez v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/youtu/apps/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/youtu/apps/image/ImageResizer;->mImageWidth:I

    iget v4, p0, Lcom/youtu/apps/image/ImageResizer;->mImageHeight:I

    invoke-static {v1, p1, v2, v4}, Lcom/youtu/apps/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/youtu/apps/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/youtu/apps/image/ImageResizer;->mImageWidth:I

    iget v5, p0, Lcom/youtu/apps/image/ImageResizer;->mImageHeight:I

    invoke-static {v2, p1, v4, v5}, Lcom/youtu/apps/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 109
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 110
    .local v7, "h":I
    iget v2, p0, Lcom/youtu/apps/image/ImageResizer;->mCropHeight:I

    sub-int v4, v7, v2

    const/4 v5, 0x0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youtu/apps/image/ImageResizer;->processBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setCropHeight(I)V
    .locals 1
    .param p1, "cropHeight"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youtu/apps/image/ImageResizer;->isNeedCropHeight:Z

    .line 90
    iput p1, p0, Lcom/youtu/apps/image/ImageResizer;->mCropHeight:I

    .line 91
    return-void
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1, p1}, Lcom/youtu/apps/image/ImageResizer;->setImageSize(II)V

    .line 83
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/youtu/apps/image/ImageResizer;->mImageWidth:I

    .line 73
    iput p2, p0, Lcom/youtu/apps/image/ImageResizer;->mImageHeight:I

    .line 74
    return-void
.end method
