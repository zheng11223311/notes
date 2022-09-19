.class public Lorg/jbox2d/util/blob/DonutBlobContainer;
.super Ljava/lang/Object;
.source "DonutBlobContainer.java"

# interfaces
.implements Lorg/jbox2d/util/blob/BlobContainer;


# instance fields
.field private centerX:F

.field private centerY:F

.field private radiusLarge:F

.field private radiusLargeSqr:F

.field private radiusSmall:F

.field private radiusSmallSqr:F


# direct methods
.method public constructor <init>(Lorg/jbox2d/common/Vec2;FF)V
    .locals 1
    .param p1, "_center"    # Lorg/jbox2d/common/Vec2;
    .param p2, "_radiusSmall"    # F
    .param p3, "_radiusLarge"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerX:F

    .line 16
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v0, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerY:F

    .line 17
    iput p2, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusSmall:F

    .line 18
    iput p3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLarge:F

    .line 19
    mul-float v0, p2, p2

    iput v0, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusSmallSqr:F

    .line 20
    mul-float v0, p3, p3

    iput v0, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLargeSqr:F

    .line 21
    return-void
.end method


# virtual methods
.method public containsPoint(Lorg/jbox2d/common/Vec2;)Z
    .locals 6
    .param p1, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    const/4 v1, 0x0

    .line 25
    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerX:F

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v4, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerX:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerY:F

    sub-float/2addr v3, v4

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v5, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerY:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 26
    .local v0, "distSqr":F
    iget v2, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLargeSqr:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    iget v2, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusSmallSqr:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 28
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAABB()Lorg/jbox2d/collision/AABB;
    .locals 6

    .prologue
    const v5, 0x3f99999a    # 1.2f

    .line 32
    new-instance v1, Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerX:F

    iget v3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLarge:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerY:F

    iget v4, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLarge:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 33
    .local v1, "min":Lorg/jbox2d/common/Vec2;
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerX:F

    iget v3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLarge:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->centerY:F

    iget v4, p0, Lorg/jbox2d/util/blob/DonutBlobContainer;->radiusLarge:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 34
    .local v0, "max":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/collision/AABB;

    invoke-direct {v2, v1, v0}, Lorg/jbox2d/collision/AABB;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v2
.end method
