.class public Lorg/jbox2d/collision/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static g_GJK_Iterations:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lorg/jbox2d/collision/Distance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    .line 50
    sput v1, Lorg/jbox2d/collision/Distance;->g_GJK_Iterations:I

    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static DistanceCC(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)F
    .locals 13
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "circle1"    # Lorg/jbox2d/collision/CircleShape;
    .param p3, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p4, "circle2"    # Lorg/jbox2d/collision/CircleShape;
    .param p5, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 292
    invoke-virtual {p2}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 293
    .local v5, "p1":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {p4 .. p4}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-static {v0, v10}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 295
    .local v6, "p2":Lorg/jbox2d/common/Vec2;
    new-instance v1, Lorg/jbox2d/common/Vec2;

    iget v10, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v5, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v10, v11

    iget v11, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 296
    .local v1, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 297
    .local v3, "dSqr":F
    invoke-virtual {p2}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v10

    const v11, 0x3d23d70a    # 0.04f

    sub-float v8, v10, v11

    .line 298
    .local v8, "r1":F
    invoke-virtual/range {p4 .. p4}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v10

    const v11, 0x3d23d70a    # 0.04f

    sub-float v9, v10, v11

    .line 299
    .local v9, "r2":F
    add-float v7, v8, v9

    .line 300
    .local v7, "r":F
    mul-float v10, v7, v7

    cmpl-float v10, v3, v10

    if-lez v10, :cond_0

    .line 301
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v2

    .line 302
    .local v2, "dLen":F
    sub-float v4, v2, v7

    .line 303
    .local v4, "distance":F
    iget v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 304
    iget v11, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 303
    invoke-virtual {p0, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 305
    iget v10, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    .line 306
    iget v11, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v9

    sub-float/2addr v11, v12

    .line 305
    invoke-virtual {p1, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 318
    .end local v2    # "dLen":F
    .end local v4    # "distance":F
    :goto_0
    return v4

    .line 308
    :cond_0
    const/high16 v10, 0x28800000

    cmpl-float v10, v3, v10

    if-lez v10, :cond_1

    .line 309
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 310
    iget v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 311
    iget v11, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 310
    invoke-virtual {p0, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 312
    invoke-virtual {p1, p0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 313
    const/4 v4, 0x0

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 317
    invoke-virtual {p1, p0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 318
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static DistanceGeneric(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;)F
    .locals 21
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "shape1"    # Lorg/jbox2d/collision/SupportsGenericDistance;
    .param p3, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p4, "shape2"    # Lorg/jbox2d/collision/SupportsGenericDistance;
    .param p5, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 200
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [Lorg/jbox2d/common/Vec2;

    .line 201
    .local v8, "p1s":[Lorg/jbox2d/common/Vec2;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [Lorg/jbox2d/common/Vec2;

    .line 202
    .local v9, "p2s":[Lorg/jbox2d/common/Vec2;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v11, v0, [Lorg/jbox2d/common/Vec2;

    .line 204
    .local v11, "points":[Lorg/jbox2d/common/Vec2;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v4, v0, :cond_0

    .line 210
    const/4 v10, 0x0

    .line 212
    .local v10, "pointCount":I
    invoke-interface/range {p2 .. p3}, Lorg/jbox2d/collision/SupportsGenericDistance;->getFirstVertex(Lorg/jbox2d/common/XForm;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 213
    invoke-interface/range {p4 .. p5}, Lorg/jbox2d/collision/SupportsGenericDistance;->getFirstVertex(Lorg/jbox2d/common/XForm;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 215
    const/4 v13, 0x0

    .line 216
    .local v13, "vSqr":F
    const/16 v6, 0x14

    .line 217
    .local v6, "maxIterations":I
    const/4 v5, 0x0

    .local v5, "iter":I
    :goto_1
    if-lt v5, v6, :cond_1

    .line 282
    sput v6, Lorg/jbox2d/collision/Distance;->g_GJK_Iterations:I

    .line 283
    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    :goto_2
    return v18

    .line 205
    .end local v5    # "iter":I
    .end local v6    # "maxIterations":I
    .end local v10    # "pointCount":I
    .end local v13    # "vSqr":F
    :cond_0
    new-instance v18, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v18, v8, v4

    .line 206
    new-instance v18, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v18, v9, v4

    .line 207
    new-instance v18, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v18, v11, v4

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    .restart local v5    # "iter":I
    .restart local v6    # "maxIterations":I
    .restart local v10    # "pointCount":I
    .restart local v13    # "vSqr":F
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 219
    .local v12, "v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v12}, Lorg/jbox2d/collision/SupportsGenericDistance;->support(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 220
    .local v16, "w1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v12}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/jbox2d/collision/SupportsGenericDistance;->support(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 222
    .local v17, "w2":Lorg/jbox2d/common/Vec2;
    invoke-static {v12, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v13

    .line 223
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 224
    .local v15, "w":Lorg/jbox2d/common/Vec2;
    invoke-static {v12, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 225
    .local v14, "vw":F
    sub-float v18, v13, v14

    const v19, 0x3c23d70a    # 0.01f

    mul-float v19, v19, v13

    cmpg-float v18, v18, v19

    if-lez v18, :cond_2

    invoke-static {v15, v11, v10}, Lorg/jbox2d/collision/Distance;->InPoints(Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 227
    :cond_2
    if-nez v10, :cond_3

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 229
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 231
    :cond_3
    sput v5, Lorg/jbox2d/collision/Distance;->g_GJK_Iterations:I

    .line 232
    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    goto :goto_2

    .line 235
    :cond_4
    packed-switch v10, :pswitch_data_0

    .line 261
    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    .line 262
    sput v5, Lorg/jbox2d/collision/Distance;->g_GJK_Iterations:I

    .line 263
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 237
    :pswitch_0
    const/16 v18, 0x0

    aget-object v18, v8, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 238
    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 239
    const/16 v18, 0x0

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 240
    const/16 v18, 0x0

    aget-object v18, v8, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 241
    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 242
    add-int/lit8 v10, v10, 0x1

    .line 243
    goto :goto_3

    .line 246
    :pswitch_1
    const/16 v18, 0x1

    aget-object v18, v8, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 247
    const/16 v18, 0x1

    aget-object v18, v9, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 248
    const/16 v18, 0x1

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v9, v11}, Lorg/jbox2d/collision/Distance;->ProcessTwo(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;)I

    move-result v10

    .line 250
    goto :goto_3

    .line 253
    :pswitch_2
    const/16 v18, 0x2

    aget-object v18, v8, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 254
    const/16 v18, 0x2

    aget-object v18, v9, v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 255
    const/16 v18, 0x2

    aget-object v18, v11, v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v9, v11}, Lorg/jbox2d/collision/Distance;->ProcessThree(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;)I

    move-result v10

    goto/16 :goto_3

    .line 267
    :cond_5
    const v7, -0x800001

    .line 268
    .local v7, "maxSqr":F
    const/4 v4, 0x0

    :goto_4
    if-lt v4, v10, :cond_7

    .line 272
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    const/high16 v18, 0x37480000

    mul-float v18, v18, v7

    cmpg-float v18, v13, v18

    if-gtz v18, :cond_8

    .line 273
    :cond_6
    sput v5, Lorg/jbox2d/collision/Distance;->g_GJK_Iterations:I

    .line 274
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 275
    invoke-static {v12, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v13

    .line 277
    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_2

    .line 269
    :cond_7
    aget-object v18, v11, v4

    aget-object v19, v11, v4

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 217
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static DistancePC(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)F
    .locals 9
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "polygon"    # Lorg/jbox2d/collision/PolygonShape;
    .param p3, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p4, "circle"    # Lorg/jbox2d/collision/CircleShape;
    .param p5, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    const/4 v1, 0x0

    .line 328
    new-instance v4, Lorg/jbox2d/collision/Point;

    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-direct {v4, v0}, Lorg/jbox2d/collision/Point;-><init>(Lorg/jbox2d/common/Vec2;)V

    .line 329
    .local v4, "point":Lorg/jbox2d/collision/Point;
    invoke-virtual {p4}, Lorg/jbox2d/collision/CircleShape;->getLocalPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, v4, Lorg/jbox2d/collision/Point;->p:Lorg/jbox2d/common/Vec2;

    .line 331
    sget-object v5, Lorg/jbox2d/common/XForm;->identity:Lorg/jbox2d/common/XForm;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/jbox2d/collision/Distance;->DistanceGeneric(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;)F

    move-result v7

    .line 333
    .local v7, "distance":F
    invoke-virtual {p4}, Lorg/jbox2d/collision/CircleShape;->getRadius()F

    move-result v0

    const v1, 0x3d23d70a    # 0.04f

    sub-float v8, v0, v1

    .line 335
    .local v8, "r":F
    cmpl-float v0, v7, v8

    if-lez v0, :cond_0

    .line 336
    sub-float/2addr v7, v8

    .line 337
    invoke-virtual {p1, p0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 338
    .local v6, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 339
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 340
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 346
    .end local v6    # "d":Lorg/jbox2d/common/Vec2;
    :goto_0
    return v7

    .line 342
    :cond_0
    const/4 v7, 0x0

    .line 343
    invoke-virtual {p1, p0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    goto :goto_0
.end method

.method protected static InPoints(Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;I)Z
    .locals 7
    .param p0, "w"    # Lorg/jbox2d/common/Vec2;
    .param p1, "points"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "pointCount"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 168
    const/high16 v2, 0x37480000

    .line 169
    .local v2, "k_tolerance":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 180
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 170
    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-static {v4}, Lorg/jbox2d/common/Vec2;->abs(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 172
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {p0}, Lorg/jbox2d/common/Vec2;->abs(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-static {v5}, Lorg/jbox2d/common/Vec2;->abs(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 174
    .local v3, "m":Lorg/jbox2d/common/Vec2;
    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v5, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 175
    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v5, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 176
    const/4 v4, 0x1

    goto :goto_1

    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static ProcessThree(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;)I
    .locals 28
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "p1s"    # [Lorg/jbox2d/common/Vec2;
    .param p3, "p2s"    # [Lorg/jbox2d/common/Vec2;
    .param p4, "points"    # [Lorg/jbox2d/common/Vec2;

    .prologue
    .line 88
    const/16 v24, 0x0

    aget-object v3, p4, v24

    .line 89
    .local v3, "a":Lorg/jbox2d/common/Vec2;
    const/16 v24, 0x1

    aget-object v6, p4, v24

    .line 90
    .local v6, "b":Lorg/jbox2d/common/Vec2;
    const/16 v24, 0x2

    aget-object v8, p4, v24

    .line 92
    .local v8, "c":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v6, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 93
    .local v4, "ab":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 94
    .local v5, "ac":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v6}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 96
    .local v7, "bc":Lorg/jbox2d/common/Vec2;
    invoke-static {v3, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    move/from16 v0, v24

    neg-float v13, v0

    .local v13, "sn":F
    invoke-static {v6, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    .line 97
    .local v12, "sd":F
    invoke-static {v3, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    move/from16 v0, v24

    neg-float v15, v0

    .local v15, "tn":F
    invoke-static {v8, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 98
    .local v14, "td":F
    invoke-static {v6, v7}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v18, v0

    .local v18, "un":F
    invoke-static {v8, v7}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    .line 101
    .local v17, "ud":F
    const/16 v24, 0x0

    cmpg-float v24, v14, v24

    if-gtz v24, :cond_0

    const/16 v24, 0x0

    cmpg-float v24, v17, v24

    if-gtz v24, :cond_0

    .line 103
    const/16 v24, 0x2

    aget-object v24, p2, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 104
    const/16 v24, 0x2

    aget-object v24, p3, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 105
    const/16 v24, 0x0

    aget-object v24, p2, v24

    const/16 v25, 0x2

    aget-object v25, p2, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 106
    const/16 v24, 0x0

    aget-object v24, p3, v24

    const/16 v25, 0x2

    aget-object v25, p3, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 107
    const/16 v24, 0x0

    aget-object v24, p4, v24

    const/16 v25, 0x2

    aget-object v25, p4, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 108
    const/16 v24, 0x1

    .line 164
    :goto_0
    return v24

    .line 114
    :cond_0
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_1

    const/16 v24, 0x0

    cmpl-float v24, v13, v24

    if-gtz v24, :cond_1

    const/16 v24, 0x0

    cmpl-float v24, v15, v24

    if-gtz v24, :cond_1

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 115
    :cond_1
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_2

    const/16 v24, 0x0

    cmpl-float v24, v12, v24

    if-gtz v24, :cond_2

    const/16 v24, 0x0

    cmpl-float v24, v18, v24

    if-gtz v24, :cond_2

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 117
    :cond_2
    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    .line 120
    .local v11, "n":F
    invoke-static {v3, v6}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v22, v11, v24

    .line 121
    .local v22, "vc":F
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v22, v24

    if-gtz v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v13, v24

    if-gtz v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v12, v24

    if-gtz v24, :cond_3

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 124
    :cond_3
    invoke-static {v6, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v20, v11, v24

    .line 125
    .local v20, "va":F
    const/16 v24, 0x0

    cmpg-float v24, v20, v24

    if-gtz v24, :cond_5

    const/16 v24, 0x0

    cmpl-float v24, v18, v24

    if-ltz v24, :cond_5

    const/16 v24, 0x0

    cmpl-float v24, v17, v24

    if-ltz v24, :cond_5

    add-float v24, v18, v17

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_5

    .line 126
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_4

    add-float v24, v18, v17

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-gtz v24, :cond_4

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 127
    :cond_4
    add-float v24, v18, v17

    div-float v10, v18, v24

    .line 128
    .local v10, "lambda":F
    const/16 v24, 0x1

    aget-object v24, p2, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    const/16 v26, 0x1

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v10

    add-float v24, v24, v25

    .line 129
    const/16 v25, 0x1

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    const/16 v26, 0x2

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    const/16 v27, 0x1

    aget-object v27, p2, v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    mul-float v26, v26, v10

    add-float v25, v25, v26

    .line 128
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 130
    const/16 v24, 0x1

    aget-object v24, p3, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    const/16 v26, 0x1

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v10

    add-float v24, v24, v25

    .line 131
    const/16 v25, 0x1

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    const/16 v26, 0x2

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    const/16 v27, 0x1

    aget-object v27, p3, v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    mul-float v26, v26, v10

    add-float v25, v25, v26

    .line 130
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 132
    const/16 v24, 0x0

    aget-object v24, p2, v24

    const/16 v25, 0x2

    aget-object v25, p2, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 133
    const/16 v24, 0x0

    aget-object v24, p3, v24

    const/16 v25, 0x2

    aget-object v25, p3, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 134
    const/16 v24, 0x0

    aget-object v24, p4, v24

    const/16 v25, 0x2

    aget-object v25, p4, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 135
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 139
    .end local v10    # "lambda":F
    :cond_5
    invoke-static {v8, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v21, v11, v24

    .line 140
    .local v21, "vb":F
    const/16 v24, 0x0

    cmpg-float v24, v21, v24

    if-gtz v24, :cond_7

    const/16 v24, 0x0

    cmpl-float v24, v15, v24

    if-ltz v24, :cond_7

    const/16 v24, 0x0

    cmpl-float v24, v14, v24

    if-ltz v24, :cond_7

    add-float v24, v15, v14

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_7

    .line 141
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_6

    add-float v24, v15, v14

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-gtz v24, :cond_6

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 142
    :cond_6
    add-float v24, v15, v14

    div-float v10, v15, v24

    .line 143
    .restart local v10    # "lambda":F
    const/16 v24, 0x0

    aget-object v24, p2, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    const/16 v26, 0x0

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v10

    add-float v24, v24, v25

    .line 144
    const/16 v25, 0x0

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    const/16 v26, 0x2

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    const/16 v27, 0x0

    aget-object v27, p2, v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    mul-float v26, v26, v10

    add-float v25, v25, v26

    .line 143
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 145
    const/16 v24, 0x0

    aget-object v24, p3, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    const/16 v26, 0x0

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v10

    add-float v24, v24, v25

    .line 146
    const/16 v25, 0x0

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    const/16 v26, 0x2

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    const/16 v27, 0x0

    aget-object v27, p3, v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    mul-float v26, v26, v10

    add-float v25, v25, v26

    .line 145
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 147
    const/16 v24, 0x1

    aget-object v24, p2, v24

    const/16 v25, 0x2

    aget-object v25, p2, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 148
    const/16 v24, 0x1

    aget-object v24, p3, v24

    const/16 v25, 0x2

    aget-object v25, p3, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 149
    const/16 v24, 0x1

    aget-object v24, p4, v24

    const/16 v25, 0x2

    aget-object v25, p4, v25

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 150
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 154
    .end local v10    # "lambda":F
    :cond_7
    add-float v24, v20, v21

    add-float v9, v24, v22

    .line 155
    .local v9, "denom":F
    sget-boolean v24, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v24, :cond_8

    const/16 v24, 0x0

    cmpl-float v24, v9, v24

    if-gtz v24, :cond_8

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 156
    :cond_8
    const/high16 v24, 0x3f800000    # 1.0f

    div-float v9, v24, v9

    .line 157
    mul-float v16, v20, v9

    .line 158
    .local v16, "u":F
    mul-float v19, v21, v9

    .line 159
    .local v19, "v":F
    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v16

    sub-float v23, v24, v19

    .line 160
    .local v23, "w":F
    const/16 v24, 0x0

    aget-object v24, p2, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/16 v25, 0x1

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v19

    add-float v24, v24, v25

    const/16 v25, 0x2

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v23

    add-float v24, v24, v25

    .line 161
    const/16 v25, 0x0

    aget-object v25, p2, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    const/16 v26, 0x1

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v19

    add-float v25, v25, v26

    const/16 v26, 0x2

    aget-object v26, p2, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v23

    add-float v25, v25, v26

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 162
    const/16 v24, 0x0

    aget-object v24, p3, v24

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/16 v25, 0x1

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v19

    add-float v24, v24, v25

    const/16 v25, 0x2

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v23

    add-float v24, v24, v25

    .line 163
    const/16 v25, 0x0

    aget-object v25, p3, v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    const/16 v26, 0x1

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v19

    add-float v25, v25, v26

    const/16 v26, 0x2

    aget-object v26, p3, v26

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v23

    add-float v25, v25, v26

    .line 162
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 164
    const/16 v24, 0x3

    goto/16 :goto_0
.end method

.method protected static ProcessTwo(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;[Lorg/jbox2d/common/Vec2;)I
    .locals 10
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "p1s"    # [Lorg/jbox2d/common/Vec2;
    .param p3, "p2s"    # [Lorg/jbox2d/common/Vec2;
    .param p4, "points"    # [Lorg/jbox2d/common/Vec2;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 59
    new-instance v3, Lorg/jbox2d/common/Vec2;

    aget-object v5, p4, v4

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v5, v5

    aget-object v6, p4, v4

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v6, v6

    invoke-direct {v3, v5, v6}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 60
    .local v3, "r":Lorg/jbox2d/common/Vec2;
    new-instance v0, Lorg/jbox2d/common/Vec2;

    aget-object v5, p4, v9

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v6, p4, v4

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v5, v6

    aget-object v6, p4, v9

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v7, p4, v4

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v6, v7

    invoke-direct {v0, v5, v6}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 61
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v2

    .line 62
    .local v2, "length":F
    invoke-static {v3, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 63
    .local v1, "lambda":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-lez v5, :cond_0

    const/high16 v5, 0x34000000

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 65
    :cond_0
    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 66
    aget-object v5, p3, v4

    invoke-virtual {p1, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 67
    aget-object v5, p2, v9

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 68
    aget-object v5, p3, v9

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 69
    aget-object v5, p4, v9

    aget-object v6, p4, v4

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 79
    :goto_0
    return v4

    .line 74
    :cond_1
    div-float/2addr v1, v2

    .line 75
    aget-object v5, p2, v4

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v6, p2, v9

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v7, p2, v4

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 76
    aget-object v6, p2, v4

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v7, p2, v9

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v8, p2, v4

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 75
    invoke-virtual {p0, v5, v6}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 77
    aget-object v5, p3, v4

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v6, p3, v9

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    aget-object v7, p3, v4

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 78
    aget-object v6, p3, v4

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v7, p3, v9

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    aget-object v4, p3, v4

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v4, v7, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v6

    .line 77
    invoke-virtual {p1, v5, v4}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 79
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static distance(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/Shape;Lorg/jbox2d/common/XForm;)F
    .locals 8
    .param p0, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p2, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p3, "xf1"    # Lorg/jbox2d/common/XForm;
    .param p4, "shape2"    # Lorg/jbox2d/collision/Shape;
    .param p5, "xf2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 366
    invoke-virtual {p2}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v6

    .line 367
    .local v6, "type1":Lorg/jbox2d/collision/ShapeType;
    invoke-virtual {p4}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v7

    .line 369
    .local v7, "type2":Lorg/jbox2d/collision/ShapeType;
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v6, v0, :cond_0

    sget-object v0, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v7, v0, :cond_0

    move-object v2, p2

    .line 370
    check-cast v2, Lorg/jbox2d/collision/CircleShape;

    move-object v4, p4

    check-cast v4, Lorg/jbox2d/collision/CircleShape;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/jbox2d/collision/Distance;->DistanceCC(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)F

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 373
    :cond_0
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v6, v0, :cond_1

    sget-object v0, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v7, v0, :cond_1

    move-object v2, p2

    .line 374
    check-cast v2, Lorg/jbox2d/collision/PolygonShape;

    move-object v4, p4

    check-cast v4, Lorg/jbox2d/collision/CircleShape;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/jbox2d/collision/Distance;->DistancePC(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)F

    move-result v0

    goto :goto_0

    .line 377
    :cond_1
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v6, v0, :cond_2

    sget-object v0, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v7, v0, :cond_2

    move-object v2, p4

    .line 378
    check-cast v2, Lorg/jbox2d/collision/PolygonShape;

    move-object v4, p2

    check-cast v4, Lorg/jbox2d/collision/CircleShape;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p5

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jbox2d/collision/Distance;->DistancePC(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)F

    move-result v0

    goto :goto_0

    .line 381
    :cond_2
    sget-object v0, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v6, v0, :cond_3

    sget-object v0, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v7, v0, :cond_3

    move-object v2, p2

    .line 382
    check-cast v2, Lorg/jbox2d/collision/PolygonShape;

    move-object v4, p4

    check-cast v4, Lorg/jbox2d/collision/PolygonShape;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/jbox2d/collision/Distance;->DistanceGeneric(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/SupportsGenericDistance;Lorg/jbox2d/common/XForm;)F

    move-result v0

    goto :goto_0

    .line 385
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
