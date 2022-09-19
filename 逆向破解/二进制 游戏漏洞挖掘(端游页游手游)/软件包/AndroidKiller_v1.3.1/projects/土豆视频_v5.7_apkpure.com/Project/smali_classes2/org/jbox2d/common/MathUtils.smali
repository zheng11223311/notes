.class public Lorg/jbox2d/common/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clamp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 44
    invoke-static {p0, p2}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final clamp(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "low"    # Lorg/jbox2d/common/Vec2;
    .param p2, "high"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 48
    invoke-static {p0, p2}, Lorg/jbox2d/common/Vec2;->min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public static final isPowerOfTwo(I)Z
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 71
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 35
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static final min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static final nextPowerOfTwo(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 62
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 63
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 64
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 65
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 66
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 67
    add-int/lit8 v0, p0, 0x1

    return v0
.end method
