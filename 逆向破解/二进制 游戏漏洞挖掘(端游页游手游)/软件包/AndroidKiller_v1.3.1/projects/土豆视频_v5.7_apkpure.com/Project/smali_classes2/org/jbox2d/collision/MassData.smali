.class public Lorg/jbox2d/collision/MassData;
.super Ljava/lang/Object;
.source "MassData.java"


# instance fields
.field public I:F

.field public center:Lorg/jbox2d/common/Vec2;

.field public mass:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/collision/MassData;->mass:F

    .line 41
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/MassData;)V
    .locals 1
    .param p1, "md"    # Lorg/jbox2d/collision/MassData;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget v0, p1, Lorg/jbox2d/collision/MassData;->mass:F

    iput v0, p0, Lorg/jbox2d/collision/MassData;->mass:F

    .line 46
    iget v0, p1, Lorg/jbox2d/collision/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/collision/MassData;->I:F

    .line 47
    iget-object v0, p1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jbox2d/collision/MassData;->clone()Lorg/jbox2d/collision/MassData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/collision/MassData;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/jbox2d/collision/MassData;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/MassData;-><init>(Lorg/jbox2d/collision/MassData;)V

    return-object v0
.end method
