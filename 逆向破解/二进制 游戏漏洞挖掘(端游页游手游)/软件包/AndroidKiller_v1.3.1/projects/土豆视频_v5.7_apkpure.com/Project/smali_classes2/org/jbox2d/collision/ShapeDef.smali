.class public Lorg/jbox2d/collision/ShapeDef;
.super Ljava/lang/Object;
.source "ShapeDef.java"


# instance fields
.field public density:F

.field public filter:Lorg/jbox2d/collision/FilterData;

.field public friction:F

.field public isSensor:Z

.field public restitution:F

.field public type:Lorg/jbox2d/collision/ShapeType;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->UNKNOWN_SHAPE:Lorg/jbox2d/collision/ShapeType;

    iput-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->type:Lorg/jbox2d/collision/ShapeType;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->userData:Ljava/lang/Object;

    .line 62
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/jbox2d/collision/ShapeDef;->friction:F

    .line 63
    iput v1, p0, Lorg/jbox2d/collision/ShapeDef;->restitution:F

    .line 64
    iput v1, p0, Lorg/jbox2d/collision/ShapeDef;->density:F

    .line 65
    new-instance v0, Lorg/jbox2d/collision/FilterData;

    invoke-direct {v0}, Lorg/jbox2d/collision/FilterData;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    .line 66
    iget-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    const/4 v1, 0x1

    iput v1, v0, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    .line 67
    iget-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    const v1, 0xffff

    iput v1, v0, Lorg/jbox2d/collision/FilterData;->maskBits:I

    .line 68
    iget-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    iput v2, v0, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    .line 69
    iput-boolean v2, p0, Lorg/jbox2d/collision/ShapeDef;->isSensor:Z

    .line 71
    return-void
.end method
