.class public Lorg/jbox2d/collision/ManifoldPoint;
.super Ljava/lang/Object;
.source "ManifoldPoint.java"


# instance fields
.field public id:Lorg/jbox2d/collision/ContactID;

.field public localPoint1:Lorg/jbox2d/common/Vec2;

.field public localPoint2:Lorg/jbox2d/common/Vec2;

.field public normalImpulse:F

.field public separation:F

.field public tangentImpulse:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 55
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ManifoldPoint;)V
    .locals 2
    .param p1, "cp"    # Lorg/jbox2d/collision/ManifoldPoint;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 60
    iget-object v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    .line 61
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 62
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 63
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 64
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    iget-object v1, p1, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0, v1}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 65
    return-void
.end method
