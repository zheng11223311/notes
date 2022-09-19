.class public Lorg/jbox2d/common/Color3f;
.super Ljava/lang/Object;
.source "Color3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/jbox2d/common/Color3f;->x:F

    .line 38
    iput p2, p0, Lorg/jbox2d/common/Color3f;->y:F

    .line 39
    iput p3, p0, Lorg/jbox2d/common/Color3f;->z:F

    .line 40
    return-void
.end method
