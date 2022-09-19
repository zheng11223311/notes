.class public Lorg/jbox2d/collision/CollidePoly;
.super Ljava/lang/Object;
.source "CollidePoly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/collision/CollidePoly;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/CollidePoly;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clipSegmentToLine([Lorg/jbox2d/collision/CollidePoly$ClipVertex;[Lorg/jbox2d/collision/CollidePoly$ClipVertex;Lorg/jbox2d/common/Vec2;F)I
    .locals 12
    .param p0, "vOut"    # [Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .param p1, "vIn"    # [Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .param p2, "normal"    # Lorg/jbox2d/common/Vec2;
    .param p3, "offset"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    const/4 v3, 0x0

    .line 49
    .local v3, "numOut":I
    aget-object v5, p1, v9

    iget-object v5, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    invoke-static {p2, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    sub-float v0, v5, p3

    .line 50
    .local v0, "distance0":F
    aget-object v5, p1, v10

    iget-object v5, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    invoke-static {p2, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    sub-float v1, v5, p3

    .line 53
    .local v1, "distance1":F
    cmpg-float v5, v0, v11

    if-gtz v5, :cond_3

    .line 54
    new-instance v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    invoke-direct {v5}, Lorg/jbox2d/collision/CollidePoly$ClipVertex;-><init>()V

    aput-object v5, p0, v3

    .line 55
    aget-object v5, p0, v3

    new-instance v6, Lorg/jbox2d/collision/ContactID;

    aget-object v7, p1, v9

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v6, v7}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 56
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numOut":I
    .local v4, "numOut":I
    aget-object v5, p0, v3

    aget-object v6, p1, v9

    iget-object v6, v6, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 58
    :goto_0
    cmpg-float v5, v1, v11

    if-gtz v5, :cond_2

    .line 59
    new-instance v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    invoke-direct {v5}, Lorg/jbox2d/collision/CollidePoly$ClipVertex;-><init>()V

    aput-object v5, p0, v4

    .line 60
    aget-object v5, p0, v4

    new-instance v6, Lorg/jbox2d/collision/ContactID;

    aget-object v7, p1, v10

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v6, v7}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 61
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numOut":I
    .restart local v3    # "numOut":I
    aget-object v5, p0, v4

    aget-object v6, p1, v10

    iget-object v6, v6, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 65
    :goto_1
    mul-float v5, v0, v1

    cmpg-float v5, v5, v11

    if-gez v5, :cond_0

    .line 67
    sub-float v5, v0, v1

    div-float v2, v0, v5

    .line 68
    .local v2, "interp":F
    new-instance v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    invoke-direct {v5}, Lorg/jbox2d/collision/CollidePoly$ClipVertex;-><init>()V

    aput-object v5, p0, v3

    .line 69
    aget-object v5, p0, v3

    iget-object v5, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    aget-object v6, p1, v9

    iget-object v6, v6, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v7, p1, v10

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v8, p1, v9

    iget-object v8, v8, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 70
    aget-object v5, p0, v3

    iget-object v5, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    aget-object v6, p1, v9

    iget-object v6, v6, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v7, p1, v10

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v8, p1, v9

    iget-object v8, v8, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 72
    cmpl-float v5, v0, v11

    if-lez v5, :cond_1

    .line 73
    aget-object v5, p0, v3

    new-instance v6, Lorg/jbox2d/collision/ContactID;

    aget-object v7, p1, v9

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v6, v7}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 78
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 81
    .end local v2    # "interp":F
    :cond_0
    return v3

    .line 76
    .restart local v2    # "interp":F
    :cond_1
    aget-object v5, p0, v3

    new-instance v6, Lorg/jbox2d/collision/ContactID;

    aget-object v7, p1, v10

    iget-object v7, v7, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v6, v7}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v6, v5, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    goto :goto_2

    .end local v2    # "interp":F
    .end local v3    # "numOut":I
    .restart local v4    # "numOut":I
    :cond_2
    move v3, v4

    .end local v4    # "numOut":I
    .restart local v3    # "numOut":I
    goto :goto_1

    :cond_3
    move v4, v3

    .end local v3    # "numOut":I
    .restart local v4    # "numOut":I
    goto/16 :goto_0
.end method

.method public static collidePolygons(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)V
    .locals 41
    .param p0, "manif"    # Lorg/jbox2d/collision/Manifold;
    .param p1, "polyA"    # Lorg/jbox2d/collision/PolygonShape;
    .param p2, "xfA"    # Lorg/jbox2d/common/XForm;
    .param p3, "polyB"    # Lorg/jbox2d/collision/PolygonShape;
    .param p4, "xfB"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 292
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 293
    invoke-static/range {p1 .. p4}, Lorg/jbox2d/collision/CollidePoly;->findMaxSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)Lorg/jbox2d/collision/MaxSeparation;

    move-result-object v22

    .line 294
    .local v22, "sepA":Lorg/jbox2d/collision/MaxSeparation;
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-lez v38, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lorg/jbox2d/collision/CollidePoly;->findMaxSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)Lorg/jbox2d/collision/MaxSeparation;

    move-result-object v23

    .line 299
    .local v23, "sepB":Lorg/jbox2d/collision/MaxSeparation;
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-gtz v38, :cond_0

    .line 305
    new-instance v6, Lorg/jbox2d/common/XForm;

    invoke-direct {v6}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 306
    .local v6, "xf1":Lorg/jbox2d/common/XForm;
    new-instance v9, Lorg/jbox2d/common/XForm;

    invoke-direct {v9}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 309
    .local v9, "xf2":Lorg/jbox2d/common/XForm;
    const v19, 0x3f7ae148    # 0.98f

    .line 310
    .local v19, "k_relativeTol":F
    const v18, 0x3a83126f    # 0.001f

    .line 313
    .local v18, "k_absoluteTol":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    move/from16 v38, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    move/from16 v39, v0

    mul-float v39, v39, v19

    .line 314
    add-float v39, v39, v18

    cmpl-float v38, v38, v39

    if-lez v38, :cond_2

    .line 315
    move-object/from16 v5, p3

    .line 316
    .local v5, "poly1":Lorg/jbox2d/collision/PolygonShape;
    move-object/from16 v8, p1

    .line 317
    .local v8, "poly2":Lorg/jbox2d/collision/PolygonShape;
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/XForm;->set(Lorg/jbox2d/common/XForm;)V

    .line 318
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lorg/jbox2d/common/XForm;->set(Lorg/jbox2d/common/XForm;)V

    .line 319
    move-object/from16 v0, v23

    iget v7, v0, Lorg/jbox2d/collision/MaxSeparation;->bestFaceIndex:I

    .line 320
    .local v7, "edge1":I
    const/4 v14, 0x1

    .line 331
    .local v14, "flip":B
    :goto_1
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v4, v0, [Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    .line 332
    .local v4, "incidentEdge":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    invoke-static/range {v4 .. v9}, Lorg/jbox2d/collision/CollidePoly;->findIncidentEdge([Lorg/jbox2d/collision/CollidePoly$ClipVertex;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)V

    .line 334
    invoke-virtual {v5}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v12

    .line 335
    .local v12, "count1":I
    invoke-virtual {v5}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v37

    .line 337
    .local v37, "vertices1":[Lorg/jbox2d/common/Vec2;
    aget-object v28, v37, v7

    .line 338
    .local v28, "v11":Lorg/jbox2d/common/Vec2;
    add-int/lit8 v38, v7, 0x1

    move/from16 v0, v38

    if-ge v0, v12, :cond_3

    add-int/lit8 v38, v7, 0x1

    aget-object v31, v37, v38

    .line 340
    .local v31, "v12":Lorg/jbox2d/common/Vec2;
    :goto_2
    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v38, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 341
    .local v25, "sideNormal":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 342
    const/high16 v38, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 346
    .local v15, "frontNormal":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v38, v38, v39

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v29, v38, v39

    .line 347
    .local v29, "v11x":F
    iget-object v0, v6, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v38, v0

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v38, v38, v39

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v30, v38, v39

    .line 348
    .local v30, "v11y":F
    iget-object v0, v6, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v38, v38, v39

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v32, v38, v39

    .line 349
    .local v32, "v12x":F
    iget-object v0, v6, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v38, v0

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v38, v38, v39

    iget-object v0, v6, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    add-float v33, v38, v39

    .line 351
    .local v33, "v12y":F
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    mul-float v38, v38, v29

    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v39, v39, v30

    add-float v16, v38, v39

    .line 352
    .local v16, "frontOffset":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    mul-float v38, v38, v29

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v39, v39, v30

    add-float v38, v38, v39

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v26, v0

    .line 353
    .local v26, "sideOffset1":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    mul-float v38, v38, v32

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v39, v39, v33

    add-float v27, v38, v39

    .line 356
    .local v27, "sideOffset2":F
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v10, v0, [Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    .line 357
    .local v10, "clipPoints1":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v11, v0, [Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    .line 361
    .local v11, "clipPoints2":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-static {v10, v4, v0, v1}, Lorg/jbox2d/collision/CollidePoly;->clipSegmentToLine([Lorg/jbox2d/collision/CollidePoly$ClipVertex;[Lorg/jbox2d/collision/CollidePoly$ClipVertex;Lorg/jbox2d/common/Vec2;F)I

    move-result v20

    .line 363
    .local v20, "np":I
    const/16 v38, 0x2

    move/from16 v0, v20

    move/from16 v1, v38

    if-lt v0, v1, :cond_0

    .line 368
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v11, v10, v0, v1}, Lorg/jbox2d/collision/CollidePoly;->clipSegmentToLine([Lorg/jbox2d/collision/CollidePoly$ClipVertex;[Lorg/jbox2d/collision/CollidePoly$ClipVertex;Lorg/jbox2d/common/Vec2;F)I

    move-result v20

    .line 371
    const/16 v38, 0x2

    move/from16 v0, v20

    move/from16 v1, v38

    if-lt v0, v1, :cond_0

    .line 376
    if-eqz v14, :cond_4

    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v38

    :goto_3
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 378
    const/16 v21, 0x0

    .line 379
    .local v21, "pointCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    const/16 v38, 0x2

    move/from16 v0, v17

    move/from16 v1, v38

    if-lt v0, v1, :cond_5

    .line 405
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    goto/16 :goto_0

    .line 323
    .end local v4    # "incidentEdge":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .end local v5    # "poly1":Lorg/jbox2d/collision/PolygonShape;
    .end local v7    # "edge1":I
    .end local v8    # "poly2":Lorg/jbox2d/collision/PolygonShape;
    .end local v10    # "clipPoints1":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .end local v11    # "clipPoints2":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .end local v12    # "count1":I
    .end local v14    # "flip":B
    .end local v15    # "frontNormal":Lorg/jbox2d/common/Vec2;
    .end local v16    # "frontOffset":F
    .end local v17    # "i":I
    .end local v20    # "np":I
    .end local v21    # "pointCount":I
    .end local v25    # "sideNormal":Lorg/jbox2d/common/Vec2;
    .end local v26    # "sideOffset1":F
    .end local v27    # "sideOffset2":F
    .end local v28    # "v11":Lorg/jbox2d/common/Vec2;
    .end local v29    # "v11x":F
    .end local v30    # "v11y":F
    .end local v31    # "v12":Lorg/jbox2d/common/Vec2;
    .end local v32    # "v12x":F
    .end local v33    # "v12y":F
    .end local v37    # "vertices1":[Lorg/jbox2d/common/Vec2;
    :cond_2
    move-object/from16 v5, p1

    .line 324
    .restart local v5    # "poly1":Lorg/jbox2d/collision/PolygonShape;
    move-object/from16 v8, p3

    .line 325
    .restart local v8    # "poly2":Lorg/jbox2d/collision/PolygonShape;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/XForm;->set(Lorg/jbox2d/common/XForm;)V

    .line 326
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lorg/jbox2d/common/XForm;->set(Lorg/jbox2d/common/XForm;)V

    .line 327
    move-object/from16 v0, v22

    iget v7, v0, Lorg/jbox2d/collision/MaxSeparation;->bestFaceIndex:I

    .line 328
    .restart local v7    # "edge1":I
    const/4 v14, 0x0

    .restart local v14    # "flip":B
    goto/16 :goto_1

    .line 338
    .restart local v4    # "incidentEdge":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .restart local v12    # "count1":I
    .restart local v28    # "v11":Lorg/jbox2d/common/Vec2;
    .restart local v37    # "vertices1":[Lorg/jbox2d/common/Vec2;
    :cond_3
    const/16 v38, 0x0

    aget-object v31, v37, v38

    goto/16 :goto_2

    .line 376
    .restart local v10    # "clipPoints1":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .restart local v11    # "clipPoints2":[Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .restart local v15    # "frontNormal":Lorg/jbox2d/common/Vec2;
    .restart local v16    # "frontOffset":F
    .restart local v20    # "np":I
    .restart local v25    # "sideNormal":Lorg/jbox2d/common/Vec2;
    .restart local v26    # "sideOffset1":F
    .restart local v27    # "sideOffset2":F
    .restart local v29    # "v11x":F
    .restart local v30    # "v11y":F
    .restart local v31    # "v12":Lorg/jbox2d/common/Vec2;
    .restart local v32    # "v12x":F
    .restart local v33    # "v12y":F
    :cond_4
    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v38

    goto :goto_3

    .line 380
    .restart local v17    # "i":I
    .restart local v21    # "pointCount":I
    :cond_5
    aget-object v38, v11, v17

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v15, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v38

    sub-float v24, v38, v16

    .line 383
    .local v24, "separation":F
    const/16 v38, 0x0

    cmpg-float v38, v24, v38

    if-gtz v38, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v38, v0

    aget-object v13, v38, v21

    .line 385
    .local v13, "cp":Lorg/jbox2d/collision/ManifoldPoint;
    move/from16 v0, v24

    iput v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 388
    aget-object v38, v11, v17

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v36, v0

    .line 389
    .local v36, "vec":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    sub-float v34, v38, v39

    .line 390
    .local v34, "v1x":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    sub-float v35, v38, v39

    .line 391
    .local v35, "v1y":F
    iget-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v39, v39, v34

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v40, v40, v35

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 392
    iget-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v39, v39, v34

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v40, v40, v35

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 394
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v38, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    sub-float v34, v38, v39

    .line 395
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v38, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    sub-float v35, v38, v39

    .line 396
    iget-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v39, v39, v34

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v40, v40, v35

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 397
    iget-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v39, v39, v34

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v40, v0

    mul-float v40, v40, v35

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 399
    new-instance v38, Lorg/jbox2d/collision/ContactID;

    aget-object v39, v11, v17

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v38

    iput-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 400
    iget-object v0, v13, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iput v14, v0, Lorg/jbox2d/collision/ContactID$Features;->flip:I

    .line 401
    add-int/lit8 v21, v21, 0x1

    .line 379
    .end local v13    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v34    # "v1x":F
    .end local v35    # "v1y":F
    .end local v36    # "vec":Lorg/jbox2d/common/Vec2;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4
.end method

.method static edgeSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)F
    .locals 23
    .param p0, "poly1"    # Lorg/jbox2d/collision/PolygonShape;
    .param p1, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p2, "edge1"    # I
    .param p3, "poly2"    # Lorg/jbox2d/collision/PolygonShape;
    .param p4, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v1

    .line 89
    .local v1, "count1":I
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 90
    .local v18, "vertices1":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getNormals()[Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 92
    .local v10, "normals1":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v2

    .line 93
    .local v2, "count2":I
    invoke-virtual/range {p3 .. p3}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v19

    .line 95
    .local v19, "vertices2":[Lorg/jbox2d/common/Vec2;
    sget-boolean v20, Lorg/jbox2d/collision/CollidePoly;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    if-ltz p2, :cond_0

    move/from16 v0, p2

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 98
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v20, v0

    aget-object v21, v10, p2

    invoke-static/range {v20 .. v21}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 99
    .local v7, "normal1World":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    .line 100
    .local v8, "normal1x":F
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    .line 103
    .local v9, "normal1y":F
    const/4 v5, 0x0

    .line 104
    .local v5, "index":I
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 105
    .local v6, "minDot":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_2

    .line 115
    aget-object v12, v18, p2

    .line 116
    .local v12, "v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v13, v20, v21

    .line 117
    .local v13, "v1x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v14, v20, v21

    .line 118
    .local v14, "v1y":F
    aget-object v17, v19, v5

    .line 120
    .local v17, "v3":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v15, v20, v21

    .line 121
    .local v15, "v2x":F
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v16, v20, v21

    .line 123
    .local v16, "v2y":F
    sub-float v20, v15, v13

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v21, v16, v14

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v11, v20, v21

    .line 125
    .local v11, "separation":F
    return v11

    .line 106
    .end local v11    # "separation":F
    .end local v12    # "v":Lorg/jbox2d/common/Vec2;
    .end local v13    # "v1x":F
    .end local v14    # "v1y":F
    .end local v15    # "v2x":F
    .end local v16    # "v2y":F
    .end local v17    # "v3":Lorg/jbox2d/common/Vec2;
    :cond_2
    aget-object v20, v19, v4

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v8

    aget-object v21, v19, v4

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v9

    add-float v3, v20, v21

    .line 108
    .local v3, "dot":F
    cmpg-float v20, v3, v6

    if-gez v20, :cond_3

    .line 109
    move v6, v3

    .line 110
    move v5, v4

    .line 105
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method static findIncidentEdge([Lorg/jbox2d/collision/CollidePoly$ClipVertex;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)V
    .locals 16
    .param p0, "c"    # [Lorg/jbox2d/collision/CollidePoly$ClipVertex;
    .param p1, "poly1"    # Lorg/jbox2d/collision/PolygonShape;
    .param p2, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p3, "edge1"    # I
    .param p4, "poly2"    # Lorg/jbox2d/collision/PolygonShape;
    .param p5, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 234
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v1

    .line 235
    .local v1, "count1":I
    invoke-virtual/range {p1 .. p1}, Lorg/jbox2d/collision/PolygonShape;->getNormals()[Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 237
    .local v10, "normals1":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p4 .. p4}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v2

    .line 238
    .local v2, "count2":I
    invoke-virtual/range {p4 .. p4}, Lorg/jbox2d/collision/PolygonShape;->getVertices()[Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 239
    .local v12, "vertices2":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p4 .. p4}, Lorg/jbox2d/collision/PolygonShape;->getNormals()[Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 241
    .local v11, "normals2":[Lorg/jbox2d/common/Vec2;
    sget-boolean v13, Lorg/jbox2d/collision/CollidePoly;->$assertionsDisabled:Z

    if-nez v13, :cond_1

    if-ltz p3, :cond_0

    move/from16 v0, p3

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 244
    :cond_1
    move-object/from16 v0, p5

    iget-object v13, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    aget-object v15, v10, p3

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 247
    .local v9, "normal1":Lorg/jbox2d/common/Vec2;
    const/4 v7, 0x0

    .line 248
    .local v7, "index":I
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 249
    .local v8, "minDot":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_2

    .line 258
    move v5, v7

    .line 259
    .local v5, "i1":I
    add-int/lit8 v13, v5, 0x1

    if-ge v13, v2, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 261
    .local v6, "i2":I
    :goto_1
    const/4 v13, 0x0

    new-instance v14, Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    invoke-direct {v14}, Lorg/jbox2d/collision/CollidePoly$ClipVertex;-><init>()V

    aput-object v14, p0, v13

    .line 262
    const/4 v13, 0x1

    new-instance v14, Lorg/jbox2d/collision/CollidePoly$ClipVertex;

    invoke-direct {v14}, Lorg/jbox2d/collision/CollidePoly$ClipVertex;-><init>()V

    aput-object v14, p0, v13

    .line 264
    const/4 v13, 0x0

    aget-object v13, p0, v13

    aget-object v14, v12, v5

    move-object/from16 v0, p5

    invoke-static {v0, v14}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    iput-object v14, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 265
    const/4 v13, 0x0

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move/from16 v0, p3

    iput v0, v13, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 266
    const/4 v13, 0x0

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v5, v13, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 267
    const/4 v13, 0x0

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    const/4 v14, 0x0

    iput v14, v13, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 271
    const/4 v13, 0x1

    aget-object v13, p0, v13

    aget-object v14, v12, v6

    move-object/from16 v0, p5

    invoke-static {v0, v14}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    iput-object v14, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 272
    const/4 v13, 0x1

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move/from16 v0, p3

    iput v0, v13, Lorg/jbox2d/collision/ContactID$Features;->referenceEdge:I

    .line 273
    const/4 v13, 0x1

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iput v6, v13, Lorg/jbox2d/collision/ContactID$Features;->incidentEdge:I

    .line 274
    const/4 v13, 0x1

    aget-object v13, p0, v13

    iget-object v13, v13, Lorg/jbox2d/collision/CollidePoly$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v13, v13, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    const/4 v14, 0x1

    iput v14, v13, Lorg/jbox2d/collision/ContactID$Features;->incidentVertex:I

    .line 276
    return-void

    .line 250
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    :cond_2
    aget-object v13, v11, v4

    invoke-static {v9, v13}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 251
    .local v3, "dot":F
    cmpg-float v13, v3, v8

    if-gez v13, :cond_3

    .line 252
    move v8, v3

    .line 253
    move v7, v4

    .line 249
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "dot":F
    .restart local v5    # "i1":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static findMaxSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)Lorg/jbox2d/collision/MaxSeparation;
    .locals 31
    .param p0, "poly1"    # Lorg/jbox2d/collision/PolygonShape;
    .param p1, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p2, "poly2"    # Lorg/jbox2d/collision/PolygonShape;
    .param p3, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 132
    new-instance v24, Lorg/jbox2d/collision/MaxSeparation;

    invoke-direct/range {v24 .. v24}, Lorg/jbox2d/collision/MaxSeparation;-><init>()V

    .line 134
    .local v24, "separation":Lorg/jbox2d/collision/MaxSeparation;
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getVertexCount()I

    move-result v9

    .line 135
    .local v9, "count1":I
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getNormals()[Lorg/jbox2d/common/Vec2;

    move-result-object v19

    .line 137
    .local v19, "normals1":[Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/PolygonShape;->getCentroid()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 138
    .local v25, "v":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p2 .. p2}, Lorg/jbox2d/collision/PolygonShape;->getCentroid()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    .line 143
    .local v26, "v1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 144
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 143
    sub-float v12, v27, v28

    .line 145
    .local v12, "dx":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    .line 146
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    .line 145
    sub-float v13, v27, v28

    .line 147
    .local v13, "dy":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    .line 148
    .local v5, "b":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 149
    .local v6, "b1":Lorg/jbox2d/common/Vec2;
    new-instance v10, Lorg/jbox2d/common/Vec2;

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v27, v27, v12

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v28, v28, v13

    add-float v27, v27, v28

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v28, v28, v12

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v29, v29, v13

    add-float v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v10, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 152
    .local v10, "dLocal1":Lorg/jbox2d/common/Vec2;
    const/4 v14, 0x0

    .line 153
    .local v14, "edge":I
    const v17, -0x800001

    .line 154
    .local v17, "maxDot":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-lt v15, v9, :cond_0

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v14, v2, v3}, Lorg/jbox2d/collision/CollidePoly;->edgeSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)F

    move-result v21

    .line 164
    .local v21, "s":F
    const/16 v27, 0x0

    cmpl-float v27, v21, v27

    if-lez v27, :cond_2

    .line 165
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    .line 227
    :goto_1
    return-object v24

    .line 155
    .end local v21    # "s":F
    :cond_0
    aget-object v27, v19, v15

    move-object/from16 v0, v27

    invoke-static {v0, v10}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    .line 156
    .local v11, "dot":F
    cmpl-float v27, v11, v17

    if-lez v27, :cond_1

    .line 157
    move/from16 v17, v11

    .line 158
    move v14, v15

    .line 154
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 170
    .end local v11    # "dot":F
    .restart local v21    # "s":F
    :cond_2
    add-int/lit8 v27, v14, -0x1

    if-ltz v27, :cond_3

    add-int/lit8 v20, v14, -0x1

    .line 171
    .local v20, "prevEdge":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jbox2d/collision/CollidePoly;->edgeSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)F

    move-result v23

    .line 172
    .local v23, "sPrev":F
    const/16 v27, 0x0

    cmpl-float v27, v23, v27

    if-lez v27, :cond_4

    .line 173
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    goto :goto_1

    .line 170
    .end local v20    # "prevEdge":I
    .end local v23    # "sPrev":F
    :cond_3
    add-int/lit8 v20, v9, -0x1

    goto :goto_2

    .line 177
    .restart local v20    # "prevEdge":I
    .restart local v23    # "sPrev":F
    :cond_4
    add-int/lit8 v27, v14, 0x1

    move/from16 v0, v27

    if-ge v0, v9, :cond_5

    add-int/lit8 v18, v14, 0x1

    .line 178
    .local v18, "nextEdge":I
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jbox2d/collision/CollidePoly;->edgeSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)F

    move-result v22

    .line 179
    .local v22, "sNext":F
    const/16 v27, 0x0

    cmpl-float v27, v22, v27

    if-lez v27, :cond_6

    .line 180
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    goto :goto_1

    .line 177
    .end local v18    # "nextEdge":I
    .end local v22    # "sNext":F
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 188
    .restart local v18    # "nextEdge":I
    .restart local v22    # "sNext":F
    :cond_6
    cmpl-float v27, v23, v21

    if-lez v27, :cond_7

    cmpl-float v27, v23, v22

    if-lez v27, :cond_7

    .line 189
    const/16 v16, -0x1

    .line 190
    .local v16, "increment":I
    move/from16 v7, v20

    .line 191
    .local v7, "bestEdge":I
    move/from16 v8, v23

    .line 205
    .local v8, "bestSeparation":F
    :goto_4
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 206
    add-int/lit8 v27, v7, -0x1

    if-ltz v27, :cond_9

    add-int/lit8 v14, v7, -0x1

    .line 210
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v14, v2, v3}, Lorg/jbox2d/collision/CollidePoly;->edgeSeparation(Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;ILorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)F

    move-result v21

    .line 211
    const/16 v27, 0x0

    cmpl-float v27, v21, v27

    if-lez v27, :cond_c

    .line 212
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    goto/16 :goto_1

    .line 193
    .end local v7    # "bestEdge":I
    .end local v8    # "bestSeparation":F
    .end local v16    # "increment":I
    :cond_7
    cmpl-float v27, v22, v21

    if-lez v27, :cond_8

    .line 194
    const/16 v16, 0x1

    .line 195
    .restart local v16    # "increment":I
    move/from16 v7, v18

    .line 196
    .restart local v7    # "bestEdge":I
    move/from16 v8, v22

    .restart local v8    # "bestSeparation":F
    goto :goto_4

    .line 198
    .end local v7    # "bestEdge":I
    .end local v8    # "bestSeparation":F
    .end local v16    # "increment":I
    :cond_8
    move-object/from16 v0, v24

    iput v14, v0, Lorg/jbox2d/collision/MaxSeparation;->bestFaceIndex:I

    .line 199
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    goto/16 :goto_1

    .line 206
    .restart local v7    # "bestEdge":I
    .restart local v8    # "bestSeparation":F
    .restart local v16    # "increment":I
    :cond_9
    add-int/lit8 v14, v9, -0x1

    goto :goto_5

    .line 208
    :cond_a
    add-int/lit8 v27, v7, 0x1

    move/from16 v0, v27

    if-ge v0, v9, :cond_b

    add-int/lit8 v14, v7, 0x1

    :goto_6
    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 216
    :cond_c
    cmpl-float v27, v21, v8

    if-lez v27, :cond_d

    .line 217
    move v7, v14

    .line 218
    move/from16 v8, v21

    .line 204
    goto :goto_4

    .line 224
    :cond_d
    move-object/from16 v0, v24

    iput v7, v0, Lorg/jbox2d/collision/MaxSeparation;->bestFaceIndex:I

    .line 225
    move-object/from16 v0, v24

    iput v8, v0, Lorg/jbox2d/collision/MaxSeparation;->bestSeparation:F

    goto/16 :goto_1
.end method
