.class public Lorg/jbox2d/collision/CollideCircle;
.super Ljava/lang/Object;
.source "CollideCircle.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/jbox2d/collision/CollideCircle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/CollideCircle;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collideCircles(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)V
    .locals 17
    .param p0, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p1, "circle1"    # Lorg/jbox2d/collision/CircleShape;
    .param p2, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p3, "circle2"    # Lorg/jbox2d/collision/CircleShape;
    .param p4, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 39
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 41
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 42
    .local v7, "p1":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 44
    .local v8, "p2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v7}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 46
    .local v3, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {v3, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    .line 48
    .local v5, "distSqr":F
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v9

    .line 49
    .local v9, "r1":F
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v10

    .line 50
    .local v10, "r2":F
    add-float v11, v9, v10

    .line 51
    .local v11, "radiusSum":F
    mul-float v13, v11, v11

    cmpl-float v13, v5, v13

    if-lez v13, :cond_0

    .line 81
    :goto_0
    return-void

    .line 56
    :cond_0
    const/high16 v13, 0x34000000

    cmpg-float v13, v5, v13

    if-gez v13, :cond_1

    .line 57
    neg-float v12, v11

    .line 58
    .local v12, "separation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14, v15}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 68
    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v13}, Lorg/jbox2d/collision/ContactID;->zero()V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iput v12, v13, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v9}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v10}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 76
    new-instance v6, Lorg/jbox2d/common/Vec2;

    const/high16 v13, 0x3f000000    # 0.5f

    iget v14, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget v15, v8, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    iget v15, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    invoke-direct {v6, v13, v14}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 78
    .local v6, "p":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    iput-object v14, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p4

    invoke-static {v0, v6}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    iput-object v14, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    goto :goto_0

    .line 61
    .end local v6    # "p":Lorg/jbox2d/common/Vec2;
    .end local v12    # "separation":F
    :cond_1
    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    .line 62
    .local v4, "dist":F
    sub-float v12, v4, v11

    .line 63
    .restart local v12    # "separation":F
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v2, v13, v4

    .line 64
    .local v2, "a":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v14, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v2

    iput v14, v13, Lorg/jbox2d/common/Vec2;->x:F

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v14, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v2

    iput v14, v13, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_1
.end method

.method public static collidePolygonAndCircle(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)V
    .locals 23
    .param p0, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p1, "polygon"    # Lorg/jbox2d/collision/PolygonShape;
    .param p2, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p3, "circle"    # Lorg/jbox2d/collision/CircleShape;
    .param p4, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 87
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 90
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 91
    .local v2, "c":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 94
    .local v3, "cLocal":Lorg/jbox2d/common/Vec2;
    const/4 v9, 0x0

    .line 95
    .local v9, "normalIndex":I
    const v15, -0x800001

    .line 96
    .local v15, "separation":F
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v13

    .line 97
    .local v13, "radius":F
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v19

    .line 98
    .local v19, "vertexCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 99
    .local v20, "vertices":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/PolygonShape;->getNormals()[Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 100
    .local v10, "normals":[Lorg/jbox2d/common/Vec2;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v19

    if-lt v7, v0, :cond_1

    .line 114
    const/high16 v21, 0x34000000

    cmpg-float v21, v15, v21

    if-gez v21, :cond_3

    .line 115
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 116
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    aget-object v22, v10, v9

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v9, v0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 122
    .local v12, "position":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p4

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sub-float v22, v15, v13

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 172
    .end local v12    # "position":Lorg/jbox2d/common/Vec2;
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    aget-object v21, v10, v7

    aget-object v22, v20, v7

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 103
    .local v14, "s":F
    move-object/from16 v0, p3

    iget v0, v0, Lorg/jbox2d/collision/CircleShape;->m_radius:F

    move/from16 v21, v0

    cmpl-float v21, v14, v21

    if-gtz v21, :cond_0

    .line 108
    cmpl-float v21, v14, v15

    if-lez v21, :cond_2

    .line 109
    move v9, v7

    .line 110
    move v15, v14

    .line 100
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 129
    .end local v14    # "s":F
    :cond_3
    move/from16 v17, v9

    .line 130
    .local v17, "vertIndex1":I
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    add-int/lit8 v18, v17, 0x1

    .line 131
    .local v18, "vertIndex2":I
    :goto_2
    aget-object v21, v20, v18

    aget-object v22, v20, v17

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 132
    .local v6, "e":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v8

    .line 133
    .local v8, "length":F
    sget-boolean v21, Lorg/jbox2d/collision/CollideCircle;->$assertionsDisabled:Z

    if-nez v21, :cond_5

    const/high16 v21, 0x34000000

    cmpl-float v21, v8, v21

    if-gtz v21, :cond_5

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 130
    .end local v6    # "e":Lorg/jbox2d/common/Vec2;
    .end local v8    # "length":F
    .end local v18    # "vertIndex2":I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 136
    .restart local v6    # "e":Lorg/jbox2d/common/Vec2;
    .restart local v8    # "length":F
    .restart local v18    # "vertIndex2":I
    :cond_5
    aget-object v21, v20, v17

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    .line 138
    .local v16, "u":F
    new-instance v11, Lorg/jbox2d/common/Vec2;

    invoke-direct {v11}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 139
    .local v11, "p":Lorg/jbox2d/common/Vec2;
    const/16 v21, 0x0

    cmpg-float v21, v16, v21

    if-gtz v21, :cond_6

    .line 140
    aget-object v21, v20, v17

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 157
    :goto_3
    invoke-virtual {v3, v11}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 158
    .local v4, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v5

    .line 159
    .local v5, "dist":F
    cmpl-float v21, v5, v13

    if-gtz v21, :cond_0

    .line 163
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 165
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 167
    .restart local v12    # "position":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, p4

    invoke-static {v0, v12}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sub-float v22, v5, v13

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    goto/16 :goto_1

    .line 144
    .end local v4    # "d":Lorg/jbox2d/common/Vec2;
    .end local v5    # "dist":F
    .end local v12    # "position":Lorg/jbox2d/common/Vec2;
    :cond_6
    cmpl-float v21, v16, v8

    if-ltz v21, :cond_7

    .line 145
    aget-object v21, v20, v18

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const v22, 0x7fffffff

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    goto/16 :goto_3

    .line 150
    :cond_7
    aget-object v21, v20, v17

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 151
    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v16

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 152
    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v22, v22, v16

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v9, v0, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    goto/16 :goto_3
.end method
