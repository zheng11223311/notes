.class Lorg/jbox2d/collision/Point;
.super Ljava/lang/Object;
.source "Distance.java"

# interfaces
.implements Lorg/jbox2d/collision/SupportsGenericDistance;


# instance fields
.field public p:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "_p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/Point;->p:Lorg/jbox2d/common/Vec2;

    .line 396
    return-void
.end method


# virtual methods
.method public getFirstVertex(Lorg/jbox2d/common/XForm;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/jbox2d/collision/Point;->p:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public support(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;
    .param p2, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/jbox2d/collision/Point;->p:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method
