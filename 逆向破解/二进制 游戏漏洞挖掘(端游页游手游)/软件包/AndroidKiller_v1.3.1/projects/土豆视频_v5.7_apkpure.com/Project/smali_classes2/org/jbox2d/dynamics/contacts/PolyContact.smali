.class public Lorg/jbox2d/dynamics/contacts/PolyContact;
.super Lorg/jbox2d/dynamics/contacts/Contact;
.source "PolyContact.java"

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
    .line 41
    const-class v0, Lorg/jbox2d/dynamics/contacts/PolyContact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>()V

    .line 56
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V
    .locals 2
    .param p1, "s1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "s2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    .line 47
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->POLYGON_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyContact;

    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/dynamics/contacts/PolyContact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    .line 62
    .local v0, "newC":Lorg/jbox2d/dynamics/contacts/PolyContact;
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jbox2d/collision/Manifold;

    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-direct {v1, v2}, Lorg/jbox2d/collision/Manifold;-><init>(Lorg/jbox2d/collision/Manifold;)V

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 63
    :cond_0
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    .line 65
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_world:Lorg/jbox2d/dynamics/World;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_world:Lorg/jbox2d/dynamics/World;

    .line 67
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_toi:F

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_toi:F

    .line 70
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_prev:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 71
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_next:Lorg/jbox2d/dynamics/contacts/Contact;

    .line 74
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_node1:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 75
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    iput-object v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_node2:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    .line 78
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_friction:F

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_friction:F

    .line 79
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_restitution:F

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_restitution:F

    .line 81
    iget v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_flags:I

    iput v1, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_flags:I

    .line 83
    return-object v0
.end method

.method public create(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1
    .param p1, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 98
    new-instance v0, Lorg/jbox2d/dynamics/contacts/PolyContact;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/dynamics/contacts/PolyContact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    return-object v0
.end method

.method public dumpManifoldPoints()V
    .locals 5

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v2, v2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lt v0, v2, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v2, v2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v1, v2, v0

    .line 104
    .local v1, "mp":Lorg/jbox2d/collision/ManifoldPoint;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Manifold point dump: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public evaluate(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 24
    .param p1, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v5

    .line 111
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v6

    .line 113
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    new-instance v13, Lorg/jbox2d/collision/Manifold;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/jbox2d/collision/Manifold;-><init>(Lorg/jbox2d/collision/Manifold;)V

    .line 115
    .local v13, "m0":Lorg/jbox2d/collision/Manifold;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_1

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    check-cast v19, Lorg/jbox2d/collision/PolygonShape;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v20, v0

    check-cast v20, Lorg/jbox2d/collision/PolygonShape;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jbox2d/collision/CollidePoly;->collidePolygons(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/PolygonShape;Lorg/jbox2d/common/XForm;)V

    .line 128
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 130
    .local v16, "persisted":[Z
    new-instance v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;

    invoke-direct {v7}, Lorg/jbox2d/dynamics/contacts/ContactPoint;-><init>()V

    .line 131
    .local v7, "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape1:Lorg/jbox2d/collision/Shape;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape2:Lorg/jbox2d/collision/Shape;

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_friction:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->friction:F

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_restitution:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->restitution:F

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 144
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_2

    .line 194
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    .line 199
    .end local v9    # "i":I
    :goto_2
    if-nez p1, :cond_9

    .line 220
    :cond_0
    return-void

    .line 116
    .end local v7    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .end local v16    # "persisted":[Z
    :cond_1
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    new-instance v20, Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    invoke-direct/range {v20 .. v21}, Lorg/jbox2d/collision/ManifoldPoint;-><init>(Lorg/jbox2d/collision/ManifoldPoint;)V

    aput-object v20, v19, v12

    .line 117
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

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

    .line 118
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

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

    .line 119
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

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

    .line 121
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

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

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

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 145
    .restart local v7    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .restart local v9    # "i":I
    .restart local v16    # "persisted":[Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v14, v19, v9

    .line 146
    .local v14, "mp":Lorg/jbox2d/collision/ManifoldPoint;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 147
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, "found":Z
    new-instance v10, Lorg/jbox2d/collision/ContactID;

    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    .line 151
    .local v10, "id":Lorg/jbox2d/collision/ContactID;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    iget v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    .line 182
    :cond_3
    :goto_4
    if-nez v8, :cond_4

    if-eqz p1, :cond_4

    .line 183
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 184
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 185
    .local v17, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 186
    .local v18, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 188
    iget v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 189
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 190
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/jbox2d/dynamics/ContactListener;->add(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    .line 144
    .end local v17    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v18    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 152
    :cond_5
    aget-boolean v19, v16, v11

    if-eqz v19, :cond_7

    .line 151
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 156
    :cond_7
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v15, v19, v11

    .line 158
    .local v15, "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/jbox2d/collision/ContactID;->isEqual(Lorg/jbox2d/collision/ContactID;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 159
    const/16 v19, 0x1

    aput-boolean v19, v16, v11

    .line 160
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 161
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 164
    const/4 v8, 0x1

    .line 167
    if-eqz p1, :cond_3

    .line 168
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 169
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 170
    .restart local v17    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 171
    .restart local v18    # "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 173
    iget v0, v14, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 174
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 175
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/jbox2d/dynamics/ContactListener;->persist(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    goto/16 :goto_4

    .line 196
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

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifoldCount:I

    goto/16 :goto_2

    .line 204
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    iget v0, v13, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    .line 205
    aget-boolean v19, v16, v9

    if-eqz v19, :cond_a

    .line 204
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 209
    :cond_a
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v19, v0

    aget-object v15, v19, v9

    .line 210
    .restart local v15    # "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 211
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 212
    .restart local v17    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 213
    .restart local v18    # "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 214
    iget-object v0, v13, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 215
    iget v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 216
    new-instance v19, Lorg/jbox2d/collision/ContactID;

    iget-object v0, v15, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 217
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
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/PolyContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-object v0
.end method
