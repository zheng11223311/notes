.class public Lorg/openad/common/util/DipUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFloatPixels(FLandroid/content/Context;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static asIntPixels(FLandroid/content/Context;)I
    .locals 2

    invoke-static {p0, p1}, Lorg/openad/common/util/DipUtils;->asFloatPixels(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dipsToFloatPixels(FLandroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lorg/openad/common/util/DipUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dipsToIntPixels(FLandroid/content/Context;)I
    .locals 2

    invoke-static {p0, p1}, Lorg/openad/common/util/DipUtils;->dipsToFloatPixels(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getDensity(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static pixelsToFloatDips(FLandroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lorg/openad/common/util/DipUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    div-float v0, p0, v0

    return v0
.end method

.method public static pixelsToIntDips(FLandroid/content/Context;)I
    .locals 2

    invoke-static {p0, p1}, Lorg/openad/common/util/DipUtils;->pixelsToFloatDips(FLandroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
