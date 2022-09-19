.class public Lorg/jbox2d/collision/PolygonShape;
.super Lorg/jbox2d/collision/Shape;
.source "PolygonShape.java"

# interfaces
.implements Lorg/jbox2d/collision/SupportsGenericDistance;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static m_debug:Z


# instance fields
.field public m_centroid:Lorg/jbox2d/common/Vec2;

.field public m_coreVertices:[Lorg/jbox2d/common/Vec2;

.field public m_normals:[Lorg/jbox2d/common/Vec2;

.field public m_obb:Lorg/jbox2d/collision/OBB;

.field public m_vertexCount:I

.field public m_vertices:[Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lorg/jbox2d/collision/PolygonShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    .line 36
    sput-boolean v1, Lorg/jbox2d/collision/PolygonShape;->m_debug:Z

    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ShapeDef;)V
    .locals 19
    .param p1, "def"    # Lorg/jbox2d/collision/ShapeDef;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p1}, Lorg/jbox2d/collision/Shape;-><init>(Lorg/jbox2d/collision/ShapeDef;)V

    .line 56
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/ShapeDef;->type:Lorg/jbox2d/collision/ShapeType;

    move-object/from16 v16, v0

    sget-object v17, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 57
    :cond_0
    sget-object v16, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_type:Lorg/jbox2d/collision/ShapeType;

    move-object/from16 v13, p1

    .line 58
    check-cast v13, Lorg/jbox2d/collision/PolygonDef;

    .line 60
    .local v13, "poly":Lorg/jbox2d/collision/PolygonDef;
    invoke-virtual {v13}, Lorg/jbox2d/collision/PolygonDef;->getVertexCount()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    .line 61
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 62
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    .line 63
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    .line 65
    new-instance v16, Lorg/jbox2d/collision/OBB;

    invoke-direct/range {v16 .. v16}, Lorg/jbox2d/collision/OBB;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    .line 68
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_2

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 71
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_5

    .line 76
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_6

    .line 85
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->m_debug:Z

    if-eqz v16, :cond_3

    .line 87
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_9

    .line 103
    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_d

    .line 117
    :cond_3
    iget-object v0, v13, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/jbox2d/collision/PolygonShape;->computeCentroid(Ljava/util/List;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/jbox2d/collision/PolygonShape;->computeOBB(Lorg/jbox2d/collision/OBB;[Lorg/jbox2d/common/Vec2;)V

    .line 124
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_f

    .line 154
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->m_debug:Z

    if-eqz v16, :cond_4

    .line 155
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\nDumping polygon shape..."

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Vertices: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_15

    .line 160
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Core Vertices: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_16

    .line 164
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Normals: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    const/4 v7, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_17

    .line 168
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Centroid: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    :cond_4
    return-void

    .line 72
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    iget-object v0, v13, Lorg/jbox2d/collision/PolygonDef;->vertices:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jbox2d/common/Vec2;

    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    aput-object v16, v17, v7

    .line 71
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 77
    :cond_6
    move v8, v7

    .line 78
    .local v8, "i1":I
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 79
    .local v9, "i2":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 80
    .local v6, "edge":Lorg/jbox2d/common/Vec2;
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_8

    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v16

    const/high16 v17, 0x28800000

    cmpl-float v16, v16, v17

    if-gtz v16, :cond_8

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 78
    .end local v6    # "edge":Lorg/jbox2d/common/Vec2;
    .end local v9    # "i2":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_8

    .line 81
    .restart local v6    # "edge":Lorg/jbox2d/common/Vec2;
    .restart local v9    # "i2":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    aput-object v17, v16, v7

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 88
    .end local v6    # "edge":Lorg/jbox2d/common/Vec2;
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    :cond_9
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_a

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 90
    :cond_a
    if-eq v10, v7, :cond_b

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v17, v0

    rem-int v16, v16, v17

    move/from16 v0, v16

    if-ne v10, v0, :cond_c

    .line 88
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 97
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 98
    .local v14, "s":F
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_b

    const v16, -0x445c28f6    # -0.005f

    cmpg-float v16, v14, v16

    if-ltz v16, :cond_b

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 104
    .end local v10    # "j":I
    .end local v14    # "s":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    add-int/lit8 v17, v7, -0x1

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-static/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 107
    .local v4, "cross":F
    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v4

    .line 110
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 111
    .local v3, "angle":F
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_e

    const v16, 0x3d0efa36

    cmpl-float v16, v3, v16

    if-gtz v16, :cond_e

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 103
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 125
    .end local v3    # "angle":F
    .end local v4    # "cross":F
    :cond_f
    add-int/lit8 v16, v7, -0x1

    if-ltz v16, :cond_12

    add-int/lit8 v8, v7, -0x1

    .line 126
    .restart local v8    # "i1":I
    :goto_a
    move v9, v7

    .line 128
    .restart local v9    # "i2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v11, v16, v8

    .line 129
    .local v11, "n1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v12, v16, v9

    .line 130
    .local v12, "n2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 132
    .local v15, "v":Lorg/jbox2d/common/Vec2;
    new-instance v5, Lorg/jbox2d/common/Vec2;

    invoke-direct {v5}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 133
    .local v5, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {v11, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    const v17, 0x3d23d70a    # 0.04f

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 134
    invoke-static {v12, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    const v17, 0x3d23d70a    # 0.04f

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 140
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->m_debug:Z

    if-eqz v16, :cond_11

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_10

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_11

    .line 141
    :cond_10
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Error, dumping details: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "d.x: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "d.y: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "n1: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; n2: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "v: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_11
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_13

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-gez v16, :cond_13

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 125
    .end local v5    # "d":Lorg/jbox2d/common/Vec2;
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    .end local v11    # "n1":Lorg/jbox2d/common/Vec2;
    .end local v12    # "n2":Lorg/jbox2d/common/Vec2;
    .end local v15    # "v":Lorg/jbox2d/common/Vec2;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, -0x1

    goto/16 :goto_a

    .line 147
    .restart local v5    # "d":Lorg/jbox2d/common/Vec2;
    .restart local v8    # "i1":I
    .restart local v9    # "i2":I
    .restart local v11    # "n1":Lorg/jbox2d/common/Vec2;
    .restart local v12    # "n2":Lorg/jbox2d/common/Vec2;
    .restart local v15    # "v":Lorg/jbox2d/common/Vec2;
    :cond_13
    sget-boolean v16, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v16, :cond_14

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-gez v16, :cond_14

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 148
    :cond_14
    new-instance v2, Lorg/jbox2d/common/Mat22;

    invoke-direct {v2}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 149
    .local v2, "A":Lorg/jbox2d/common/Mat22;
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 150
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    invoke-virtual {v2, v5}, Lorg/jbox2d/common/Mat22;->solve(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    aput-object v17, v16, v7

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 158
    .end local v2    # "A":Lorg/jbox2d/common/Mat22;
    .end local v5    # "d":Lorg/jbox2d/common/Vec2;
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    .end local v11    # "n1":Lorg/jbox2d/common/Vec2;
    .end local v12    # "n2":Lorg/jbox2d/common/Vec2;
    .end local v15    # "v":Lorg/jbox2d/common/Vec2;
    :cond_15
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 162
    :cond_16
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 166
    :cond_17
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7
.end method

.method public static computeCentroid(Ljava/util/List;)Lorg/jbox2d/common/Vec2;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/common/Vec2;",
            ">;)",
            "Lorg/jbox2d/common/Vec2;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "vs":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/common/Vec2;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    .line 292
    .local v4, "count":I
    sget-boolean v14, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    const/4 v14, 0x3

    if-ge v4, v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 294
    :cond_0
    new-instance v3, Lorg/jbox2d/common/Vec2;

    invoke-direct {v3}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 295
    .local v3, "c":Lorg/jbox2d/common/Vec2;
    const/4 v2, 0x0

    .line 299
    .local v2, "area":F
    new-instance v12, Lorg/jbox2d/common/Vec2;

    invoke-direct {v12}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 309
    .local v12, "pRef":Lorg/jbox2d/common/Vec2;
    const v8, 0x3eaaaaab

    .line 311
    .local v8, "inv3":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v4, :cond_1

    .line 333
    sget-boolean v14, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v14, :cond_3

    const/high16 v14, 0x34000000

    cmpl-float v14, v2, v14

    if-gtz v14, :cond_3

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 313
    :cond_1
    move-object v9, v12

    .line 314
    .local v9, "p1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jbox2d/common/Vec2;

    .line 315
    .local v10, "p2":Lorg/jbox2d/common/Vec2;
    add-int/lit8 v14, v7, 0x1

    if-ge v14, v4, :cond_2

    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jbox2d/common/Vec2;

    move-object v11, v14

    .line 317
    .local v11, "p3":Lorg/jbox2d/common/Vec2;
    :goto_1
    invoke-virtual {v10, v9}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 318
    .local v5, "e1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v11, v9}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 320
    .local v6, "e2":Lorg/jbox2d/common/Vec2;
    invoke-static {v5, v6}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 322
    .local v1, "D":F
    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v13, v14, v1

    .line 323
    .local v13, "triangleArea":F
    add-float/2addr v2, v13

    .line 327
    iget v14, v3, Lorg/jbox2d/common/Vec2;->x:F

    const v15, 0x3eaaaaab

    mul-float/2addr v15, v13

    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    add-float v16, v16, v17

    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 328
    iget v14, v3, Lorg/jbox2d/common/Vec2;->y:F

    const v15, 0x3eaaaaab

    mul-float/2addr v15, v13

    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    add-float v16, v16, v17

    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "D":F
    .end local v5    # "e1":Lorg/jbox2d/common/Vec2;
    .end local v6    # "e2":Lorg/jbox2d/common/Vec2;
    .end local v11    # "p3":Lorg/jbox2d/common/Vec2;
    .end local v13    # "triangleArea":F
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jbox2d/common/Vec2;

    move-object v11, v14

    goto :goto_1

    .line 334
    .end local v9    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v10    # "p2":Lorg/jbox2d/common/Vec2;
    :cond_3
    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v2

    invoke-virtual {v3, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 335
    return-object v3
.end method

.method public static computeOBB(Lorg/jbox2d/collision/OBB;[Lorg/jbox2d/common/Vec2;)V
    .locals 22
    .param p0, "obb"    # Lorg/jbox2d/collision/OBB;
    .param p1, "vs"    # [Lorg/jbox2d/common/Vec2;

    .prologue
    .line 340
    move-object/from16 v0, p1

    array-length v4, v0

    .line 341
    .local v4, "count":I
    sget-boolean v17, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    const/16 v17, 0x8

    move/from16 v0, v17

    if-le v4, v0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 342
    :cond_0
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v11, v0, [Lorg/jbox2d/common/Vec2;

    .line 343
    .local v11, "p":[Lorg/jbox2d/common/Vec2;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v4, :cond_1

    .line 346
    const/16 v17, 0x0

    aget-object v17, v11, v17

    aput-object v17, v11, v4

    .line 348
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 350
    .local v10, "minArea":F
    const/4 v6, 0x1

    :goto_1
    if-le v6, v4, :cond_2

    .line 379
    sget-boolean v17, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v17, :cond_6

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v17, v10, v17

    if-ltz v17, :cond_6

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 344
    .end local v10    # "minArea":F
    :cond_1
    aget-object v17, p1, v6

    aput-object v17, v11, v6

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 351
    .restart local v10    # "minArea":F
    :cond_2
    add-int/lit8 v17, v6, -0x1

    aget-object v13, v11, v17

    .line 352
    .local v13, "root":Lorg/jbox2d/common/Vec2;
    aget-object v17, v11, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 353
    .local v15, "ux":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v8

    .line 354
    .local v8, "length":F
    sget-boolean v17, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v17, :cond_3

    const/high16 v17, 0x34000000

    cmpl-float v17, v8, v17

    if-gtz v17, :cond_3

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 355
    :cond_3
    new-instance v16, Lorg/jbox2d/common/Vec2;

    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 356
    .local v16, "uy":Lorg/jbox2d/common/Vec2;
    new-instance v9, Lorg/jbox2d/common/Vec2;

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    const v18, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 357
    .local v9, "lower":Lorg/jbox2d/common/Vec2;
    new-instance v14, Lorg/jbox2d/common/Vec2;

    const v17, -0x800001

    const v18, -0x800001

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 359
    .local v14, "upper":Lorg/jbox2d/common/Vec2;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v4, :cond_5

    .line 368
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v2, v17, v18

    .line 369
    .local v2, "area":F
    const v17, 0x3f733333    # 0.95f

    mul-float v17, v17, v10

    cmpg-float v17, v2, v17

    if-gez v17, :cond_4

    .line 370
    move v10, v2

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 373
    new-instance v3, Lorg/jbox2d/common/Vec2;

    const/high16 v17, 0x3f000000    # 0.5f

    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    add-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 374
    .local v3, "center":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    .line 375
    new-instance v17, Lorg/jbox2d/common/Vec2;

    const/high16 v18, 0x3f000000    # 0.5f

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    .line 350
    .end local v3    # "center":Lorg/jbox2d/common/Vec2;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 360
    .end local v2    # "area":F
    :cond_5
    aget-object v17, v11, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 361
    .local v5, "d":Lorg/jbox2d/common/Vec2;
    new-instance v12, Lorg/jbox2d/common/Vec2;

    invoke-direct {v12}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 362
    .local v12, "r":Lorg/jbox2d/common/Vec2;
    invoke-static {v15, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 363
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 364
    invoke-static {v9, v12}, Lorg/jbox2d/common/Vec2;->min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 365
    invoke-static {v14, v12}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 380
    .end local v5    # "d":Lorg/jbox2d/common/Vec2;
    .end local v7    # "j":I
    .end local v8    # "length":F
    .end local v9    # "lower":Lorg/jbox2d/common/Vec2;
    .end local v12    # "r":Lorg/jbox2d/common/Vec2;
    .end local v13    # "root":Lorg/jbox2d/common/Vec2;
    .end local v14    # "upper":Lorg/jbox2d/common/Vec2;
    .end local v15    # "ux":Lorg/jbox2d/common/Vec2;
    .end local v16    # "uy":Lorg/jbox2d/common/Vec2;
    :cond_6
    return-void
.end method


# virtual methods
.method public centroid(Lorg/jbox2d/common/XForm;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 520
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-static {p1, v0}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V
    .locals 7
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 383
    iget-object v4, p2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v5, p0, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    iget-object v5, v5, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v0

    .line 384
    .local v0, "R":Lorg/jbox2d/common/Mat22;
    invoke-static {v0}, Lorg/jbox2d/common/Mat22;->abs(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v1

    .line 385
    .local v1, "absR":Lorg/jbox2d/common/Mat22;
    iget-object v4, p0, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    iget-object v4, v4, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v4}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 386
    .local v2, "h":Lorg/jbox2d/common/Vec2;
    iget-object v4, p2, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v5, p2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v6, p0, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    iget-object v6, v6, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v6}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 387
    .local v3, "position":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v3, v2}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iput-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 388
    invoke-virtual {v3, v2}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iput-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 389
    return-void
.end method

.method public computeMass(Lorg/jbox2d/collision/MassData;)V
    .locals 28
    .param p1, "massData"    # Lorg/jbox2d/collision/MassData;

    .prologue
    .line 427
    sget-boolean v24, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 429
    :cond_0
    new-instance v6, Lorg/jbox2d/common/Vec2;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 430
    .local v6, "center":Lorg/jbox2d/common/Vec2;
    const/4 v5, 0x0

    .line 431
    .local v5, "area":F
    const/4 v4, 0x0

    .line 435
    .local v4, "I":F
    new-instance v20, Lorg/jbox2d/common/Vec2;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 437
    .local v20, "pRef":Lorg/jbox2d/common/Vec2;
    const v16, 0x3eaaaaab

    .line 439
    .local v16, "k_inv3":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_1

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_density:F

    move/from16 v24, v0

    mul-float v24, v24, v5

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/MassData;->mass:F

    .line 471
    sget-boolean v24, Lorg/jbox2d/collision/PolygonShape;->$assertionsDisabled:Z

    if-nez v24, :cond_3

    const/high16 v24, 0x34000000

    cmpl-float v24, v5, v24

    if-gtz v24, :cond_3

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 441
    :cond_1
    move-object/from16 v17, v20

    .line 442
    .local v17, "p1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    aget-object v18, v24, v13

    .line 443
    .local v18, "p2":Lorg/jbox2d/common/Vec2;
    add-int/lit8 v24, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    add-int/lit8 v25, v13, 0x1

    aget-object v19, v24, v25

    .line 445
    .local v19, "p3":Lorg/jbox2d/common/Vec2;
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 446
    .local v7, "e1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 448
    .local v8, "e2":Lorg/jbox2d/common/Vec2;
    invoke-static {v7, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 450
    .local v3, "D":F
    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v24, v3

    .line 451
    .local v23, "triangleArea":F
    add-float v5, v5, v23

    .line 454
    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v25, v23, v16

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    add-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 455
    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v25, v23, v16

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    add-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 457
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    .local v21, "px":F
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    .line 458
    .local v22, "py":F
    iget v9, v7, Lorg/jbox2d/common/Vec2;->x:F

    .local v9, "ex1":F
    iget v11, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 459
    .local v11, "ey1":F
    iget v10, v8, Lorg/jbox2d/common/Vec2;->x:F

    .local v10, "ex2":F
    iget v12, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 461
    .local v12, "ey2":F
    const/high16 v24, 0x3e800000    # 0.25f

    mul-float v25, v9, v9

    mul-float v26, v10, v9

    add-float v25, v25, v26

    mul-float v26, v10, v10

    add-float v25, v25, v26

    mul-float v24, v24, v25

    mul-float v25, v21, v9

    mul-float v26, v21, v10

    add-float v25, v25, v26

    add-float v24, v24, v25

    mul-float v24, v24, v16

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v25, v25, v21

    mul-float v25, v25, v21

    add-float v14, v24, v25

    .line 462
    .local v14, "intx2":F
    const/high16 v24, 0x3e800000    # 0.25f

    mul-float v25, v11, v11

    mul-float v26, v12, v11

    add-float v25, v25, v26

    mul-float v26, v12, v12

    add-float v25, v25, v26

    mul-float v24, v24, v25

    mul-float v25, v22, v11

    mul-float v26, v22, v12

    add-float v25, v25, v26

    add-float v24, v24, v25

    mul-float v24, v24, v16

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v25, v25, v22

    mul-float v25, v25, v22

    add-float v15, v24, v25

    .line 464
    .local v15, "inty2":F
    add-float v24, v14, v15

    mul-float v24, v24, v3

    add-float v4, v4, v24

    .line 439
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 443
    .end local v3    # "D":F
    .end local v7    # "e1":Lorg/jbox2d/common/Vec2;
    .end local v8    # "e2":Lorg/jbox2d/common/Vec2;
    .end local v9    # "ex1":F
    .end local v10    # "ex2":F
    .end local v11    # "ey1":F
    .end local v12    # "ey2":F
    .end local v14    # "intx2":F
    .end local v15    # "inty2":F
    .end local v19    # "p3":Lorg/jbox2d/common/Vec2;
    .end local v21    # "px":F
    .end local v22    # "py":F
    .end local v23    # "triangleArea":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v19, v24, v25

    goto/16 :goto_1

    .line 472
    .end local v17    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v18    # "p2":Lorg/jbox2d/common/Vec2;
    :cond_3
    const/high16 v24, 0x3f800000    # 1.0f

    div-float v24, v24, v5

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 473
    invoke-virtual {v6}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/PolygonShape;->m_density:F

    move/from16 v24, v0

    mul-float v24, v24, v4

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/MassData;->I:F

    .line 477
    return-void
.end method

.method public computeSweptAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)V
    .locals 4
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "transform1"    # Lorg/jbox2d/common/XForm;
    .param p3, "transform2"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 393
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 394
    .local v0, "aabb1":Lorg/jbox2d/collision/AABB;
    new-instance v1, Lorg/jbox2d/collision/AABB;

    invoke-direct {v1}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 395
    .local v1, "aabb2":Lorg/jbox2d/collision/AABB;
    invoke-virtual {p0, v0, p2}, Lorg/jbox2d/collision/PolygonShape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V

    .line 396
    invoke-virtual {p0, v1, p3}, Lorg/jbox2d/collision/PolygonShape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V

    .line 397
    iget-object v2, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iput-object v2, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 398
    iget-object v2, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iput-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 400
    return-void
.end method

.method public getCentroid()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getCoreVertices()[Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getFirstVertex(Lorg/jbox2d/common/XForm;)Lorg/jbox2d/common/Vec2;
    .locals 2
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 481
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getNormals()[Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getOBB()Lorg/jbox2d/collision/OBB;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_obb:Lorg/jbox2d/collision/OBB;

    invoke-virtual {v0}, Lorg/jbox2d/collision/OBB;->clone()Lorg/jbox2d/collision/OBB;

    move-result-object v0

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    return v0
.end method

.method public getVertices()[Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public support(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 7
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;
    .param p2, "d"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 275
    iget-object v5, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-static {v5, p2}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 277
    .local v2, "dLocal":Lorg/jbox2d/common/Vec2;
    const/4 v0, 0x0

    .line 278
    .local v0, "bestIndex":I
    iget-object v5, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 279
    .local v1, "bestValue":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    if-lt v3, v5, :cond_0

    .line 287
    iget-object v5, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v0

    invoke-static {p1, v5}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    return-object v5

    .line 280
    :cond_0
    iget-object v5, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v3

    invoke-static {v5, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 281
    .local v4, "value":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 282
    move v0, v3

    .line 283
    move v1, v4

    .line 279
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public testPoint(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Z
    .locals 6
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 184
    iget-object v3, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 186
    .local v2, "pLocal":Lorg/jbox2d/common/Vec2;
    sget-boolean v3, Lorg/jbox2d/collision/PolygonShape;->m_debug:Z

    if-eqz v3, :cond_0

    .line 187
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "--testPoint debug--"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Vertices: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    if-lt v1, v3, :cond_1

    .line 192
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pLocal: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v3, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    if-lt v1, v3, :cond_2

    .line 203
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 190
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    iget-object v3, p0, Lorg/jbox2d/collision/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 198
    .local v0, "dot":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 199
    const/4 v3, 0x0

    goto :goto_2

    .line 195
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public updateSweepRadius(Lorg/jbox2d/common/Vec2;)V
    .locals 4
    .param p1, "center"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 176
    const/4 v2, 0x0

    iput v2, p0, Lorg/jbox2d/collision/PolygonShape;->m_sweepRadius:F

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/jbox2d/collision/PolygonShape;->m_vertexCount:I

    if-lt v1, v2, :cond_0

    .line 181
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lorg/jbox2d/collision/PolygonShape;->m_coreVertices:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 179
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    iget v2, p0, Lorg/jbox2d/collision/PolygonShape;->m_sweepRadius:F

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lorg/jbox2d/collision/PolygonShape;->m_sweepRadius:F

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
