.class public Lorg/jbox2d/collision/Manifold;
.super Ljava/lang/Object;
.source "Manifold.java"


# instance fields
.field public normal:Lorg/jbox2d/common/Vec2;

.field public pointCount:I

.field public points:[Lorg/jbox2d/collision/ManifoldPoint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v1, v3, [Lorg/jbox2d/collision/ManifoldPoint;

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 45
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 47
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    new-instance v2, Lorg/jbox2d/collision/ManifoldPoint;

    invoke-direct {v2}, Lorg/jbox2d/collision/ManifoldPoint;-><init>()V

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Manifold;)V
    .locals 4
    .param p1, "other"    # Lorg/jbox2d/collision/Manifold;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jbox2d/collision/ManifoldPoint;

    iput-object v0, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    .line 55
    iget-object v0, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    iget-object v1, p0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    iget-object v2, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v0, p1, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 61
    iget v0, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    iput v0, p0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 62
    return-void
.end method
