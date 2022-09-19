.class public Lorg/jbox2d/dynamics/contacts/CircleContact;
.super Lorg/jbox2d/dynamics/contacts/Contact;
.source "CircleContact.java"

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
    const-class v0, Lorg/jbox2d/dynamics/contacts/CircleContact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/CircleContact;->$assertionsDisabled:Z

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

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifoldCount:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V
    .locals 4
    .param p1, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/contacts/Contact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    .line 68
    new-instance v0, Lorg/jbox2d/collision/Manifold;

    invoke-direct {v0}, Lorg/jbox2d/collision/Manifold;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    .line 69
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/CircleContact;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    sget-boolean v0, Lorg/jbox2d/dynamics/contacts/CircleContact;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v0}, Lorg/jbox2d/collision/Shape;->getType()Lorg/jbox2d/collision/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/jbox2d/collision/ShapeType;->CIRCLE_SHAPE:Lorg/jbox2d/collision/ShapeType;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iput v2, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 72
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    iput v3, v0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 73
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    iput v3, v0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 74
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    .line 75
    iget-object v0, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v0, v0, v2

    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    .line 76
    return-void
.end method

.method public static Destroy(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .locals 0
    .param p0, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 53
    check-cast p0, Lorg/jbox2d/dynamics/contacts/CircleContact;

    .end local p0    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/CircleContact;->destructor()V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Lorg/jbox2d/dynamics/contacts/CircleContact;
    .locals 0

    .prologue
    .line 57
    return-object p0
.end method

.method public bridge synthetic clone()Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/contacts/CircleContact;->clone()Lorg/jbox2d/dynamics/contacts/CircleContact;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Lorg/jbox2d/dynamics/contacts/Contact;
    .locals 1
    .param p1, "shape1"    # Lorg/jbox2d/collision/Shape;
    .param p2, "shape2"    # Lorg/jbox2d/collision/Shape;

    .prologue
    .line 49
    new-instance v0, Lorg/jbox2d/dynamics/contacts/CircleContact;

    invoke-direct {v0, p1, p2}, Lorg/jbox2d/dynamics/contacts/CircleContact;-><init>(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)V

    return-object v0
.end method

.method public destructor()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public evaluate(Lorg/jbox2d/dynamics/ContactListener;)V
    .locals 14
    .param p1, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    .line 85
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v9}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 86
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v9}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v1

    .line 88
    .local v1, "b2":Lorg/jbox2d/dynamics/Body;
    new-instance v4, Lorg/jbox2d/collision/Manifold;

    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-direct {v4, v9}, Lorg/jbox2d/collision/Manifold;-><init>(Lorg/jbox2d/collision/Manifold;)V

    .line 89
    .local v4, "m0":Lorg/jbox2d/collision/Manifold;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v9, v9, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lt v3, v9, :cond_1

    .line 98
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v9, v9, Lorg/jbox2d/collision/Manifold;->pointCount:I

    iput v9, v4, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 100
    iget-object v11, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    check-cast v9, Lorg/jbox2d/collision/CircleShape;

    iget-object v12, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v10, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    check-cast v10, Lorg/jbox2d/collision/CircleShape;

    iget-object v13, v1, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    invoke-static {v11, v9, v12, v10, v13}, Lorg/jbox2d/collision/CollideCircle;->collideCircles(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;Lorg/jbox2d/collision/CircleShape;Lorg/jbox2d/common/XForm;)V

    .line 102
    new-instance v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;

    invoke-direct {v2}, Lorg/jbox2d/dynamics/contacts/ContactPoint;-><init>()V

    .line 103
    .local v2, "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape1:Lorg/jbox2d/collision/Shape;

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape1:Lorg/jbox2d/collision/Shape;

    .line 104
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_shape2:Lorg/jbox2d/collision/Shape;

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->shape2:Lorg/jbox2d/collision/Shape;

    .line 105
    iget v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_friction:F

    iput v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->friction:F

    .line 106
    iget v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_restitution:F

    iput v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->restitution:F

    .line 109
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget v9, v9, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lez v9, :cond_3

    .line 110
    const/4 v9, 0x1

    iput v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifoldCount:I

    .line 111
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v9, v9, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v10, 0x0

    aget-object v5, v9, v10

    .line 112
    .local v5, "mp":Lorg/jbox2d/collision/ManifoldPoint;
    iget v9, v4, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-nez v9, :cond_2

    .line 113
    const/4 v9, 0x0

    iput v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 114
    const/4 v9, 0x0

    iput v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 118
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 119
    .local v7, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 120
    .local v8, "v2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v7}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 121
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v9, v9, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 122
    iget v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    iput v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 123
    new-instance v9, Lorg/jbox2d/collision/ContactID;

    iget-object v10, v5, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v9, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 124
    invoke-interface {p1, v2}, Lorg/jbox2d/dynamics/ContactListener;->add(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    .line 157
    .end local v5    # "mp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v7    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v8    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_0
    :goto_1
    return-void

    .line 90
    .end local v2    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    :cond_1
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    new-instance v10, Lorg/jbox2d/collision/ManifoldPoint;

    iget-object v11, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v11, v11, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v11, v11, v3

    invoke-direct {v10, v11}, Lorg/jbox2d/collision/ManifoldPoint;-><init>(Lorg/jbox2d/collision/ManifoldPoint;)V

    aput-object v10, v9, v3

    .line 91
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v9, v9, v3

    iget-object v10, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v10, v10, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v10, v10, v3

    iget v10, v10, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v10, v9, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 92
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v9, v9, v3

    iget-object v10, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v10, v10, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v10, v10, v3

    iget v10, v10, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v10, v9, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 93
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v9, v9, v3

    iget-object v10, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v10, v10, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v10, v10, v3

    iget v10, v10, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    iput v10, v9, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    .line 95
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v9, v9, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    iget-object v10, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v10, v10, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v10, v10, v3

    iget-object v10, v10, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v10, v10, Lorg/jbox2d/collision/ContactID;->features:Lorg/jbox2d/collision/ContactID$Features;

    invoke-virtual {v9, v10}, Lorg/jbox2d/collision/ContactID$Features;->set(Lorg/jbox2d/collision/ContactID$Features;)V

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 127
    .restart local v2    # "cp":Lorg/jbox2d/dynamics/contacts/ContactPoint;
    .restart local v5    # "mp":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_2
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v10, 0x0

    aget-object v6, v9, v10

    .line 128
    .local v6, "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 129
    iget v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 133
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 134
    .restart local v7    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 135
    .restart local v8    # "v2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v7}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 136
    iget-object v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    iget-object v9, v9, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 137
    iget v9, v5, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    iput v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 138
    new-instance v9, Lorg/jbox2d/collision/ContactID;

    iget-object v10, v5, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v9, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 139
    invoke-interface {p1, v2}, Lorg/jbox2d/dynamics/ContactListener;->persist(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    goto/16 :goto_1

    .line 144
    .end local v5    # "mp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v6    # "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v7    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v8    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifoldCount:I

    .line 145
    iget v9, v4, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lez v9, :cond_0

    if-eqz p1, :cond_0

    .line 146
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v10, 0x0

    aget-object v6, v9, v10

    .line 147
    .restart local v6    # "mp0":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->position:Lorg/jbox2d/common/Vec2;

    .line 148
    iget-object v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 149
    .restart local v7    # "v1":Lorg/jbox2d/common/Vec2;
    iget-object v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v9}, Lorg/jbox2d/dynamics/Body;->getLinearVelocityFromLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 150
    .restart local v8    # "v2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v8, v7}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->velocity:Lorg/jbox2d/common/Vec2;

    .line 151
    iget-object v9, v4, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->normal:Lorg/jbox2d/common/Vec2;

    .line 152
    iget v9, v6, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    iput v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->separation:F

    .line 153
    new-instance v9, Lorg/jbox2d/collision/ContactID;

    iget-object v10, v6, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v9, v10}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v9, v2, Lorg/jbox2d/dynamics/contacts/ContactPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 154
    invoke-interface {p1, v2}, Lorg/jbox2d/dynamics/ContactListener;->remove(Lorg/jbox2d/dynamics/contacts/ContactPoint;)V

    goto/16 :goto_1
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
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/jbox2d/dynamics/contacts/CircleContact;->m_manifold:Lorg/jbox2d/collision/Manifold;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    return-object v0
.end method
