.class public Lorg/jbox2d/collision/PolygonDef;
.super Lorg/jbox2d/collision/ShapeDef;
.source "PolygonDef.java"


# instance fields
.field public vertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/common/Vec2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/jbox2d/collision/ShapeDef;-><init>()V

    .line 53
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    iput-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->type:Lorg/jbox2d/collision/ShapeType;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public addVertex(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public clearVertices()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method

.method public getVertexArray()[Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/jbox2d/common/Vec2;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVertexList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/common/Vec2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    return-object v0
.end method

.method public setAsBox(FF)V
    .locals 4
    .param p1, "hx"    # F
    .param p2, "hy"    # F

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lorg/jbox2d/common/Vec2;

    neg-float v2, p1

    neg-float v3, p2

    invoke-direct {v1, v2, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lorg/jbox2d/common/Vec2;

    neg-float v2, p2

    invoke-direct {v1, p1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1, p1, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lorg/jbox2d/common/Vec2;

    neg-float v2, p1

    invoke-direct {v1, v2, p2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public setAsBox(FFLorg/jbox2d/common/Vec2;F)V
    .locals 4
    .param p1, "hx"    # F
    .param p2, "hy"    # F
    .param p3, "center"    # Lorg/jbox2d/common/Vec2;
    .param p4, "angle"    # F

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/jbox2d/collision/PolygonDef;->setAsBox(FF)V

    .line 99
    new-instance v1, Lorg/jbox2d/common/XForm;

    invoke-direct {v1}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 100
    .local v1, "xf":Lorg/jbox2d/common/XForm;
    iget-object v2, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, p3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 101
    iget-object v2, v1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v2, p4}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v3}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
