.class Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;
.super Lorg/jbox2d/dynamics/contacts/Contact;
.source "PolyAndCircleContact.java"

# interfaces
.implements Lorg/jbox2d/dynamics/contacts/ContactCreateFcn;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field m_manifold:Lorg/jbox2d/collision/Manifold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>()V

    .line 62
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V
    .locals 4
    .param p1, "s1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "s2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    .line 50
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 53
    iput v2, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    .line 56
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    iput v3, v0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 57
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    iput v3, v0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    .line 68
    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    .line 67
    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    .line 69
    .local v0, "newC":Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;
    new-instance v1, Lorg/jbox2d/collision/Manifold;

    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-direct {v1, v2}, Lorg/jbox2d/collision/Manifold;-><init>(Lorg/jbox2d/collision/Manifold;)V

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 70
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    .line 72
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_world:Lorg/jbox2d/dynamics/World;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_world:Lorg/jbox2d/dynamics/World;

    .line 75
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 76
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 79
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 80
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 83
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_friction:F

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_friction:F

    .line 84
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_restitution:F

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_restitution:F

    .line 86
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_flags:I

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_flags:I

    .line 87
    return-object v0
.end method

.method public create(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1
    .param p1, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 91
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    return-object v0
.end method

.method public evaluate(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 24
    .param p1, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 106
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 109
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    new-instance v13, Lorg/jbox2d/collision/Manifold;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/jbox2d/collision/Manifold;-><init>(Lorg/jbox2d/collision/Manifold;)V

    .line 110
    .local v13, "m0":Lorg/jbox2d/collision/Manifold;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    check-cast v19, Lorg/jbox2d/collision/PolygonShape;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v20, v0

    check-cast v20, Lorg/jbox2d/collision/CircleShape;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jbox2d/collision/CollideCircle;->collidePolygonAndCircle(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)V

    .line 123
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 125
    .local v16, "persisted":[Z
    new-instance v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;

    invoke-direct {v7}, Lorg/jbox2d/dynamics/contacts/ContactPoint;-><init>()V

    .line 126
    .local v7, "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape1:Lorg/jbox2d/collision/Shape;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape2:Lorg/jbox2d/collision/Shape;

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_friction:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->friction:F

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_restitution:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->restitution:F

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 135
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_2

    .line 186
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    .line 191
    .end local v9    # "i":I
    :goto_2
    if-nez p1, :cond_9

    .line 212
    :cond_0
    return-void

    .line 111
    .end local v7    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .end local v16    # "persisted":[Z
    :cond_1
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    new-instance v20, Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-direct/range {v20 .. v21}, Lorg/jbox2d/collision/ManifoldPoint;-><init>(Lorg/jbox2d/collision/ManifoldPoint;)V

    aput-object v20, v19, v12

    .line 112
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 113
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 114
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 116
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/collision/ContactID$Features;->set(Lorg/jbox2d/collision/ContactID$Features;)V

    .line 110
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 137
    .restart local v7    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .restart local v9    # "i":I
    .restart local v16    # "persisted":[Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v14, v19, v9

    .line 138
    .local v14, "mp":Lorg/jbox2d/collision/ManifoldPoint;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 139
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "found":Z
    new-instance v10, Lorg/jbox2d/collision/ContactID;

    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    .line 143
    .local v10, "id":Lorg/jbox2d/collision/ContactID;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    iget v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    .line 174
    :cond_3
    :goto_4
    if-nez v8, :cond_4

    if-eqz p1, :cond_4

    .line 175
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 176
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 177
    .local v17, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 178
    .local v18, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 180
    iget v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 181
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 182
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/jbox2d/dynamics/ContactListener;->add(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    .line 135
    .end local v17    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v18    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 144
    :cond_5
    aget-boolean v19, v16, v11

    if-eqz v19, :cond_7

    .line 143
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 148
    :cond_7
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v15, v19, v11

    .line 150
    .local v15, "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/jbox2d/collision/ContactID;->isEqual(Lorg/jbox2d/collision/ContactID;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 151
    const/16 v19, 0x1

    aput-boolean v19, v16, v11

    .line 152
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 153
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 156
    const/4 v8, 0x1

    .line 159
    if-eqz p1, :cond_3

    .line 160
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 161
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 162
    .restart local v17    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 163
    .restart local v18    # "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 165
    iget v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 166
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 167
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/jbox2d/dynamics/ContactListener;->persist(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    goto/16 :goto_4

    .line 188
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v10    # "id":Lorg/jbox2d/collision/ContactID;
    .end local v11    # "j":I
    .end local v14    # "mp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v15    # "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v17    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v18    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifoldCount:I

    goto/16 :goto_2

    .line 196
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    iget v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    .line 197
    aget-boolean v19, v16, v9

    if-eqz v19, :cond_a

    .line 196
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 201
    :cond_a
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v15, v19, v9

    .line 202
    .restart local v15    # "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 203
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 204
    .restart local v17    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 205
    .restart local v18    # "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 206
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 207
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 208
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 209
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/jbox2d/dynamics/ContactListener;->remove(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    goto :goto_6
.end method

.method public getManifolds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/collision/Manifold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyAndCircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-object v0
.end method
