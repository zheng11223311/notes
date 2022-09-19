.class public Ltv/cjump/jni/NativeBitmapFactory;
.super Ljava/lang/Object;
.source "NativeBitmapFactory.java"


# static fields
.field static nativeIntField:Ljava/lang/reflect/Field;

.field static nativeLibLoaded:Z

.field static notLoadAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 18
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 19
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createBitmap(IIIZ)Landroid/graphics/Bitmap;
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 147
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 155
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static native createBitmap19(IIIZ)Landroid/graphics/Bitmap;
.end method

.method private static createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 163
    invoke-static {p2}, Ltv/cjump/jni/NativeBitmapFactory;->getNativeConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 166
    .local v0, "nativeConfig":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap19(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    .line 167
    :cond_0
    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNativeConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 143
    :goto_0
    return v1

    .line 137
    :cond_0
    sget-object v2, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static native init()Z
.end method

.method static initField()V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    const-class v1, Landroid/graphics/Bitmap$Config;

    const-string v2, "nativeInt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    sput-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 89
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInNativeAlloc()Z
    .locals 2

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadLibs()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    sget-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealARMArch()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealX86Arch()Z

    move-result v3

    if-nez v3, :cond_2

    .line 30
    sput-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_0

    .line 33
    :cond_2
    sget-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-nez v3, :cond_0

    .line 37
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_4

    .line 38
    const-string v3, "ndkbitmap"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x1

    sput-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_1
    sget-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v3, :cond_3

    .line 54
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->init()Z

    move-result v2

    .line 55
    .local v2, "libInit":Z
    if-nez v2, :cond_5

    .line 56
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 57
    sput-boolean v6, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 58
    sput-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 71
    .end local v2    # "libInit":Z
    :cond_3
    :goto_2
    const-string v3, "NativeBitmapFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loaded"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_4
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 42
    const/4 v3, 0x0

    sput-boolean v3, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sput-boolean v6, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 47
    sput-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 50
    sput-boolean v6, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 51
    sput-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_1

    .line 60
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v2    # "libInit":Z
    :cond_5
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->initField()V

    .line 61
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->testLib()Z

    move-result v0

    .line 62
    .local v0, "confirm":Z
    if-nez v0, :cond_3

    .line 64
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 65
    sput-boolean v6, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 66
    sput-boolean v5, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_2
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    return-void
.end method

.method private static native release()Z
.end method

.method public static releaseLibs()V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 78
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 81
    return-void
.end method

.method private static testLib()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v12, 0x11

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 95
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    move v9, v10

    .line 123
    .local v0, "canvas":Landroid/graphics/Canvas;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v9

    .line 98
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x0

    .line 99
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 101
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x2

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v11, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 103
    .local v9, "result":Z
    :goto_1
    if-eqz v9, :cond_8

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v12, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 107
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    const-string v1, "TestLib"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v12, :cond_3

    .line 115
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isPremultiplied()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    .line 125
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v6, 0x0

    goto :goto_0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "result":Z
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    move v9, v10

    .line 102
    goto :goto_1

    .line 119
    :catch_0
    move-exception v8

    move-object v0, v7

    .line 120
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v1, "NativeBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    if-eqz v6, :cond_5

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v6, 0x0

    :cond_5
    move v9, v10

    .line 121
    goto/16 :goto_0

    .line 122
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v8

    move-object v0, v7

    .line 125
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .local v8, "e":Ljava/lang/Error;
    :goto_4
    if-eqz v6, :cond_6

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v6, 0x0

    :cond_6
    move v9, v10

    .line 123
    goto/16 :goto_0

    .line 124
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "e":Ljava/lang/Error;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    move-object v0, v7

    .line 125
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_5
    if-eqz v6, :cond_7

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v6, 0x0

    .line 129
    :cond_7
    throw v1

    .line 124
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 122
    .restart local v9    # "result":Z
    :catch_2
    move-exception v8

    goto :goto_4

    .line 119
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_8
    move-object v0, v7

    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2
.end method
