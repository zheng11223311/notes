.class public abstract Lorg/jbox2d/collision/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static uidcount:I


# instance fields
.field public m_body:Lorg/jbox2d/dynamics/Body;

.field public m_density:F

.field public m_filter:Lorg/jbox2d/collision/FilterData;

.field public m_friction:F

.field public m_isSensor:Z

.field public m_next:Lorg/jbox2d/collision/Shape;

.field public m_proxyId:I

.field public m_restitution:F

.field public m_sweepRadius:F

.field public m_type:Lorg/jbox2d/collision/ShapeType;

.field public m_userData:Ljava/lang/Object;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/collision/Shape;->$assertionsDisabled:Z

    .line 45
    sput v1, Lorg/jbox2d/collision/Shape;->uidcount:I

    return-void

    :cond_0
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ShapeDef;)V
    .locals 3
    .param p1, "def"    # Lorg/jbox2d/collision/ShapeDef;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget v0, Lorg/jbox2d/collision/Shape;->uidcount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/jbox2d/collision/Shape;->uidcount:I

    iput v0, p0, Lorg/jbox2d/collision/Shape;->uid:I

    .line 70
    iget-object v0, p1, Lorg/jbox2d/collision/ShapeDef;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/collision/Shape;->m_userData:Ljava/lang/Object;

    .line 71
    iget v0, p1, Lorg/jbox2d/collision/ShapeDef;->friction:F

    iput v0, p0, Lorg/jbox2d/collision/Shape;->m_friction:F

    .line 72
    iget v0, p1, Lorg/jbox2d/collision/ShapeDef;->restitution:F

    iput v0, p0, Lorg/jbox2d/collision/Shape;->m_restitution:F

    .line 73
    iget v0, p1, Lorg/jbox2d/collision/ShapeDef;->density:F

    iput v0, p0, Lorg/jbox2d/collision/Shape;->m_density:F

    .line 74
    iput-object v2, p0, Lorg/jbox2d/collision/Shape;->m_body:Lorg/jbox2d/dynamics/Body;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/Shape;->m_sweepRadius:F

    .line 76
    iput-object v2, p0, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    .line 77
    const v0, 0x7fffffff

    iput v0, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    .line 78
    new-instance v0, Lorg/jbox2d/collision/FilterData;

    invoke-direct {v0}, Lorg/jbox2d/collision/FilterData;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    .line 79
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    iget-object v1, p1, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    iget v1, v1, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    iput v1, v0, Lorg/jbox2d/collision/FilterData;->categoryBits:I

    .line 80
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    iget-object v1, p1, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    iget v1, v1, Lorg/jbox2d/collision/FilterData;->maskBits:I

    iput v1, v0, Lorg/jbox2d/collision/FilterData;->maskBits:I

    .line 81
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    iget-object v1, p1, Lorg/jbox2d/collision/ShapeDef;->filter:Lorg/jbox2d/collision/FilterData;

    iget v1, v1, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    iput v1, v0, Lorg/jbox2d/collision/FilterData;->groupIndex:I

    .line 82
    iget-boolean v0, p1, Lorg/jbox2d/collision/ShapeDef;->isSensor:Z

    iput-boolean v0, p0, Lorg/jbox2d/collision/Shape;->m_isSensor:Z

    .line 84
    return-void
.end method

.method public static create(Lorg/jbox2d/collision/ShapeDef;)Lorg/jbox2d/collision/Shape;
    .locals 2
    .param p0, "def"    # Lorg/jbox2d/collision/ShapeDef;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->type:Lorg/jbox2d/collision/ShapeType;

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v0, v1, :cond_0

    .line 270
    new-instance v0, Lorg/jbox2d/collision/CircleShape;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/CircleShape;-><init>(Lorg/jbox2d/collision/ShapeDef;)V

    .line 276
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/collision/ShapeDef;->type:Lorg/jbox2d/collision/ShapeType;

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-ne v0, v1, :cond_1

    .line 273
    new-instance v0, Lorg/jbox2d/collision/PolygonShape;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/PolygonShape;-><init>(Lorg/jbox2d/collision/ShapeDef;)V

    goto :goto_0

    .line 275
    :cond_1
    sget-boolean v0, Lorg/jbox2d/collision/Shape;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static destroy(Lorg/jbox2d/collision/Shape;)V
    .locals 0
    .param p0, "s"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/jbox2d/collision/Shape;->destructor()V

    .line 282
    return-void
.end method


# virtual methods
.method public abstract computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V
.end method

.method public abstract computeMass(Lorg/jbox2d/collision/MassData;)V
.end method

.method public abstract computeSweptAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)V
.end method

.method public createProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V
    .locals 4
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/BroadPhase;
    .param p2, "transform"    # Lorg/jbox2d/common/XForm;

    .prologue
    const v3, 0x7fffffff

    .line 291
    sget-boolean v2, Lorg/jbox2d/collision/Shape;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 293
    :cond_0
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 294
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    invoke-virtual {p0, v0, p2}, Lorg/jbox2d/collision/Shape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V

    .line 296
    invoke-virtual {p1, v0}, Lorg/jbox2d/collision/BroadPhase;->inRange(Lorg/jbox2d/collision/AABB;)Z

    move-result v1

    .line 299
    .local v1, "inRange":Z
    sget-boolean v2, Lorg/jbox2d/collision/Shape;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 301
    :cond_1
    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {p1, v0, p0}, Lorg/jbox2d/collision/BroadPhase;->createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_2
    iput v3, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    goto :goto_0
.end method

.method public destroyProxy(Lorg/jbox2d/collision/BroadPhase;)V
    .locals 2
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/BroadPhase;

    .prologue
    const v1, 0x7fffffff

    .line 310
    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    if-eq v0, v1, :cond_0

    .line 311
    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    invoke-virtual {p1, v0}, Lorg/jbox2d/collision/BroadPhase;->destroyProxy(I)V

    .line 312
    iput v1, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    .line 314
    :cond_0
    return-void
.end method

.method public destructor()V
    .locals 2

    .prologue
    .line 286
    sget-boolean v0, Lorg/jbox2d/collision/Shape;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method public getBody()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_body:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getFilterData()Lorg/jbox2d/collision/FilterData;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    return-object v0
.end method

.method public getFriction()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_friction:F

    return v0
.end method

.method public getNext()Lorg/jbox2d/collision/Shape;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_next:Lorg/jbox2d/collision/Shape;

    return-object v0
.end method

.method public getRestitution()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_restitution:F

    return v0
.end method

.method public getSweepRadius()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/jbox2d/collision/Shape;->m_sweepRadius:F

    return v0
.end method

.method public getType()Lorg/jbox2d/collision/ShapeType;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_type:Lorg/jbox2d/collision/ShapeType;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isSensor()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/jbox2d/collision/Shape;->m_isSensor:Z

    return v0
.end method

.method public refilterProxy(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;)V
    .locals 4
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/BroadPhase;
    .param p2, "transform"    # Lorg/jbox2d/common/XForm;

    .prologue
    const v3, 0x7fffffff

    .line 248
    iget v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    if-ne v2, v3, :cond_0

    .line 264
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    invoke-virtual {p1, v2}, Lorg/jbox2d/collision/BroadPhase;->destroyProxy(I)V

    .line 254
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 255
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    invoke-virtual {p0, v0, p2}, Lorg/jbox2d/collision/Shape;->computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;)V

    .line 257
    invoke-virtual {p1, v0}, Lorg/jbox2d/collision/BroadPhase;->inRange(Lorg/jbox2d/collision/AABB;)Z

    move-result v1

    .line 259
    .local v1, "inRange":Z
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1, v0, p0}, Lorg/jbox2d/collision/BroadPhase;->createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    goto :goto_0

    .line 262
    :cond_1
    iput v3, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    goto :goto_0
.end method

.method public setFilterData(Lorg/jbox2d/collision/FilterData;)V
    .locals 1
    .param p1, "filter"    # Lorg/jbox2d/collision/FilterData;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jbox2d/collision/Shape;->m_filter:Lorg/jbox2d/collision/FilterData;

    invoke-virtual {v0, p1}, Lorg/jbox2d/collision/FilterData;->set(Lorg/jbox2d/collision/FilterData;)V

    .line 109
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 93
    iput p1, p0, Lorg/jbox2d/collision/Shape;->m_friction:F

    .line 94
    return-void
.end method

.method public setRestitution(F)V
    .locals 0
    .param p1, "restitution"    # F

    .prologue
    .line 103
    iput p1, p0, Lorg/jbox2d/collision/Shape;->m_restitution:F

    .line 104
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/jbox2d/collision/Shape;->m_userData:Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public synchronize(Lorg/jbox2d/collision/BroadPhase;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)Z
    .locals 4
    .param p1, "broadPhase"    # Lorg/jbox2d/collision/BroadPhase;
    .param p2, "transform1"    # Lorg/jbox2d/common/XForm;
    .param p3, "transform2"    # Lorg/jbox2d/common/XForm;

    .prologue
    const/4 v1, 0x0

    .line 227
    iget v2, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 233
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    invoke-virtual {p0, v0, p2, p3}, Lorg/jbox2d/collision/Shape;->computeSweptAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/XForm;)V

    .line 238
    invoke-virtual {p1, v0}, Lorg/jbox2d/collision/BroadPhase;->inRange(Lorg/jbox2d/collision/AABB;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget v1, p0, Lorg/jbox2d/collision/Shape;->m_proxyId:I

    invoke-virtual {p1, v1, v0}, Lorg/jbox2d/collision/BroadPhase;->moveProxy(ILorg/jbox2d/collision/AABB;)V

    .line 240
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract testPoint(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Z
.end method

.method public abstract updateSweepRadius(Lorg/jbox2d/common/Vec2;)V
.end method
