.class public Lorg/jbox2d/collision/TOI;
.super Ljava/lang/Object;
.source "TOI.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/collision/TOI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/TOI;->$assertionsDisabled:Z

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

.method public static timeOfImpact(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/Sweep;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/Sweep;)F
    .locals 25
    .param p0, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p1, "sweep1"    # Lorg/jbox2d/common/Sweep;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;
    .param p3, "sweep2"    # Lorg/jbox2d/common/Sweep;

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/Shape;->getSweepRadius()F

    move-result v18

    .line 46
    .local v18, "r1":F
    invoke-virtual/range {p2 .. p2}, Lorg/jbox2d/collision/Shape;->getSweepRadius()F

    move-result v19

    .line 48
    .local v19, "r2":F
    sget-boolean v4, Lorg/jbox2d/collision/TOI;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move-object/from16 v0, p3

    iget v6, v0, Lorg/jbox2d/common/Sweep;->t0:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 49
    :cond_0
    sget-boolean v4, Lorg/jbox2d/collision/TOI;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x34000000

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 51
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/common/Sweep;->t0:F

    move/from16 v21, v0

    .line 52
    .local v21, "t0":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 53
    .local v23, "v1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    .line 54
    .local v24, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/jbox2d/common/Sweep;->a:F

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jbox2d/common/Sweep;->a0:F

    sub-float v16, v4, v6

    .line 55
    .local v16, "omega1":F
    move-object/from16 v0, p3

    iget v4, v0, Lorg/jbox2d/common/Sweep;->a:F

    move-object/from16 v0, p3

    iget v6, v0, Lorg/jbox2d/common/Sweep;->a0:F

    sub-float v17, v4, v6

    .line 57
    .local v17, "omega2":F
    const/4 v8, 0x0

    .line 59
    .local v8, "alpha":F
    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 60
    .local v2, "p1":Lorg/jbox2d/common/Vec2;
    new-instance v3, Lorg/jbox2d/common/Vec2;

    invoke-direct {v3}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 61
    .local v3, "p2":Lorg/jbox2d/common/Vec2;
    const/16 v13, 0x14

    .line 62
    .local v13, "k_maxIterations":I
    const/4 v12, 0x0

    .line 63
    .local v12, "iter":I
    new-instance v15, Lorg/jbox2d/common/Vec2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v15, v4, v6}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 64
    .local v15, "normal":Lorg/jbox2d/common/Vec2;
    const/4 v11, 0x0

    .line 65
    .local v11, "distance":F
    const/16 v22, 0x0

    .line 67
    .local v22, "targetDistance":F
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float v4, v4, v21

    add-float v20, v4, v8

    .line 68
    .local v20, "t":F
    new-instance v5, Lorg/jbox2d/common/XForm;

    invoke-direct {v5}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 69
    .local v5, "xf1":Lorg/jbox2d/common/XForm;
    new-instance v7, Lorg/jbox2d/common/XForm;

    invoke-direct {v7}, Lorg/jbox2d/common/XForm;-><init>()V

    .line 70
    .local v7, "xf2":Lorg/jbox2d/common/XForm;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lorg/jbox2d/common/Sweep;->getXForm(Lorg/jbox2d/common/XForm;F)V

    .line 71
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lorg/jbox2d/common/Sweep;->getXForm(Lorg/jbox2d/common/XForm;F)V

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    .line 74
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/collision/Distance;->distance(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;)F

    move-result v11

    .line 77
    if-nez v12, :cond_2

    .line 80
    const v4, 0x3da3d70a    # 0.08f

    cmpl-float v4, v11, v4

    if-lez v4, :cond_4

    .line 81
    const v22, 0x3d75c28f    # 0.06f

    .line 87
    :cond_2
    :goto_1
    sub-float v4, v11, v22

    const v6, 0x3b03126f    # 0.002f

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_3

    const/16 v4, 0x14

    if-ne v12, v4, :cond_5

    .line 123
    :cond_3
    :goto_2
    return v8

    .line 83
    :cond_4
    const v4, 0x3b03126f    # 0.002f

    const v6, 0x3ca3d70a    # 0.02f

    sub-float v6, v11, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v22

    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {v3, v2}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 93
    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 96
    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v18

    add-float/2addr v4, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v19

    add-float v9, v4, v6

    .line 97
    .local v9, "approachVelocityBound":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x34000000

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    .line 98
    const/high16 v8, 0x3f800000    # 1.0f

    .line 99
    goto :goto_2

    .line 103
    :cond_6
    sub-float v4, v11, v22

    div-float v10, v4, v9

    .line 105
    .local v10, "dAlpha":F
    add-float v14, v8, v10

    .line 108
    .local v14, "newAlpha":F
    const/4 v4, 0x0

    cmpg-float v4, v14, v4

    if-ltz v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v14

    if-gez v4, :cond_8

    .line 109
    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    .line 110
    goto :goto_2

    .line 114
    :cond_8
    const v4, 0x3f800064    # 1.0000119f

    mul-float/2addr v4, v8

    cmpg-float v4, v14, v4

    if-ltz v4, :cond_3

    .line 118
    move v8, v14

    .line 120
    add-int/lit8 v12, v12, 0x1

    .line 66
    goto/16 :goto_0
.end method
