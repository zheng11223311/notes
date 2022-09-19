.class public Lorg/jbox2d/dynamics/BodyDef;
.super Ljava/lang/Object;
.source "BodyDef.java"


# instance fields
.field public allowSleep:Z

.field public angle:F

.field public angularDamping:F

.field public fixedRotation:Z

.field public isBullet:Z

.field public isSleeping:Z

.field public linearDamping:F

.field public massData:Lorg/jbox2d/collision/MassData;

.field public position:Lorg/jbox2d/common/Vec2;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/jbox2d/collision/MassData;

    invoke-direct {v0}, Lorg/jbox2d/collision/MassData;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    .line 109
    iget-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1, v2, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v1, v0, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 110
    iget-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    iput v2, v0, Lorg/jbox2d/collision/MassData;->mass:F

    .line 111
    iget-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->massData:Lorg/jbox2d/collision/MassData;

    iput v2, v0, Lorg/jbox2d/collision/MassData;->I:F

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->userData:Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v2, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    .line 114
    iput v2, p0, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    .line 115
    iput v2, p0, Lorg/jbox2d/dynamics/BodyDef;->linearDamping:F

    .line 116
    iput v2, p0, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/BodyDef;->allowSleep:Z

    .line 118
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/BodyDef;->isSleeping:Z

    .line 119
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    .line 120
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/BodyDef;->isBullet:Z

    .line 121
    return-void
.end method
