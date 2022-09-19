.class Lorg/jbox2d/collision/CollidePoly$ClipVertex;
.super Ljava/lang/Object;
.source "CollidePoly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/CollidePoly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClipVertex"
.end annotation


# instance fields
.field id:Lorg/jbox2d/collision/ContactID;

.field v:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 39
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 40
    return-void
.end method
