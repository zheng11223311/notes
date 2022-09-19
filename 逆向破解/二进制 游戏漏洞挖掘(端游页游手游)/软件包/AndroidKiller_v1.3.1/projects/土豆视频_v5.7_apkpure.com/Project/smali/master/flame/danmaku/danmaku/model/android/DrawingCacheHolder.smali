.class public Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
.super Ljava/lang/Object;
.source "DrawingCacheHolder.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapArray:[[Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public drawn:Z

.field public extra:Ljava/lang/Object;

.field public height:I

.field private mDensity:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "density"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZ)V

    .line 42
    return-void
.end method

.method private eraseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 135
    :cond_0
    return-void
.end method

.method private eraseBitmapArray()V
    .locals 3

    .prologue
    .line 138
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 145
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 140
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private recycleBitmapArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 157
    iput-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 150
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aput-object v3, v2, v1

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildCache(IIIZ)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "density"    # I
    .param p4, "checkSizeEquals"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-eqz p4, :cond_2

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-ne p2, v2, :cond_1

    .line 46
    .local v0, "reuse":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 48
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 50
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 69
    :goto_1
    return-void

    .end local v0    # "reuse":Z
    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    :cond_2
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-gt p1, v2, :cond_3

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-le p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 54
    .restart local v0    # "reuse":Z
    :cond_4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycle()V

    .line 57
    :cond_5
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 58
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    .line 59
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    if-lez p3, :cond_6

    .line 61
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    .line 62
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 64
    :cond_6
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_7

    .line 65
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 66
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_1

    .line 68
    :cond_7
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final declared-synchronized draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v6, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v6, :cond_0

    .line 184
    .end local v3    # "i":I
    :goto_1
    monitor-exit p0

    return v5

    .line 164
    .restart local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    :try_start_1
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    aget-object v0, v6, v4

    .line 166
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    int-to-float v6, v6

    add-float v1, p2, v6

    .line 168
    .local v1, "dleft":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 164
    .end local v1    # "dleft":F
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 171
    .restart local v1    # "dleft":F
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v3

    int-to-float v6, v6

    add-float v2, p3, v6

    .line 172
    .local v2, "dtop":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-gtz v6, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 175
    invoke-virtual {p1, v0, v1, v2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 162
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "dleft":F
    .end local v2    # "dtop":F
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 180
    :cond_4
    :try_start_2
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 181
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 184
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public erase()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmapArray()V

    .line 74
    return-void
.end method

.method public declared-synchronized recycle()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 81
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->extra:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public splitWith(IIII)V
    .locals 18
    .param p1, "dispWidth"    # I
    .param p2, "dispHeight"    # I
    .param p3, "maximumCacheWidth"    # I
    .param p4, "maximumCacheHeight"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 92
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    move/from16 v0, p3

    if-gt v14, v0, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    move/from16 v0, p4

    if-le v14, v0, :cond_0

    .line 98
    :cond_2
    move/from16 v0, p3

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 99
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 100
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int v15, v14, p3

    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    rem-int v14, v14, p3

    if-nez v14, :cond_4

    const/4 v14, 0x0

    :goto_1
    add-int v10, v15, v14

    .line 101
    .local v10, "xCount":I
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int v15, v14, p4

    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    rem-int v14, v14, p4

    if-nez v14, :cond_5

    const/4 v14, 0x0

    :goto_2
    add-int v12, v15, v14

    .line 102
    .local v12, "yCount":I
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int v3, v14, v10

    .line 103
    .local v3, "averageWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int v2, v14, v12

    .line 104
    .local v2, "averageHeight":I
    filled-new-array {v12, v10}, [I

    move-result-object v14

    const-class v15, Landroid/graphics/Bitmap;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Landroid/graphics/Bitmap;

    .line 105
    .local v5, "bmpArray":[[Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v14, :cond_3

    .line 106
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 107
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v14, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 111
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .local v8, "rectSrc":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v7, "rectDst":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .local v13, "yIndex":I
    :goto_3
    if-lt v13, v12, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    move-object/from16 v0, p0

    iput-object v5, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 100
    .end local v2    # "averageHeight":I
    .end local v3    # "averageWidth":I
    .end local v5    # "bmpArray":[[Landroid/graphics/Bitmap;
    .end local v7    # "rectDst":Landroid/graphics/Rect;
    .end local v8    # "rectSrc":Landroid/graphics/Rect;
    .end local v10    # "xCount":I
    .end local v12    # "yCount":I
    .end local v13    # "yIndex":I
    :cond_4
    const/4 v14, 0x1

    goto :goto_1

    .line 101
    .restart local v10    # "xCount":I
    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    .line 114
    .restart local v2    # "averageHeight":I
    .restart local v3    # "averageWidth":I
    .restart local v5    # "bmpArray":[[Landroid/graphics/Bitmap;
    .restart local v7    # "rectDst":Landroid/graphics/Rect;
    .restart local v8    # "rectSrc":Landroid/graphics/Rect;
    .restart local v12    # "yCount":I
    .restart local v13    # "yIndex":I
    :cond_6
    const/4 v11, 0x0

    .local v11, "xIndex":I
    :goto_4
    if-lt v11, v10, :cond_7

    .line 113
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 115
    :cond_7
    aget-object v14, v5, v13

    .line 116
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    invoke-static {v3, v2, v15}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v14, v11

    .line 117
    .local v4, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v14, :cond_8

    .line 118
    move-object/from16 v0, p0

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v4, v14}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 120
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v14, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    mul-int v6, v11, v3

    .local v6, "left":I
    mul-int v9, v13, v2

    .line 122
    .local v9, "top":I
    add-int v14, v6, v3

    add-int v15, v9, v2

    invoke-virtual {v8, v6, v9, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v8, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method
