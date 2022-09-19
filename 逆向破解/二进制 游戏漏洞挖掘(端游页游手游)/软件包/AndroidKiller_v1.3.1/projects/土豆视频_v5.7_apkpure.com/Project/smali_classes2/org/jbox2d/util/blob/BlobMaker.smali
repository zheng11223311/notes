.class public Lorg/jbox2d/util/blob/BlobMaker;
.super Ljava/lang/Object;
.source "BlobMaker.java"


# static fields
.field public static pointDensity:F

.field public static pointFriction:F

.field public static pointRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lorg/jbox2d/util/blob/BlobMaker;->pointRadius:F

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/jbox2d/util/blob/BlobMaker;->pointDensity:F

    .line 19
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lorg/jbox2d/util/blob/BlobMaker;->pointFriction:F

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlob(Lorg/jbox2d/util/blob/BlobStructure;Lorg/jbox2d/util/blob/BlobContainer;Lorg/jbox2d/dynamics/World;)V
    .locals 1
    .param p0, "s"    # Lorg/jbox2d/util/blob/BlobStructure;
    .param p1, "c"    # Lorg/jbox2d/util/blob/BlobContainer;
    .param p2, "w"    # Lorg/jbox2d/dynamics/World;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    invoke-static {p0, p1, p2, v0, v0}, Lorg/jbox2d/util/blob/BlobMaker;->createBlob(Lorg/jbox2d/util/blob/BlobStructure;Lorg/jbox2d/util/blob/BlobContainer;Lorg/jbox2d/dynamics/World;FF)V

    .line 37
    return-void
.end method

.method public static createBlob(Lorg/jbox2d/util/blob/BlobStructure;Lorg/jbox2d/util/blob/BlobContainer;Lorg/jbox2d/dynamics/World;FF)V
    .locals 7
    .param p0, "s"    # Lorg/jbox2d/util/blob/BlobStructure;
    .param p1, "c"    # Lorg/jbox2d/util/blob/BlobContainer;
    .param p2, "w"    # Lorg/jbox2d/dynamics/World;
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F

    .prologue
    const/4 v5, 0x0

    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/jbox2d/util/blob/BlobMaker;->createBlob(Lorg/jbox2d/util/blob/BlobStructure;Lorg/jbox2d/util/blob/BlobContainer;Lorg/jbox2d/dynamics/World;FFFF)V

    .line 57
    return-void
.end method

.method public static createBlob(Lorg/jbox2d/util/blob/BlobStructure;Lorg/jbox2d/util/blob/BlobContainer;Lorg/jbox2d/dynamics/World;FFFF)V
    .locals 34
    .param p0, "s"    # Lorg/jbox2d/util/blob/BlobStructure;
    .param p1, "c"    # Lorg/jbox2d/util/blob/BlobContainer;
    .param p2, "w"    # Lorg/jbox2d/dynamics/World;
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "transX"    # F
    .param p6, "transY"    # F

    .prologue
    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/jbox2d/util/blob/BlobContainer;->getAABB()Lorg/jbox2d/collision/AABB;

    move-result-object v8

    .line 98
    .local v8, "aabb":Lorg/jbox2d/collision/AABB;
    :goto_0
    const/4 v7, 0x0

    cmpl-float v7, p5, v7

    if-gtz v7, :cond_0

    .line 99
    :goto_1
    const/4 v7, 0x0

    cmpl-float v7, p6, v7

    if-gtz v7, :cond_1

    .line 100
    iget-object v7, v8, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    add-float v28, v7, p5

    .line 101
    .local v28, "xMin":F
    iget-object v7, v8, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    add-float v30, v7, p6

    .line 103
    .local v30, "yMin":F
    iget-object v7, v8, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v7, v7, v28

    div-float v7, v7, p3

    float-to-double v0, v7

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v25, v0

    .line 104
    .local v25, "nWidth":I
    iget-object v7, v8, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v7, v7, v30

    div-float v7, v7, p4

    float-to-double v0, v7

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v22, v0

    .line 108
    .local v22, "nHeight":I
    add-int/lit8 v25, v25, 0x3

    .line 109
    add-int/lit8 v22, v22, 0x3

    .line 112
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 113
    .local v23, "nPerCell":I
    mul-int v7, v23, v25

    mul-int v24, v7, v22

    .line 115
    .local v24, "nPoints":I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    move/from16 v0, v24

    new-array v2, v0, [Lorg/jbox2d/dynamics/Body;

    .line 119
    .local v2, "bodies":[Lorg/jbox2d/dynamics/Body;
    new-instance v11, Lorg/jbox2d/collision/CircleDef;

    invoke-direct {v11}, Lorg/jbox2d/collision/CircleDef;-><init>()V

    .line 120
    .local v11, "cd":Lorg/jbox2d/collision/CircleDef;
    sget v7, Lorg/jbox2d/util/blob/BlobMaker;->pointRadius:F

    iput v7, v11, Lorg/jbox2d/collision/CircleDef;->radius:F

    .line 121
    sget v7, Lorg/jbox2d/util/blob/BlobMaker;->pointDensity:F

    iput v7, v11, Lorg/jbox2d/collision/CircleDef;->density:F

    .line 122
    sget v7, Lorg/jbox2d/util/blob/BlobMaker;->pointFriction:F

    iput v7, v11, Lorg/jbox2d/collision/CircleDef;->friction:F

    .line 123
    const/4 v14, 0x0

    .line 124
    .local v14, "index":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 153
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 204
    return-void

    .line 98
    .end local v2    # "bodies":[Lorg/jbox2d/dynamics/Body;
    .end local v11    # "cd":Lorg/jbox2d/collision/CircleDef;
    .end local v14    # "index":I
    .end local v20    # "j":I
    .end local v22    # "nHeight":I
    .end local v23    # "nPerCell":I
    .end local v24    # "nPoints":I
    .end local v25    # "nWidth":I
    .end local v28    # "xMin":F
    .end local v30    # "yMin":F
    :cond_0
    sub-float p5, p5, p3

    goto/16 :goto_0

    .line 99
    :cond_1
    sub-float p6, p6, p4

    goto/16 :goto_1

    .line 125
    .restart local v2    # "bodies":[Lorg/jbox2d/dynamics/Body;
    .restart local v11    # "cd":Lorg/jbox2d/collision/CircleDef;
    .restart local v14    # "index":I
    .restart local v20    # "j":I
    .restart local v22    # "nHeight":I
    .restart local v23    # "nPerCell":I
    .restart local v24    # "nPoints":I
    .restart local v25    # "nWidth":I
    .restart local v28    # "xMin":F
    .restart local v30    # "yMin":F
    :cond_2
    add-float v7, v30, p6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, p4

    add-float v31, v7, v32

    .line 126
    .local v31, "yStart":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move/from16 v0, v25

    if-lt v12, v0, :cond_3

    .line 124
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 127
    :cond_3
    add-float v7, v28, p5

    int-to-float v0, v12

    move/from16 v32, v0

    mul-float v32, v32, p3

    add-float v29, v7, v32

    .line 128
    .local v29, "xStart":F
    const/16 v21, 0x0

    .local v21, "k":I
    move v15, v14

    .end local v14    # "index":I
    .local v15, "index":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 126
    add-int/lit8 v12, v12, 0x1

    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_4

    .line 129
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_4
    new-instance v26, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jbox2d/util/blob/BlobPoint;

    iget-object v7, v7, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    add-float v32, v7, v29

    .line 130
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->points:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jbox2d/util/blob/BlobPoint;

    iget-object v7, v7, Lorg/jbox2d/util/blob/BlobPoint;->position:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    add-float v7, v7, v31

    .line 129
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-direct {v0, v1, v7}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 131
    .local v26, "position":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/jbox2d/util/blob/BlobContainer;->containsPoint(Lorg/jbox2d/common/Vec2;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 132
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    const/4 v7, 0x0

    aput-object v7, v2, v15

    .line 128
    :goto_6
    add-int/lit8 v21, v21, 0x1

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_5

    .line 138
    :cond_5
    new-instance v9, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v9}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 139
    .local v9, "bd":Lorg/jbox2d/dynamics/BodyDef;
    move-object/from16 v0, v26

    iput-object v0, v9, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    .line 140
    const/4 v7, 0x0

    iput-boolean v7, v9, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    .line 141
    const v7, 0x3e4ccccd    # 0.2f

    iput v7, v9, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    aput-object v7, v2, v15

    .line 143
    aget-object v7, v2, v15

    invoke-virtual {v7, v11}, Lorg/jbox2d/dynamics/Body;->createShape(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;

    .line 144
    aget-object v7, v2, v15

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->setMassFromShapes()V

    .line 145
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_6

    .line 154
    .end local v9    # "bd":Lorg/jbox2d/dynamics/BodyDef;
    .end local v12    # "i":I
    .end local v21    # "k":I
    .end local v26    # "position":Lorg/jbox2d/common/Vec2;
    .end local v29    # "xStart":F
    .end local v31    # "yStart":F
    :cond_6
    mul-int v7, v20, v25

    mul-int v27, v7, v23

    .line 155
    .local v27, "rowStartIndex":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v25

    if-lt v12, v0, :cond_7

    .line 153
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 156
    :cond_7
    mul-int v7, v12, v23

    add-int v10, v27, v7

    .line 157
    .local v10, "boxStartIndex":I
    add-int/lit8 v7, v25, -0x1

    neg-int v7, v7

    mul-int v7, v7, v23

    add-int v19, v7, v10

    .line 158
    .local v19, "indexUR":I
    add-int v18, v23, v10

    .line 159
    .local v18, "indexR":I
    add-int/lit8 v7, v25, 0x1

    mul-int v7, v7, v23

    add-int v17, v7, v10

    .line 160
    .local v17, "indexDR":I
    mul-int v7, v25, v23

    add-int v16, v7, v10

    .line 161
    .local v16, "indexD":I
    const/16 v21, 0x0

    .restart local v21    # "k":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v21

    if-lt v0, v7, :cond_9

    .line 169
    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsR:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v21

    if-lt v0, v7, :cond_a

    .line 177
    const/16 v21, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsDR:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v21

    if-lt v0, v7, :cond_b

    .line 185
    const/16 v21, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsD:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v21

    if-lt v0, v7, :cond_c

    .line 193
    const/16 v21, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsUR:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 155
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 162
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connections:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 163
    .local v13, "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    add-int v3, v7, v10

    .line 164
    .local v3, "a":I
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    add-int v4, v7, v10

    .line 165
    .local v4, "b":I
    iget v5, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 166
    .local v5, "freq":F
    iget v6, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    .local v6, "damp":F
    move-object/from16 v7, p2

    .line 167
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/util/blob/BlobMaker;->createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 161
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 170
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "freq":F
    .end local v6    # "damp":F
    .end local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsR:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 171
    .restart local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    add-int v3, v7, v10

    .line 172
    .restart local v3    # "a":I
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    add-int v4, v7, v18

    .line 173
    .restart local v4    # "b":I
    iget v5, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 174
    .restart local v5    # "freq":F
    iget v6, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    .restart local v6    # "damp":F
    move-object/from16 v7, p2

    .line 175
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/util/blob/BlobMaker;->createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 169
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 178
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "freq":F
    .end local v6    # "damp":F
    .end local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsDR:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 179
    .restart local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    add-int v3, v7, v10

    .line 180
    .restart local v3    # "a":I
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    add-int v4, v7, v17

    .line 181
    .restart local v4    # "b":I
    iget v5, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 182
    .restart local v5    # "freq":F
    iget v6, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    .restart local v6    # "damp":F
    move-object/from16 v7, p2

    .line 183
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/util/blob/BlobMaker;->createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 177
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 186
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "freq":F
    .end local v6    # "damp":F
    .end local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsD:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 187
    .restart local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    add-int v3, v7, v10

    .line 188
    .restart local v3    # "a":I
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    add-int v4, v7, v16

    .line 189
    .restart local v4    # "b":I
    iget v5, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 190
    .restart local v5    # "freq":F
    iget v6, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    .restart local v6    # "damp":F
    move-object/from16 v7, p2

    .line 191
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/util/blob/BlobMaker;->createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 185
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 194
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "freq":F
    .end local v6    # "damp":F
    .end local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    :cond_d
    if-eqz v20, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/util/blob/BlobStructure;->connectionsUR:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;

    .line 196
    .restart local v13    # "iiff":Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->a:I

    add-int v3, v7, v10

    .line 197
    .restart local v3    # "a":I
    iget v7, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->b:I

    add-int v4, v7, v19

    .line 198
    .restart local v4    # "b":I
    iget v5, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->c:F

    .line 199
    .restart local v5    # "freq":F
    iget v6, v13, Lorg/jbox2d/util/blob/BlobStructure$IntIntFloatFloat;->d:F

    .restart local v6    # "damp":F
    move-object/from16 v7, p2

    .line 200
    invoke-static/range {v2 .. v7}, Lorg/jbox2d/util/blob/BlobMaker;->createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;

    .line 193
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c
.end method

.method private static createConnection([Lorg/jbox2d/dynamics/Body;IIFFLorg/jbox2d/dynamics/World;)Lorg/jbox2d/dynamics/joints/Joint;
    .locals 5
    .param p0, "bodies"    # [Lorg/jbox2d/dynamics/Body;
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "frequency"    # F
    .param p4, "damping"    # F
    .param p5, "w"    # Lorg/jbox2d/dynamics/World;

    .prologue
    .line 208
    array-length v1, p0

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 209
    aget-object v1, p0, p1

    if-eqz v1, :cond_0

    aget-object v1, p0, p2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 211
    :cond_1
    new-instance v0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/DistanceJointDef;-><init>()V

    .line 212
    .local v0, "jd":Lorg/jbox2d/dynamics/joints/DistanceJointDef;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->collideConnected:Z

    .line 213
    iput p4, v0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    .line 214
    iput p3, v0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    .line 215
    aget-object v1, p0, p1

    aget-object v2, p0, p2

    aget-object v3, p0, p1

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    aget-object v4, p0, p2

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getPosition()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 216
    invoke-virtual {p5, v0}, Lorg/jbox2d/dynamics/World;->createJoint(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;

    move-result-object v1

    goto :goto_0
.end method
