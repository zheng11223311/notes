.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DBodyFactory;
.super Ljava/lang/Object;
.source "Gift2DBodyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGift(Lorg/jbox2d/dynamics/World;FFFFZLandroid/graphics/Bitmap;)Lorg/jbox2d/dynamics/Body;
    .locals 13
    .param p0, "world"    # Lorg/jbox2d/dynamics/World;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "left"    # Z
    .param p6, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    new-instance v9, Lorg/jbox2d/collision/PolygonDef;

    invoke-direct {v9}, Lorg/jbox2d/collision/PolygonDef;-><init>()V

    .line 61
    .local v9, "def":Lorg/jbox2d/collision/PolygonDef;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v9, Lorg/jbox2d/collision/PolygonDef;->density:F

    .line 62
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, v9, Lorg/jbox2d/collision/PolygonDef;->friction:F

    .line 63
    const v0, 0x3e19999a    # 0.15f

    iput v0, v9, Lorg/jbox2d/collision/PolygonDef;->restitution:F

    .line 65
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    invoke-virtual {v9, v0, v1}, Lorg/jbox2d/collision/PolygonDef;->setAsBox(FF)V

    .line 67
    new-instance v8, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v8}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 70
    .local v8, "bodyDef":Lorg/jbox2d/dynamics/BodyDef;
    new-instance v12, Lorg/jbox2d/common/Vec2;

    invoke-direct {v12}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 74
    .local v12, "vec2":Lorg/jbox2d/common/Vec2;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float v10, v0, v1

    .line 75
    .local v10, "thrownXRandom":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    add-float v11, v0, v1

    .line 76
    .local v11, "thrownYRandom":F
    if-eqz p5, :cond_1

    .line 77
    invoke-virtual {v12, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 78
    iget-object v0, v8, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 87
    :goto_0
    invoke-virtual {p0, v8}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v7

    .line 88
    .local v7, "body":Lorg/jbox2d/dynamics/Body;
    if-eqz v7, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x4056800000000000L    # 90.0

    mul-double/2addr v0, v4

    double-to-int v3, v0

    .line 90
    .local v3, "angle":I
    new-instance v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;

    const/high16 v1, 0x41700000    # 15.0f

    .line 94
    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v1

    int-to-float v4, v1

    const/high16 v1, 0x41700000    # 15.0f

    .line 95
    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v1

    int-to-float v5, v1

    move v1, p1

    move v2, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DTile;-><init>(FFIFFLandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 97
    invoke-virtual {v7, v9}, Lorg/jbox2d/dynamics/Body;->createShape(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;

    .line 98
    invoke-virtual {v7, v12}, Lorg/jbox2d/dynamics/Body;->setLinearVelocity(Lorg/jbox2d/common/Vec2;)V

    .line 99
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/Body;->setMassFromShapes()V

    .line 101
    .end local v3    # "angle":I
    :cond_0
    return-object v7

    .line 81
    .end local v7    # "body":Lorg/jbox2d/dynamics/Body;
    :cond_1
    invoke-virtual {v12, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 82
    iget-object v0, v8, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)V

    goto :goto_0
.end method

.method public static createPolygon(Lorg/jbox2d/dynamics/World;FFFFFF)Lorg/jbox2d/dynamics/Body;
    .locals 7
    .param p0, "world"    # Lorg/jbox2d/dynamics/World;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "r"    # F
    .param p6, "d"    # F

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 30
    new-instance v2, Lorg/jbox2d/collision/PolygonDef;

    invoke-direct {v2}, Lorg/jbox2d/collision/PolygonDef;-><init>()V

    .line 31
    .local v2, "pd":Lorg/jbox2d/collision/PolygonDef;
    iput p6, v2, Lorg/jbox2d/collision/PolygonDef;->density:F

    .line 32
    const v3, 0x3d4ccccd    # 0.05f

    iput v3, v2, Lorg/jbox2d/collision/PolygonDef;->friction:F

    .line 33
    iput p5, v2, Lorg/jbox2d/collision/PolygonDef;->restitution:F

    .line 34
    div-float v3, p3, v5

    div-float/2addr v3, v6

    div-float v4, p4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/jbox2d/collision/PolygonDef;->setAsBox(FF)V

    .line 36
    new-instance v0, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 37
    .local v0, "bd":Lorg/jbox2d/dynamics/BodyDef;
    iget-object v3, v0, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    div-float v4, p3, v5

    add-float/2addr v4, p1

    div-float/2addr v4, v6

    div-float v5, p4, v5

    add-float/2addr v5, p2

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 39
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 40
    .local v1, "body":Lorg/jbox2d/dynamics/Body;
    new-instance v3, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DRect;-><init>(FFFF)V

    iput-object v3, v1, Lorg/jbox2d/dynamics/Body;->m_userData:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/Body;->createShape(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;

    .line 42
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->setMassFromShapes()V

    .line 43
    return-object v1
.end method
