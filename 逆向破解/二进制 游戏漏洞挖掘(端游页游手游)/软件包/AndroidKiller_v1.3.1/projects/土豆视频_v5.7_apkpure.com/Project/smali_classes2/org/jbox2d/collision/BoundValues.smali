.class Lorg/jbox2d/collision/BoundValues;
.super Ljava/lang/Object;
.source "BroadPhase.java"


# instance fields
.field public lowerValues:[I

.field public upperValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jbox2d/collision/BoundValues;->lowerValues:[I

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jbox2d/collision/BoundValues;->upperValues:[I

    .line 56
    return-void
.end method
