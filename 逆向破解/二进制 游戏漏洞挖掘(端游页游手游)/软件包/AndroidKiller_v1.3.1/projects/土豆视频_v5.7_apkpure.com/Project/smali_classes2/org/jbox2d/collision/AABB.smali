.class public Lorg/jbox2d/collision/AABB;
.super Ljava/lang/Object;
.source "AABB.java"


# instance fields
.field public lowerBound:Lorg/jbox2d/common/Vec2;

.field public upperBound:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 51
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/AABB;)V
    .locals 2
    .param p1, "copy"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 46
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-direct {p0, v0, v1}, Lorg/jbox2d/collision/AABB;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "minVertex"    # Lorg/jbox2d/common/Vec2;
    .param p2, "maxVertex"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 42
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 43
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 56
    iget-object v4, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 57
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    move v1, v2

    .line 58
    .local v1, "valid":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 59
    :goto_1
    return v1

    .end local v1    # "valid":Z
    :cond_0
    move v1, v3

    .line 57
    goto :goto_0

    .restart local v1    # "valid":Z
    :cond_1
    move v1, v3

    .line 58
    goto :goto_1
.end method

.method public testOverlap(Lorg/jbox2d/collision/AABB;)Z
    .locals 5
    .param p1, "box"    # Lorg/jbox2d/collision/AABB;

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 65
    .local v0, "d1":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 67
    .local v1, "d2":Lorg/jbox2d/common/Vec2;
    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
