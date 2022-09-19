.class public Lorg/jbox2d/collision/CircleDef;
.super Lorg/jbox2d/collision/ShapeDef;
.source "CircleDef.java"


# instance fields
.field public localPosition:Lorg/jbox2d/common/Vec2;

.field public radius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lorg/jbox2d/collision/ShapeDef;-><init>()V

    .line 40
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    iput-object v0, p0, Lorg/jbox2d/collision/CircleDef;->type:Lorg/jbox2d/collision/ShapeType;

    .line 41
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/collision/CircleDef;->localPosition:Lorg/jbox2d/common/Vec2;

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/collision/CircleDef;->radius:F

    .line 43
    return-void
.end method
