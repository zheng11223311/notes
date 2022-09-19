.class public Lorg/jbox2d/collision/CircleShape;
.super Lorg/jbox2d/collision/Shape;
.source "CircleShape.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_localPosition:Lorg/jbox2d/common/Vec2;

.field public m_radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/jbox2d/collision/CircleShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/CircleShape;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ShapeDef;)V
    .locals 3
    .param p1, "def"    # Lorg/jbox2d/collision/ShapeDef;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/Shape;-><init>(Lorg/jbox2d/collision/ShapeDef;)V

    .line 40
    sget-boolean v1, Lorg/jbox2d/collision/CircleShape;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/jbox2d/collision/ShapeDef;->type:Lorg/jbox2d/collision/ShapeType;

    sget-object v2, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 41
    check-cast v0, Lorg/jbox2d/collision/CircleDef;

    .line 42
    .local v0, "circleDef":Lorg/jbox2d/collision/CircleDef;
    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    iput-object v1, p0, Lorg/jbox2d/collision/CircleShape;->m_type:Lorg/jbox2d/collision/ShapeType;

    .line 43
    iget-object v1, v0, Lorg/jbox2d/collision/CircleDef;->localPosition:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    .line 44
    iget v1, v0, Lorg/jbox2d/collision/CircleDef;->radius:F

    iput v1, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    .line 45
    return-void
.end method


# virtual methods
.method public computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V
    .locals 5
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "transform"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 110
    iget-object v1, p2, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v2, p2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 111
    .local v0, "p":Lorg/jbox2d/common/Vec2;
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 112
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    add-float/2addr v2, v3

    iget v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 113
    return-void
.end method

.method public computeMass(Lorg/jbox2d/collision/MassData;)V
    .locals 4
    .param p1, "massData"    # Lorg/jbox2d/collision/MassData;

    .prologue
    .line 129
    iget v0, p0, Lorg/jbox2d/collision/CircleShape;->m_density:F

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/collision/MassData;->mass:F

    .line 130
    iget-object v0, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 133
    iget v0, p1, Lorg/jbox2d/collision/MassData;->mass:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/collision/MassData;->I:F

    .line 134
    return-void
.end method

.method public computeSweptAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)V
    .locals 8
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "transform1"    # Lorg/jbox2d/common/XForm;
    .param p3, "transform2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 116
    iget-object v4, p2, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v5, p2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v6, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v6}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 117
    .local v1, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v4, p3, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v5, p3, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v6, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v6}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 118
    .local v2, "p2":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 119
    .local v0, "lower":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 121
    .local v3, "upper":Lorg/jbox2d/common/Vec2;
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v5, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v6, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    sub-float/2addr v5, v6

    iget v6, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v7, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 122
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v5, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget v6, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    add-float/2addr v5, v6

    iget v6, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v7, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 126
    return-void
.end method

.method public getLocalPosition()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    return v0
.end method

.method public testPoint(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Z
    .locals 5
    .param p1, "transform"    # Lorg/jbox2d/common/XForm;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 55
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v4}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 56
    .local v0, "center":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 57
    .local v1, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    iget v3, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    iget v4, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSweepRadius(Lorg/jbox2d/common/Vec2;)V
    .locals 3
    .param p1, "center"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 50
    iget-object v1, p0, Lorg/jbox2d/collision/CircleShape;->m_localPosition:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, p1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 51
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v1

    iget v2, p0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    add-float/2addr v1, v2

    const v2, 0x3d23d70a    # 0.04f

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/jbox2d/collision/CircleShape;->m_sweepRadius:F

    .line 52
    return-void
.end method
