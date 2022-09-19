.class public Lorg/jbox2d/util/blob/CircularBlobContainer;
.super Ljava/lang/Object;
.source "CircularBlobContainer.java"

# interfaces
.implements Lorg/jbox2d/util/blob/BlobContainer;


# instance fields
.field private centerX:F

.field private centerY:F

.field private radius:F

.field private radiusSqr:F


# direct methods
.method public constructor <init>(Lorg/jbox2d/common/Vec2;F)V
    .locals 1
    .param p1, "_center"    # Lorg/jbox2d/common/Vec2;
    .param p2, "_radius"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    .line 16
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    .line 17
    iput p2, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    .line 18
    mul-float v0, p2, p2

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radiusSqr:F

    .line 19
    return-void
.end method


# virtual methods
.method public containsPoint(Lorg/jbox2d/common/Vec2;)Z
    .locals 5
    .param p1, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 40
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    sub-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 41
    .local v0, "distSqr":F
    iget v1, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radiusSqr:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 42
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAABB()Lorg/jbox2d/collision/AABB;
    .locals 6

    .prologue
    const v5, 0x3f99999a    # 1.2f

    .line 46
    new-instance v1, Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    iget v4, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 47
    .local v1, "min":Lorg/jbox2d/common/Vec2;
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    iget v4, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 48
    .local v0, "max":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/collision/AABB;

    invoke-direct {v2, v1, v0}, Lorg/jbox2d/collision/AABB;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v2
.end method

.method public getCenter()Lorg/jbox2d/common/Vec2;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    iget v2, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    return v0
.end method

.method public setCenter(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "c"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 35
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerX:F

    .line 36
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->centerY:F

    .line 37
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 26
    iput p1, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radius:F

    .line 27
    mul-float v0, p1, p1

    iput v0, p0, Lorg/jbox2d/util/blob/CircularBlobContainer;->radiusSqr:F

    .line 28
    return-void
.end method
