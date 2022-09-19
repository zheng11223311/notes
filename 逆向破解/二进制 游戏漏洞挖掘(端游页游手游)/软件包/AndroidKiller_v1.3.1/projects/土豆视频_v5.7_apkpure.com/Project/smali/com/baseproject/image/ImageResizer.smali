.class public Lcom/baseproject/image/ImageResizer;
.super Lcom/baseproject/image/ImageWorker;
.source "ImageResizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWorker"


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
    .line 66
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/baseproject/image/ImageResizer;->setImageSize(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/baseproject/image/ImageResizer;->setImageSize(II)V

    .line 51
    return-void
.end method

.method private processBitmap(ILandroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "resId"    # I
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-boolean v2, p0, Lcom/baseproject/image/ImageResizer;->isNeedCropHeight:Z

    if-nez v2, :cond_1

    .line 108
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/baseproject/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, p1, v2, v4}, Lcom/baseproject/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/baseproject/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/baseproject/image/ImageResizer;->mImageWidth:I

    iget v4, p0, Lcom/baseproject/image/ImageResizer;->mImageHeight:I

    invoke-virtual {p0, v1, p1, v2, v4}, Lcom/baseproject/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/baseproject/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/baseproject/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 125
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 126
    .local v7, "h":I
    iget v2, p0, Lcom/baseproject/image/ImageResizer;->mCropHeight:I

    sub-int v4, v7, v2

    const/4 v5, 0x0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 121
    .end local v3    # "w":I
    .end local v7    # "h":I
    :cond_2
    iget-object v2, p0, Lcom/baseproject/image/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/baseproject/image/ImageResizer;->mImageWidth:I

    iget v5, p0, Lcom/baseproject/image/ImageResizer;->mImageHeight:I

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/baseproject/image/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 231
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 232
    .local v0, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 233
    .local v4, "width":I
    const/4 v1, 0x1

    .line 235
    .local v1, "inSampleSize":I
    if-gt v0, p3, :cond_0

    if-le v4, p2, :cond_2

    .line 236
    :cond_0
    if-le v4, v0, :cond_1

    .line 237
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 249
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 253
    .local v2, "totalPixels":F
    mul-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 255
    .local v3, "totalReqPixelsCap":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "totalPixels":F
    .end local v3    # "totalReqPixelsCap":F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 262
    :cond_2
    return v1
.end method

.method public declared-synchronized decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 189
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {p0, v2, p2, p3}, Lcom/baseproject/image/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 206
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/baseproject/image/ImageResizer;->getImageCache()Lcom/baseproject/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baseproject/image/ImageCache;->clearCaches()V

    .line 203
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 187
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    .line 156
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p0, v1, p3, p4}, Lcom/baseproject/image/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 164
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected processBitmap(Ljava/lang/Object;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/baseproject/image/ImageResizer;->processBitmap(ILandroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setCropHeight(I)V
    .locals 1
    .param p1, "cropHeight"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baseproject/image/ImageResizer;->isNeedCropHeight:Z

    .line 94
    iput p1, p0, Lcom/baseproject/image/ImageResizer;->mCropHeight:I

    .line 95
    return-void
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1, p1}, Lcom/baseproject/image/ImageResizer;->setImageSize(II)V

    .line 87
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/baseproject/image/ImageResizer;->mImageWidth:I

    .line 77
    iput p2, p0, Lcom/baseproject/image/ImageResizer;->mImageHeight:I

    .line 78
    return-void
.end method
