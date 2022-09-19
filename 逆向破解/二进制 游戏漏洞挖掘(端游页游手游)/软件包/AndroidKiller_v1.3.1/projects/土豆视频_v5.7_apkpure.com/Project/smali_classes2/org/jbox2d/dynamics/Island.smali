.class public Lorg/jbox2d/dynamics/Island;
.super Ljava/lang/Object;
.source "Island.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static m_positionIterationCount:I


# instance fields
.field public m_bodies:[Lorg/jbox2d/dynamics/Body;

.field public m_bodyCapacity:I

.field public m_bodyCount:I

.field public m_contactCapacity:I

.field public m_contactCount:I

.field public m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

.field public m_jointCapacity:I

.field public m_jointCount:I

.field public m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

.field public m_listener:Lorg/jbox2d/dynamics/ContactListener;

.field public m_positionError:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-class v0, Lorg/jbox2d/dynamics/Island;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    .line 66
    sput v1, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public constructor <init>(IIILorg/jbox2d/dynamics/ContactListener;)V
    .locals 2
    .param p1, "bodyCapacity"    # I
    .param p2, "contactCapacity"    # I
    .param p3, "jointCapacity"    # I
    .param p4, "listener"    # Lorg/jbox2d/dynamics/ContactListener;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    .line 102
    iput p2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    .line 103
    iput p3, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    .line 104
    iput v1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    .line 105
    iput v1, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    .line 106
    iput v1, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    .line 108
    iput-object p4, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/dynamics/ContactListener;

    .line 110
    new-array v0, p1, [Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    .line 111
    new-array v0, p2, [Lorg/jbox2d/dynamics/contacts/Contact;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    .line 112
    new-array v0, p3, [Lorg/jbox2d/dynamics/joints/Joint;

    iput-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    .line 114
    sput v1, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    .line 115
    return-void
.end method


# virtual methods
.method add(Lorg/jbox2d/dynamics/Body;)V
    .locals 3
    .param p1, "body"    # Lorg/jbox2d/dynamics/Body;

    .prologue
    .line 80
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCapacity:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    aput-object p1, v0, v1

    .line 82
    return-void
.end method

.method add(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .locals 3
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 85
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_contactCapacity:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    aput-object p1, v0, v1

    .line 87
    return-void
.end method

.method add(Lorg/jbox2d/dynamics/joints/Joint;)V
    .locals 3
    .param p1, "joint"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    .line 90
    sget-boolean v0, Lorg/jbox2d/dynamics/Island;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_jointCapacity:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    iget v1, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    aput-object p1, v0, v1

    .line 92
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    .line 75
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    .line 76
    iput v0, p0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    .line 77
    return-void
.end method

.method public report(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jbox2d/dynamics/contacts/ContactConstraint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "constraints":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/dynamics/contacts/ContactConstraint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    .line 319
    .local v0, "cc":[Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lorg/jbox2d/dynamics/Island;->report([Lorg/jbox2d/dynamics/contacts/ContactConstraint;)V

    .line 323
    return-void

    .line 320
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    aput-object v2, v0, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public report([Lorg/jbox2d/dynamics/contacts/ContactConstraint;)V
    .locals 14
    .param p1, "constraints"    # [Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    .prologue
    .line 326
    iget-object v12, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/dynamics/ContactListener;

    if-nez v12, :cond_1

    .line 357
    :cond_0
    return-void

    .line 330
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v12, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    if-ge v5, v12, :cond_0

    .line 331
    iget-object v12, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    aget-object v1, v12, v5

    .line 332
    .local v1, "c":Lorg/jbox2d/dynamics/contacts/Contact;
    aget-object v2, p1, v5

    .line 333
    .local v2, "cc":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    new-instance v4, Lorg/jbox2d/dynamics/contacts/ContactResult;

    invoke-direct {v4}, Lorg/jbox2d/dynamics/contacts/ContactResult;-><init>()V

    .line 334
    .local v4, "cr":Lorg/jbox2d/dynamics/contacts/ContactResult;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape1()Lorg/jbox2d/collision/Shape;

    move-result-object v12

    iput-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->shape1:Lorg/jbox2d/collision/Shape;

    .line 335
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getShape2()Lorg/jbox2d/collision/Shape;

    move-result-object v12

    iput-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->shape2:Lorg/jbox2d/collision/Shape;

    .line 336
    iget-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->shape1:Lorg/jbox2d/collision/Shape;

    invoke-virtual {v12}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 337
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v9

    .line 338
    .local v9, "manifoldCount":I
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifolds()Ljava/util/List;

    move-result-object v10

    .line 339
    .local v10, "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-lt v6, v9, :cond_2

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 340
    :cond_2
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jbox2d/collision/Manifold;

    .line 341
    .local v8, "manifold":Lorg/jbox2d/collision/Manifold;
    iget-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->normal:Lorg/jbox2d/common/Vec2;

    iget-object v13, v8, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 342
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    iget v12, v8, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-lt v7, v12, :cond_3

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 343
    :cond_3
    iget-object v12, v8, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v11, v12, v7

    .line 344
    .local v11, "point":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v12, v2, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    aget-object v3, v12, v7

    .line 345
    .local v3, "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v12

    iget-object v13, v11, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v13}, Lorg/jbox2d/common/XForm;->mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    iput-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->position:Lorg/jbox2d/common/Vec2;

    .line 349
    iget v12, v3, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    iput v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->normalImpulse:F

    .line 350
    iget v12, v3, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    iput v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->tangentImpulse:F

    .line 351
    new-instance v12, Lorg/jbox2d/collision/ContactID;

    iget-object v13, v11, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v12, v13}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v12, v4, Lorg/jbox2d/dynamics/contacts/ContactResult;->id:Lorg/jbox2d/collision/ContactID;

    .line 353
    iget-object v12, p0, Lorg/jbox2d/dynamics/Island;->m_listener:Lorg/jbox2d/dynamics/ContactListener;

    invoke-interface {v12, v4}, Lorg/jbox2d/dynamics/ContactListener;->result(Lorg/jbox2d/dynamics/contacts/ContactResult;)V

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public solve(Lorg/jbox2d/dynamics/TimeStep;Lorg/jbox2d/common/Vec2;ZZ)V
    .locals 17
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;
    .param p2, "gravity"    # Lorg/jbox2d/common/Vec2;
    .param p3, "correctPositions"    # Z
    .param p4, "allowSleep"    # Z

    .prologue
    .line 120
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-lt v5, v11, :cond_2

    .line 160
    new-instance v3, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11, v12}, Lorg/jbox2d/dynamics/contacts/ContactSolver;-><init>(Lorg/jbox2d/dynamics/TimeStep;[Lorg/jbox2d/dynamics/contacts/Contact;I)V

    .line 163
    .local v3, "contactSolver":Lorg/jbox2d/dynamics/contacts/ContactSolver;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 165
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    if-lt v5, v11, :cond_7

    .line 170
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    if-lt v5, v11, :cond_8

    .line 179
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->finalizeVelocityConstraints()V

    .line 182
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-lt v5, v11, :cond_a

    .line 203
    if-eqz p3, :cond_0

    .line 206
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    if-lt v5, v11, :cond_c

    .line 211
    const/4 v11, 0x0

    sput v11, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    :goto_5
    sget v11, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    if-lt v11, v12, :cond_d

    .line 226
    :cond_0
    iget-object v11, v3, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jbox2d/dynamics/Island;->report([Lorg/jbox2d/dynamics/contacts/ContactConstraint;)V

    .line 228
    if-eqz p4, :cond_1

    .line 229
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 231
    .local v10, "minSleepTime":F
    const v9, 0x38d1b717    # 1.0E-4f

    .line 232
    .local v9, "linTolSqr":F
    const v1, 0x3901742e

    .line 234
    .local v1, "angTolSqr":F
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-lt v5, v11, :cond_11

    .line 256
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_1

    .line 257
    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-lt v5, v11, :cond_16

    .line 265
    .end local v1    # "angTolSqr":F
    .end local v9    # "linTolSqr":F
    .end local v10    # "minSleepTime":F
    :cond_1
    return-void

    .line 121
    .end local v3    # "contactSolver":Lorg/jbox2d/dynamics/contacts/ContactSolver;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v2, v11, v5

    .line 123
    .local v2, "b":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 120
    :cond_3
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_4
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move-object/from16 v0, p2

    iget v14, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v15, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 128
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move-object/from16 v0, p2

    iget v14, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v15, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 129
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v13, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v12, v13

    iget v13, v2, Lorg/jbox2d/dynamics/Body;->m_torque:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 132
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_force:Lorg/jbox2d/common/Vec2;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 133
    const/4 v11, 0x0

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_torque:F

    .line 142
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v14, v2, Lorg/jbox2d/dynamics/Body;->m_linearDamping:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 143
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v14, v2, Lorg/jbox2d/dynamics/Body;->m_angularDamping:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v12

    mul-float/2addr v11, v12

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 146
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget-object v12, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    const v12, 0x471c4000    # 40000.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 147
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 148
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    const/high16 v12, 0x43480000    # 200.0f

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 151
    :cond_5
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v12, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    mul-float/2addr v11, v12

    const v12, 0x47742400    # 62500.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 152
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 153
    const/high16 v11, -0x3c860000    # -250.0f

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    goto/16 :goto_8

    .line 155
    :cond_6
    const/high16 v11, 0x437a0000    # 250.0f

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    goto/16 :goto_8

    .line 166
    .end local v2    # "b":Lorg/jbox2d/dynamics/Body;
    .restart local v3    # "contactSolver":Lorg/jbox2d/dynamics/contacts/ContactSolver;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    aget-object v11, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/joints/Joint;->initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 171
    :cond_8
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solveVelocityConstraints()V

    .line 173
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    if-lt v6, v11, :cond_9

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 174
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    aget-object v11, v11, v6

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/jbox2d/dynamics/joints/Joint;->solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 183
    .end local v6    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v2, v11, v5

    .line 185
    .restart local v2    # "b":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 182
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 189
    :cond_b
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v12, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v12, v12, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 190
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v12, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v12, v12, Lorg/jbox2d/common/Sweep;->a:F

    iput v12, v11, Lorg/jbox2d/common/Sweep;->a0:F

    .line 193
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v14, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v14, v14, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 194
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v14, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v14, v14, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 195
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v12, v11, Lorg/jbox2d/common/Sweep;->a:F

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v14, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Sweep;->a:F

    .line 198
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    goto :goto_a

    .line 207
    .end local v2    # "b":Lorg/jbox2d/dynamics/Body;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/jbox2d/dynamics/joints/Joint;->initPositionConstraints()V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 212
    :cond_d
    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v11}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solvePositionConstraints(F)Z

    move-result v4

    .line 214
    .local v4, "contactsOkay":Z
    const/4 v8, 0x1

    .line 215
    .local v8, "jointsOkay":Z
    const/4 v5, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/Island;->m_jointCount:I

    if-lt v5, v11, :cond_f

    .line 220
    if-eqz v4, :cond_e

    if-nez v8, :cond_0

    .line 211
    :cond_e
    sget v11, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/jbox2d/dynamics/Island;->m_positionIterationCount:I

    goto/16 :goto_5

    .line 216
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_joints:[Lorg/jbox2d/dynamics/joints/Joint;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/jbox2d/dynamics/joints/Joint;->solvePositionConstraints()Z

    move-result v7

    .line 217
    .local v7, "jointOkay":Z
    if-eqz v8, :cond_10

    if-eqz v7, :cond_10

    const/4 v8, 0x1

    .line 215
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 217
    :cond_10
    const/4 v8, 0x0

    goto :goto_c

    .line 235
    .end local v4    # "contactsOkay":Z
    .end local v7    # "jointOkay":Z
    .end local v8    # "jointsOkay":Z
    .restart local v1    # "angTolSqr":F
    .restart local v9    # "linTolSqr":F
    .restart local v10    # "minSleepTime":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v2, v11, v5

    .line 236
    .restart local v2    # "b":Lorg/jbox2d/dynamics/Body;
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_12

    .line 234
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 240
    :cond_12
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v11, v11, 0x10

    if-nez v11, :cond_13

    .line 241
    const/4 v11, 0x0

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 242
    const/4 v10, 0x0

    .line 245
    :cond_13
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_flags:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_14

    .line 246
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v12, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    mul-float/2addr v11, v12

    const v12, 0x3901742e

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_14

    .line 247
    iget-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget-object v12, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    const v12, 0x38d1b717    # 1.0E-4f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_15

    .line 248
    :cond_14
    const/4 v11, 0x0

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 249
    const/4 v10, 0x0

    goto :goto_d

    .line 251
    :cond_15
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    add-float/2addr v11, v12

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    .line 252
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_sleepTime:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    goto :goto_d

    .line 258
    .end local v2    # "b":Lorg/jbox2d/dynamics/Body;
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v2, v11, v5

    .line 259
    .restart local v2    # "b":Lorg/jbox2d/dynamics/Body;
    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_flags:I

    .line 260
    new-instance v11, Lorg/jbox2d/common/Vec2;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v11, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 261
    const/4 v11, 0x0

    iput v11, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7
.end method

.method public solveTOI(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 9
    .param p1, "subStep"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 268
    new-instance v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    iget-object v5, p0, Lorg/jbox2d/dynamics/Island;->m_contacts:[Lorg/jbox2d/dynamics/contacts/Contact;

    iget v6, p0, Lorg/jbox2d/dynamics/Island;->m_contactCount:I

    invoke-direct {v1, p1, v5, v6}, Lorg/jbox2d/dynamics/contacts/ContactSolver;-><init>(Lorg/jbox2d/dynamics/TimeStep;[Lorg/jbox2d/dynamics/contacts/Contact;I)V

    .line 273
    .local v1, "contactSolver":Lorg/jbox2d/dynamics/contacts/ContactSolver;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p1, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    if-lt v3, v5, :cond_1

    .line 281
    const/4 v3, 0x0

    :goto_1
    iget v5, p0, Lorg/jbox2d/dynamics/Island;->m_bodyCount:I

    if-lt v3, v5, :cond_2

    .line 305
    const/high16 v4, 0x3f400000    # 0.75f

    .line 306
    .local v4, "k_toiBaumgarte":F
    const/4 v3, 0x0

    :goto_2
    iget v5, p1, Lorg/jbox2d/dynamics/TimeStep;->maxIterations:I

    if-lt v3, v5, :cond_4

    .line 313
    :cond_0
    iget-object v5, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    invoke-virtual {p0, v5}, Lorg/jbox2d/dynamics/Island;->report([Lorg/jbox2d/dynamics/contacts/ContactConstraint;)V

    .line 314
    return-void

    .line 274
    .end local v4    # "k_toiBaumgarte":F
    :cond_1
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solveVelocityConstraints()V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v5, p0, Lorg/jbox2d/dynamics/Island;->m_bodies:[Lorg/jbox2d/dynamics/Body;

    aget-object v0, v5, v3

    .line 284
    .local v0, "b":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 288
    :cond_3
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v6, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v6, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 289
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v6, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v6, v6, Lorg/jbox2d/common/Sweep;->a:F

    iput v6, v5, Lorg/jbox2d/common/Sweep;->a0:F

    .line 292
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v7, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v8, v0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 293
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v5, v5, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v7, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v8, v0, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 294
    iget-object v5, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v6, v5, Lorg/jbox2d/common/Sweep;->a:F

    iget v7, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v8, v0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Sweep;->a:F

    .line 298
    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    goto :goto_3

    .line 307
    .end local v0    # "b":Lorg/jbox2d/dynamics/Body;
    .restart local v4    # "k_toiBaumgarte":F
    :cond_4
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v1, v5}, Lorg/jbox2d/dynamics/contacts/ContactSolver;->solvePositionConstraints(F)Z

    move-result v2

    .line 308
    .local v2, "contactsOkay":Z
    if-nez v2, :cond_0

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
