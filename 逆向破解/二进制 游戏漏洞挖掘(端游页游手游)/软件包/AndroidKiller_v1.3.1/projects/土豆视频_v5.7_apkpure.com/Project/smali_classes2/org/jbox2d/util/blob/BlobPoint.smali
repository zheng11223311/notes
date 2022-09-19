.class public Lorg/jbox2d/util/blob/BlobPoint;
.super Ljava/lang/Object;
.source "BlobPoint.java"


# instance fields
.field public mass:F

.field public position:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/util/blob/BlobPoint;->mass:F

    .line 10
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 11
    return-void
.end method
