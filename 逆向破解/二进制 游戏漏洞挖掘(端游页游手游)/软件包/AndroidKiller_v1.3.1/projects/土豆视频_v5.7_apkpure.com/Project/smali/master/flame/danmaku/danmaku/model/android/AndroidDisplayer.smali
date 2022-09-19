.class public Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;
.super Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/AbsDisplayer",
        "<",
        "Landroid/graphics/Canvas;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# static fields
.field public static final BORDER_WIDTH:I = 0x4


# instance fields
.field private ALPHA_PAINT:Landroid/graphics/Paint;

.field private ANTI_ALIAS:Z

.field private BORDER_PAINT:Landroid/graphics/Paint;

.field public CONFIG_ANTI_ALIAS:Z

.field public CONFIG_HAS_PROJECTION:Z

.field public CONFIG_HAS_SHADOW:Z

.field public CONFIG_HAS_STROKE:Z

.field private HAS_PROJECTION:Z

.field private HAS_SHADOW:Z

.field private HAS_STROKE:Z

.field public PAINT:Landroid/text/TextPaint;

.field public PAINT_DUPLICATE:Landroid/text/TextPaint;

.field private SHADOW_RADIUS:F

.field private STROKE_WIDTH:F

.field public UNDERLINE_HEIGHT:I

.field private UNDERLINE_PAINT:Landroid/graphics/Paint;

.field private camera:Landroid/graphics/Camera;

.field public canvas:Landroid/graphics/Canvas;

.field private density:F

.field private densityDpi:I

.field private height:I

.field private isTextScaled:Z

.field private isTranslucent:Z

.field private mIsHardwareAccelerated:Z

.field private mMaximumBitmapHeight:I

.field private mMaximumBitmapWidth:I

.field private mSlopPixel:I

.field private matrix:Landroid/graphics/Matrix;

.field private final sCachedScaleSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private sLastScaleTextSize:F

.field private sProjectionAlpha:I

.field private sProjectionOffsetX:F

.field private sProjectionOffsetY:F

.field private sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

.field private scaleTextSize:F

.field private scaledDensity:F

.field private transparency:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x800

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    .line 68
    iput v5, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    .line 73
    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    .line 78
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    .line 79
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    .line 80
    const/16 v0, 0xcc

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 85
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 86
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    .line 91
    iput-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 92
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    .line 97
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 98
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    .line 103
    iput-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_ANTI_ALIAS:Z

    .line 104
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_ANTI_ALIAS:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    .line 106
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 108
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->transparency:I

    .line 109
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaleTextSize:F

    .line 110
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->isTextScaled:Z

    .line 199
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    .line 201
    const/16 v0, 0xa0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 203
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 205
    iput v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 207
    iput-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 209
    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 211
    iput v6, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 113
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    .line 114
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 115
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->ALPHA_PAINT:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    return-void
.end method

.method private applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "stroke"    # Z

    .prologue
    const v2, 0xffffff

    .line 449
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->isTranslucent:Z

    if-eqz v1, :cond_3

    .line 450
    if-eqz p3, :cond_2

    .line 451
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 452
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->transparency:I

    int-to-float v2, v2

    sget v3, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 455
    .local v0, "alpha":I
    :goto_1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    .end local v0    # "alpha":I
    :goto_2
    return-void

    .line 451
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    .line 454
    :cond_1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->transparency:I

    goto :goto_1

    .line 457
    :cond_2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 458
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->transparency:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 462
    :cond_3
    if-eqz p3, :cond_6

    .line 463
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_3
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 464
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v1, :cond_5

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 466
    .restart local v0    # "alpha":I
    :goto_4
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 463
    .end local v0    # "alpha":I
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_3

    .line 465
    :cond_5
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    goto :goto_4

    .line 468
    :cond_6
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 469
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2
.end method

.method private applyTextScaleConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 477
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->isTextScaled:Z

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 481
    .local v0, "size":Ljava/lang/Float;
    if-eqz v0, :cond_1

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sLastScaleTextSize:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaleTextSize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 482
    :cond_1
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaleTextSize:F

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sLastScaleTextSize:F

    .line 483
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaleTextSize:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private calcPaintWH(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .prologue
    .line 502
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    .line 503
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-direct {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setDanmakuPaintWidthAndHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FF)V

    .line 504
    return-void
.end method

.method private static final getMaximumBitmapHeight(Landroid/graphics/Canvas;)I
    .locals 2
    .param p0, "c"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private static final getMaximumBitmapWidth(Landroid/graphics/Canvas;)I
    .locals 2
    .param p0, "c"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .prologue
    const/4 v3, 0x0

    .line 427
    if-eqz p2, :cond_1

    .line 428
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    .line 433
    .local v0, "paint":Landroid/text/TextPaint;
    :goto_0
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 434
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyTextScaleConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V

    .line 437
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    cmpg-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-nez v1, :cond_2

    .line 438
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 442
    :goto_1
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 443
    return-object v0

    .line 430
    .end local v0    # "paint":Landroid/text/TextPaint;
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 431
    .restart local v0    # "paint":Landroid/text/TextPaint;
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 440
    :cond_2
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 412
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPaintAlpha(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq v0, v1, :cond_0

    .line 304
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 306
    :cond_0
    return-void
.end method

.method private restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    return-void
.end method

.method private saveCanvas(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 313
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 314
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationY:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 315
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationZ:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 316
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 317
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 318
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 320
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 321
    .local v0, "count":I
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 322
    return v0
.end method

.method private setDanmakuPaintWidthAndHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FF)V
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "w"    # F
    .param p3, "h"    # F

    .prologue
    const/high16 v3, 0x41000000    # 8.0f

    .line 507
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v1, p2, v2

    .line 508
    .local v1, "pw":F
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v0, p3, v2

    .line 509
    .local v0, "ph":F
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v2, :cond_0

    .line 510
    add-float/2addr v1, v3

    .line 511
    add-float/2addr v0, v3

    .line 513
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 514
    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 515
    return-void
.end method

.method private update(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 214
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    .line 218
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapWidth(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 220
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapHeight(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public clearTextHeightCache()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->clearCaches()V

    .line 520
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 521
    return-void
.end method

.method public draw(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 12
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v4

    .line 248
    .local v4, "top":F
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v3

    .line 249
    .local v3, "left":F
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 251
    const/4 v7, 0x0

    .line 252
    .local v7, "alphaPaint":Landroid/graphics/Paint;
    const/4 v10, 0x0

    .line 253
    .local v10, "needRestore":Z
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 254
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-ne v0, v1, :cond_1

    .line 299
    .end local v7    # "alphaPaint":Landroid/graphics/Paint;
    .end local v10    # "needRestore":Z
    :cond_0
    :goto_0
    return v5

    .line 257
    .restart local v7    # "alphaPaint":Landroid/graphics/Paint;
    .restart local v10    # "needRestore":Z
    :cond_1
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 258
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->saveCanvas(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I

    .line 259
    const/4 v10, 0x1

    .line 262
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v6

    .line 263
    .local v6, "alpha":I
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq v6, v0, :cond_4

    .line 264
    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->ALPHA_PAINT:Landroid/graphics/Paint;

    .line 265
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    .end local v6    # "alpha":I
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-eq v0, v1, :cond_0

    .line 274
    :cond_5
    const/4 v8, 0x0

    .line 275
    .local v8, "cacheDrawn":Z
    const/4 v11, 0x1

    .line 276
    .local v11, "result":I
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->get()Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    move-result-object v9

    .line 278
    .local v9, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    if-eqz v9, :cond_6

    .line 279
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v0, v3, v4, v7}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z

    move-result v8

    .line 282
    .end local v9    # "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    :cond_6
    if-nez v8, :cond_7

    .line 283
    if-eqz v7, :cond_9

    .line 284
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 288
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    .line 289
    const/4 v11, 0x2

    .line 292
    :cond_7
    if-eqz v10, :cond_8

    .line 293
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->restoreCanvas(Landroid/graphics/Canvas;)V

    :cond_8
    move v5, v11

    .line 296
    goto :goto_0

    .line 286
    :cond_9
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->resetPaintAlpha(Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V
    .locals 27
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "fromWorkerThread"    # Z

    .prologue
    .line 328
    move/from16 v23, p3

    .line 329
    .local v23, "_left":F
    move/from16 v19, p4

    .line 330
    .local v19, "_top":F
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v4, v4

    add-float p3, p3, v4

    .line 331
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v4, v4

    add-float p4, p4, v4

    .line 332
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v4, :cond_0

    .line 333
    const/high16 v4, 0x40800000    # 4.0f

    add-float p3, p3, v4

    .line 334
    const/high16 v4, 0x40800000    # 4.0f

    add-float p4, p4, v4

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    .line 338
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    .line 339
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    .line 340
    if-eqz p5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_ANTI_ALIAS:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v10

    .line 342
    .local v10, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawBackground(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)V

    .line 343
    move-object/from16 v0, p1

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 344
    move-object/from16 v0, p1

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    move-object/from16 v24, v0

    .line 345
    .local v24, "lines":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 346
    invoke-direct/range {p0 .. p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 348
    move/from16 v8, p3

    .line 349
    .local v8, "strokeLeft":F
    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v9, p4, v4

    .line 350
    .local v9, "strokeTop":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v4, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v8, v4

    .line 352
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v9, v4

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    const/4 v5, 0x0

    aget-object v6, v24, v5

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v10}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 356
    .end local v8    # "strokeLeft":F
    .end local v9    # "strokeTop":F
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    const/4 v4, 0x0

    aget-object v13, v24, v4

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v16, p4, v4

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v17, v10

    move/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    .line 396
    .end local v24    # "lines":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    if-eqz v4, :cond_4

    .line 397
    invoke-virtual/range {p0 .. p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getUnderlinePaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v16

    .line 398
    .local v16, "linePaint":Landroid/graphics/Paint;
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v4, v4, v19

    move-object/from16 v0, p0

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    int-to-float v5, v5

    sub-float v13, v4, v5

    .line 399
    .local v13, "bottom":F
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v14, v23, v4

    move-object/from16 v11, p2

    move/from16 v12, v23

    move v15, v13

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    .end local v13    # "bottom":F
    .end local v16    # "linePaint":Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v4, :cond_5

    .line 404
    invoke-virtual/range {p0 .. p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getBorderPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v22

    .line 405
    .local v22, "borderPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v20, v23, v4

    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v21, v19, v4

    move-object/from16 v17, p2

    move/from16 v18, v23

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 409
    .end local v22    # "borderPaint":Landroid/graphics/Paint;
    :cond_5
    return-void

    .line 340
    .end local v10    # "paint":Landroid/text/TextPaint;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 359
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v24    # "lines":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    move-object/from16 v0, p1

    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v24

    array-length v5, v0

    int-to-float v5, v5

    div-float v26, v4, v5

    .line 360
    .local v26, "textHeight":F
    const/16 v25, 0x0

    .local v25, "t":I
    :goto_2
    move-object/from16 v0, v24

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_3

    .line 361
    aget-object v4, v24, v25

    if-eqz v4, :cond_8

    aget-object v4, v24, v25

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 360
    :cond_8
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 364
    :cond_9
    invoke-direct/range {p0 .. p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 365
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 366
    move/from16 v8, p3

    .line 367
    .restart local v8    # "strokeLeft":F
    move/from16 v0, v25

    int-to-float v4, v0

    mul-float v4, v4, v26

    add-float v4, v4, p4

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float v9, v4, v5

    .line 368
    .restart local v9    # "strokeTop":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v4, :cond_a

    .line 369
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v8, v4

    .line 370
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v9, v4

    .line 372
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    aget-object v6, v24, v25

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v10}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 374
    .end local v8    # "strokeLeft":F
    .end local v9    # "strokeTop":F
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    aget-object v13, v24, v25

    move/from16 v0, v25

    int-to-float v4, v0

    mul-float v4, v4, v26

    add-float v4, v4, p4

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float v16, v4, v5

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v17, v10

    move/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto :goto_3

    .line 379
    .end local v24    # "lines":[Ljava/lang/String;
    .end local v25    # "t":I
    .end local v26    # "textHeight":F
    :cond_c
    invoke-direct/range {p0 .. p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 380
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 381
    move/from16 v8, p3

    .line 382
    .restart local v8    # "strokeLeft":F
    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v9, p4, v4

    .line 384
    .restart local v9    # "strokeTop":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v4, :cond_d

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v8, v4

    .line 386
    move-object/from16 v0, p0

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v9, v4

    .line 388
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v10}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 391
    .end local v8    # "strokeLeft":F
    .end local v9    # "strokeTop":F
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    const/4 v13, 0x0

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v16, p4, v4

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v17, v10

    move/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto/16 :goto_1
.end method

.method public bridge synthetic drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Object;FFZ)V
    .locals 6

    .prologue
    .line 1
    move-object v2, p2

    check-cast v2, Landroid/graphics/Canvas;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    return-void
.end method

.method public getBorderPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 416
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    return v0
.end method

.method public getExtraData()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public bridge synthetic getExtraData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getExtraData()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    return v0
.end method

.method public getMaximumCacheHeight()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    return v0
.end method

.method public getMaximumCacheWidth()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    return v0
.end method

.method public getSlopPixel()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v0, :cond_0

    .line 598
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 606
    :goto_0
    return v0

    .line 600
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v0, :cond_1

    .line 601
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    goto :goto_0

    .line 603
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v0, :cond_2

    .line 604
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    goto :goto_0

    .line 606
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnderlinePaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 421
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    return v0
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .prologue
    .line 491
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v0

    .line 492
    .local v0, "paint":Landroid/text/TextPaint;
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v1, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 495
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->calcPaintWH(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    .line 496
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v1, :cond_1

    .line 497
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 499
    :cond_1
    return-void
.end method

.method public resetSlopPixel(F)V
    .locals 4
    .param p1, "factor"    # F

    .prologue
    .line 530
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x442a8000    # 682.0f

    div-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 531
    .local v0, "d":F
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v1, v0, v2

    .line 532
    .local v1, "slop":F
    float-to-int v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 533
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 534
    mul-float v2, v1, p1

    float-to-int v2, v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 535
    :cond_0
    return-void
.end method

.method public setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;)V
    .locals 1
    .param p1, "cacheStuffer"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .prologue
    .line 183
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eq p1, v0, :cond_0

    .line 184
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 186
    :cond_0
    return-void
.end method

.method public setDanmakuStyle(I[F)V
    .locals 3
    .param p1, "style"    # I
    .param p2, "values"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 583
    :goto_0
    return-void

    .line 559
    :pswitch_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 560
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 561
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    goto :goto_0

    .line 564
    :pswitch_1
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 565
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 566
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 567
    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setShadowRadius(F)V

    goto :goto_0

    .line 571
    :pswitch_2
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 572
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 573
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 574
    aget v0, p2, v0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setPaintStorkeWidth(F)V

    goto :goto_0

    .line 577
    :pswitch_3
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 578
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 579
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 580
    aget v0, p2, v0

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setProjectionConfig(FFI)V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDensities(FIF)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F

    .prologue
    .line 544
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    .line 545
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 546
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 547
    return-void
.end method

.method public setExtraData(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "data"    # Landroid/graphics/Canvas;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->update(Landroid/graphics/Canvas;)V

    .line 588
    return-void
.end method

.method public bridge synthetic setExtraData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setExtraData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 1
    .param p1, "fakeBoldText"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 167
    return-void
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 612
    return-void
.end method

.method public setPaintStorkeWidth(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 153
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 154
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    .line 155
    return-void
.end method

.method public setProjectionConfig(FFI)V
    .locals 3
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "alpha"    # I

    .prologue
    const/16 v1, 0xff

    const/high16 v0, 0x3f800000    # 1.0f

    .line 158
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    if-eq v2, p3, :cond_2

    .line 159
    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    .end local p1    # "offsetX":F
    :goto_0
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    .line 160
    cmpl-float v2, p2, v0

    if-lez v2, :cond_4

    .end local p2    # "offsetY":F
    :goto_1
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    .line 161
    if-gez p3, :cond_5

    const/4 p3, 0x0

    .end local p3    # "alpha":I
    :cond_1
    :goto_2
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 163
    :cond_2
    return-void

    .restart local p1    # "offsetX":F
    .restart local p2    # "offsetY":F
    .restart local p3    # "alpha":I
    :cond_3
    move p1, v0

    .line 159
    goto :goto_0

    .end local p1    # "offsetX":F
    :cond_4
    move p2, v0

    .line 160
    goto :goto_1

    .line 161
    .end local p2    # "offsetY":F
    :cond_5
    if-le p3, v1, :cond_1

    move p3, v1

    goto :goto_2
.end method

.method public setScaleTextSizeFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->isTextScaled:Z

    .line 178
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaleTextSize:F

    .line 179
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShadowRadius(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 149
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    .line 150
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 551
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    .line 552
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    .line 553
    return-void
.end method

.method public setTransparency(I)V
    .locals 1
    .param p1, "newTransparency"    # I

    .prologue
    .line 171
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->isTranslucent:Z

    .line 172
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->transparency:I

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 146
    :cond_0
    return-void
.end method

.method public bridge synthetic setTypeFace(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setTypeFace(Landroid/graphics/Typeface;)V

    return-void
.end method
