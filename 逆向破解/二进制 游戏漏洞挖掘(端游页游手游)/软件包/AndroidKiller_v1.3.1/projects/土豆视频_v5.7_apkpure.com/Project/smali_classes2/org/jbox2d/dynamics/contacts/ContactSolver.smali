.class public Lorg/jbox2d/dynamics/contacts/ContactSolver;
.super Ljava/lang/Object;
.source "ContactSolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_constraintCount:I

.field public m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

.field public m_step:Lorg/jbox2d/dynamics/TimeStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/TimeStep;[Lorg/jbox2d/dynamics/contacts/Contact;I)V
    .locals 35
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;
    .param p2, "contacts"    # [Lorg/jbox2d/dynamics/contacts/Contact;
    .param p3, "contactCount"    # I

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_step:Lorg/jbox2d/dynamics/TimeStep;

    .line 60
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    .line 61
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v11, v0, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    .line 71
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v11, v0, :cond_2

    .line 79
    const/4 v8, 0x0

    .line 80
    .local v8, "count":I
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, p3

    if-lt v11, v0, :cond_3

    .line 182
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v8, v0, :cond_d

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 62
    .end local v8    # "count":I
    :cond_0
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_1

    aget-object v32, p2, v11

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/dynamics/contacts/Contact;->isSolid()Z

    move-result v32

    if-nez v32, :cond_1

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v32, v0

    aget-object v33, p2, v11

    invoke-virtual/range {v33 .. v33}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    .line 61
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 73
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v32, v0

    new-instance v33, Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    invoke-direct/range {v33 .. v33}, Lorg/jbox2d/dynamics/contacts/ContactConstraint;-><init>()V

    aput-object v33, v32, v11

    .line 71
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 81
    .restart local v8    # "count":I
    :cond_3
    aget-object v7, p2, v11

    .line 83
    .local v7, "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape1:Lorg/jbox2d/collision/Shape;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v2

    .line 84
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_shape2:Lorg/jbox2d/collision/Shape;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/collision/Shape;->getBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v3

    .line 85
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifoldCount()I

    move-result v18

    .line 86
    .local v18, "manifoldCount":I
    invoke-virtual {v7}, Lorg/jbox2d/dynamics/contacts/Contact;->getManifolds()Ljava/util/List;

    move-result-object v19

    .line 87
    .local v19, "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    iget v10, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_friction:F

    .line 88
    .local v10, "friction":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/Contact;->m_restitution:F

    move/from16 v21, v0

    .line 90
    .local v21, "restitution":F
    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v27

    .line 91
    .local v27, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v28

    .line 92
    .local v28, "v2":Lorg/jbox2d/common/Vec2;
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v30, v0

    .line 93
    .local v30, "w1":F
    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v31, v0

    .line 95
    .local v31, "w2":F
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    move/from16 v0, v18

    if-lt v12, v0, :cond_4

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 97
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/jbox2d/collision/Manifold;

    .line 99
    .local v17, "manifold":Lorg/jbox2d/collision/Manifold;
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_5

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v32, v0

    if-gtz v32, :cond_5

    new-instance v32, Ljava/lang/AssertionError;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Manifold "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 100
    const-string v34, " has length 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v32

    .line 102
    :cond_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 104
    .local v20, "normal":Lorg/jbox2d/common/Vec2;
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v8, v0, :cond_6

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 107
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v32, v0

    aget-object v5, v32, v8

    .line 112
    .local v5, "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    iput-object v2, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body1:Lorg/jbox2d/dynamics/Body;

    .line 113
    iput-object v3, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body2:Lorg/jbox2d/dynamics/Body;

    .line 114
    move-object/from16 v0, v17

    iput-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->manifold:Lorg/jbox2d/collision/Manifold;

    .line 115
    invoke-virtual/range {v20 .. v20}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    .line 116
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    .line 118
    iput v10, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->friction:F

    .line 119
    move/from16 v0, v21

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->restitution:F

    .line 121
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_4
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v13, v0, :cond_7

    .line 178
    add-int/lit8 v8, v8, 0x1

    .line 95
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 122
    :cond_7
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v32, v0

    aget-object v9, v32, v13

    .line 123
    .local v9, "cp":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v32, v0

    aget-object v6, v32, v13

    .line 125
    .local v6, "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    iget v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    .line 126
    iget v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    .line 127
    iget v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->separation:F

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->separation:F

    .line 128
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->positionImpulse:F

    .line 130
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    iget-object v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 131
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    iget-object v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 132
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v32, v0

    iget-object v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->localPoint1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    .line 133
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v32, v0

    iget-object v0, v9, Lorg/jbox2d/collision/ManifoldPoint;->localPoint2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    .line 135
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    .line 136
    .local v22, "rn1":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    .line 137
    .local v23, "rn2":F
    mul-float v22, v22, v22

    .line 138
    mul-float v23, v23, v23

    .line 140
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v32, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v33, v0

    add-float v32, v32, v33

    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    add-float v32, v32, v33

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v23

    add-float v15, v32, v33

    .line 143
    .local v15, "kNormal":F
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_8

    const/high16 v32, 0x34000000

    cmpl-float v32, v15, v32

    if-gtz v32, :cond_8

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 144
    :cond_8
    const/high16 v32, 0x3f800000    # 1.0f

    div-float v32, v32, v15

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalMass:F

    .line 146
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v32, v0

    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v33, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v14, v32, v33

    .line 147
    .local v14, "kEqualized":F
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v32, v0

    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    mul-float v32, v32, v22

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v33, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    mul-float v33, v33, v23

    add-float v32, v32, v33

    add-float v14, v14, v32

    .line 149
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_9

    const/high16 v32, 0x34000000

    cmpl-float v32, v14, v32

    if-gtz v32, :cond_9

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 150
    :cond_9
    const/high16 v32, 0x3f800000    # 1.0f

    div-float v32, v32, v14

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->equalizedMass:F

    .line 152
    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    .line 154
    .local v26, "tangent":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    .line 155
    .local v24, "rt1":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    .line 156
    .local v25, "rt2":F
    mul-float v24, v24, v24

    .line 157
    mul-float v25, v25, v25

    .line 159
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v32, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v33, v0

    add-float v32, v32, v33

    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    add-float v32, v32, v33

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    add-float v16, v32, v33

    .line 162
    .local v16, "kTangent":F
    sget-boolean v32, Lorg/jbox2d/dynamics/contacts/ContactSolver;->$assertionsDisabled:Z

    if-nez v32, :cond_a

    const/high16 v32, 0x34000000

    cmpl-float v32, v16, v32

    if-gtz v32, :cond_a

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    .line 163
    :cond_a
    const/high16 v32, 0x3f800000    # 1.0f

    div-float v32, v32, v16

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentMass:F

    .line 166
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->velocityBias:F

    .line 167
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->separation:F

    move/from16 v32, v0

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_b

    .line 168
    const/high16 v32, -0x3d900000    # -60.0f

    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->separation:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->velocityBias:F

    .line 170
    :cond_b
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move/from16 v0, v30

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 171
    .local v4, "buffer":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v29

    .line 172
    .local v29, "vRel":F
    const/high16 v32, -0x40800000    # -1.0f

    cmpg-float v32, v29, v32

    if-gez v32, :cond_c

    .line 173
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->velocityBias:F

    move/from16 v32, v0

    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->restitution:F

    move/from16 v33, v0

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v29

    add-float v32, v32, v33

    move/from16 v0, v32

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->velocityBias:F

    .line 121
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 183
    .end local v2    # "b1":Lorg/jbox2d/dynamics/Body;
    .end local v3    # "b2":Lorg/jbox2d/dynamics/Body;
    .end local v4    # "buffer":Lorg/jbox2d/common/Vec2;
    .end local v5    # "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    .end local v6    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    .end local v7    # "contact":Lorg/jbox2d/dynamics/contacts/Contact;
    .end local v9    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v10    # "friction":F
    .end local v12    # "j":I
    .end local v13    # "k":I
    .end local v14    # "kEqualized":F
    .end local v15    # "kNormal":F
    .end local v16    # "kTangent":F
    .end local v17    # "manifold":Lorg/jbox2d/collision/Manifold;
    .end local v18    # "manifoldCount":I
    .end local v19    # "manifolds":Ljava/util/List;, "Ljava/util/List<Lorg/jbox2d/collision/Manifold;>;"
    .end local v20    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v21    # "restitution":F
    .end local v22    # "rn1":F
    .end local v23    # "rn2":F
    .end local v24    # "rt1":F
    .end local v25    # "rt2":F
    .end local v26    # "tangent":Lorg/jbox2d/common/Vec2;
    .end local v27    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v28    # "v2":Lorg/jbox2d/common/Vec2;
    .end local v29    # "vRel":F
    .end local v30    # "w1":F
    .end local v31    # "w2":F
    :cond_d
    return-void
.end method


# virtual methods
.method public finalizeVelocityConstraints()V
    .locals 6

    .prologue
    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    if-lt v1, v4, :cond_0

    .line 379
    return-void

    .line 367
    :cond_0
    iget-object v4, p0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    aget-object v0, v4, v1

    .line 371
    .local v0, "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    iget-object v3, v0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->manifold:Lorg/jbox2d/collision/Manifold;

    .line 373
    .local v3, "m":Lorg/jbox2d/collision/Manifold;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, v0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    if-lt v2, v4, :cond_1

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    iget-object v4, v3, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v4, v4, v2

    iget-object v5, v0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    iput v5, v4, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 376
    iget-object v4, v3, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v4, v4, v2

    iget-object v5, v0, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    iput v5, v4, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 21
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 189
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_0

    .line 236
    return-void

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v18, v0

    aget-object v4, v18, v6

    .line 197
    .local v4, "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    iget-object v2, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body1:Lorg/jbox2d/dynamics/Body;

    .line 198
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v3, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body2:Lorg/jbox2d/dynamics/Body;

    .line 199
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 200
    .local v9, "invMass1":F
    iget v7, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 201
    .local v7, "invI1":F
    iget v10, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 202
    .local v10, "invMass2":F
    iget v8, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 203
    .local v8, "invI2":F
    iget-object v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 204
    .local v12, "normalx":F
    iget-object v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 205
    .local v13, "normaly":F
    move/from16 v16, v13

    .line 206
    .local v16, "tangentx":F
    neg-float v0, v12

    move/from16 v17, v0

    .line 208
    .local v17, "tangenty":F
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 210
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_2

    .line 189
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v18, v0

    aget-object v5, v18, v11

    .line 214
    .local v5, "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    .line 215
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    .line 217
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v18, v0

    mul-float v18, v18, v12

    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    move/from16 v19, v0

    mul-float v19, v19, v16

    add-float v14, v18, v19

    .line 218
    .local v14, "px":F
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v18, v0

    mul-float v18, v18, v13

    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v15, v18, v19

    .line 220
    .local v15, "py":F
    iget v0, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v18, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v19, v19, v20

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 221
    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v20, v14, v9

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 222
    iget-object v0, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v20, v15, v9

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 223
    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v18, v0

    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v15

    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v14

    sub-float v19, v19, v20

    mul-float v19, v19, v8

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 224
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v20, v14, v10

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 225
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v20, v15, v10

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 210
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 229
    .end local v5    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    .end local v11    # "j":I
    .end local v14    # "px":F
    .end local v15    # "py":F
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2
    iget v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 230
    iget-object v0, v4, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v18, v0

    aget-object v5, v18, v11

    .line 231
    .restart local v5    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    .line 232
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    .line 229
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method public solvePositionConstraints(F)Z
    .locals 28
    .param p1, "baumgarte"    # F

    .prologue
    .line 382
    const/16 v19, 0x0

    .line 383
    .local v19, "minSeparation":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v10, v0, :cond_0

    .line 448
    const v24, -0x440a3d71    # -0.0075f

    cmpl-float v24, v19, v24

    if-ltz v24, :cond_2

    const/16 v24, 0x1

    :goto_1
    return v24

    .line 386
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v24, v0

    aget-object v5, v24, v10

    .line 391
    .local v5, "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    iget-object v3, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body1:Lorg/jbox2d/dynamics/Body;

    .line 392
    .local v3, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v4, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body2:Lorg/jbox2d/dynamics/Body;

    .line 393
    .local v4, "b2":Lorg/jbox2d/dynamics/Body;
    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v24, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    mul-float v16, v24, v25

    .line 394
    .local v16, "invMass1":F
    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v24, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v25, v0

    mul-float v14, v24, v25

    .line 395
    .local v14, "invI1":F
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    mul-float v17, v24, v25

    .line 396
    .local v17, "invMass2":F
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_mass:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v25, v0

    mul-float v15, v24, v25

    .line 398
    .local v15, "invI2":F
    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    .line 401
    .local v20, "normal":Lorg/jbox2d/common/Vec2;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    iget v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    .line 383
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, v5, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v24, v0

    aget-object v6, v24, v18

    .line 404
    .local v6, "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v24, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 405
    .local v21, "r1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v24, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 410
    .local v22, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    add-float v24, v24, v25

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    sub-float v8, v24, v25

    .line 411
    .local v8, "dpx":F
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    add-float v24, v24, v25

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    sub-float v9, v24, v25

    .line 415
    .local v9, "dpy":F
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v9

    add-float v24, v24, v25

    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->separation:F

    move/from16 v25, v0

    add-float v23, v24, v25

    .line 418
    .local v23, "separation":F
    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v19

    .line 421
    const v24, 0x3ba3d70a    # 0.005f

    add-float v24, v24, v23

    const v25, -0x41b33333    # -0.2f

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v24

    mul-float v2, p1, v24

    .line 424
    .local v2, "C":F
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->equalizedMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    mul-float v7, v24, v2

    .line 427
    .local v7, "dImpulse":F
    iget v11, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->positionImpulse:F

    .line 428
    .local v11, "impulse0":F
    add-float v24, v11, v7

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v24

    move/from16 v0, v24

    iput v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->positionImpulse:F

    .line 429
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->positionImpulse:F

    move/from16 v24, v0

    sub-float v7, v24, v11

    .line 431
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v12, v7, v24

    .line 432
    .local v12, "impulsex":F
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v13, v7, v24

    .line 434
    .local v13, "impulsey":F
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v26, v16, v12

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 435
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v26, v16, v13

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 436
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v13

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v27, v27, v12

    sub-float v26, v26, v27

    mul-float v26, v26, v14

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 437
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 439
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v26, v17, v12

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 440
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v26, v17, v13

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 441
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v27, v27, v12

    sub-float v26, v26, v27

    mul-float v26, v26, v15

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 442
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 401
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 448
    .end local v2    # "C":F
    .end local v3    # "b1":Lorg/jbox2d/dynamics/Body;
    .end local v4    # "b2":Lorg/jbox2d/dynamics/Body;
    .end local v5    # "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    .end local v6    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    .end local v7    # "dImpulse":F
    .end local v8    # "dpx":F
    .end local v9    # "dpy":F
    .end local v11    # "impulse0":F
    .end local v12    # "impulsex":F
    .end local v13    # "impulsey":F
    .end local v14    # "invI1":F
    .end local v15    # "invI2":F
    .end local v16    # "invMass1":F
    .end local v17    # "invMass2":F
    .end local v18    # "j":I
    .end local v20    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v21    # "r1":Lorg/jbox2d/common/Vec2;
    .end local v22    # "r2":Lorg/jbox2d/common/Vec2;
    .end local v23    # "separation":F
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method public solveVelocityConstraints()V
    .locals 32

    .prologue
    .line 241
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraintCount:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v11, v0, :cond_0

    .line 362
    return-void

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactSolver;->m_constraints:[Lorg/jbox2d/dynamics/contacts/ContactConstraint;

    move-object/from16 v30, v0

    aget-object v6, v30, v11

    .line 248
    .local v6, "c":Lorg/jbox2d/dynamics/contacts/ContactConstraint;
    iget-object v4, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body1:Lorg/jbox2d/dynamics/Body;

    .line 249
    .local v4, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v5, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->body2:Lorg/jbox2d/dynamics/Body;

    .line 250
    .local v5, "b2":Lorg/jbox2d/dynamics/Body;
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v28, v0

    .line 251
    .local v28, "w1":F
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v29, v0

    .line 252
    .local v29, "w2":F
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v24

    .line 253
    .local v24, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 254
    .local v25, "v2":Lorg/jbox2d/common/Vec2;
    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 255
    .local v14, "invMass1":F
    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 256
    .local v12, "invI1":F
    iget v15, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 257
    .local v15, "invMass2":F
    iget v13, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 258
    .local v13, "invI2":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    .line 259
    .local v20, "normal":Lorg/jbox2d/common/Vec2;
    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 260
    .local v23, "tangent":Lorg/jbox2d/common/Vec2;
    iget v10, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->friction:F

    .line 271
    .local v10, "friction":F
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_1

    .line 318
    const/16 v16, 0x0

    :goto_2
    iget v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->pointCount:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 357
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 358
    move/from16 v0, v28

    iput v0, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 359
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 360
    move/from16 v0, v29

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 241
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v30, v0

    aget-object v7, v30, v16

    .line 280
    .local v7, "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    sub-float v30, v30, v31

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v28

    add-float v8, v30, v31

    .line 281
    .local v8, "dvx":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    add-float v30, v30, v31

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v31, v31, v28

    sub-float v9, v30, v31

    .line 284
    .local v9, "dvy":F
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v8

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v9

    add-float v26, v30, v31

    .line 285
    .local v26, "vn":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalMass:F

    move/from16 v30, v0

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v30, v0

    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->velocityBias:F

    move/from16 v31, v0

    sub-float v31, v26, v31

    mul-float v17, v30, v31

    .line 288
    .local v17, "lambda":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v30, v0

    add-float v30, v30, v17

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v19

    .line 289
    .local v19, "newImpulse":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v30, v0

    sub-float v17, v19, v30

    .line 293
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v2, v17, v30

    .line 294
    .local v2, "Px":F
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v3, v17, v30

    .line 296
    .local v3, "Py":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v31, v14, v2

    sub-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 297
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v31, v14, v3

    sub-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 298
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v3

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v2

    sub-float v30, v30, v31

    mul-float v30, v30, v12

    sub-float v28, v28, v30

    .line 301
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v31, v15, v2

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 302
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v31, v15, v3

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 303
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v3

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v2

    sub-float v30, v30, v31

    mul-float v30, v30, v13

    add-float v29, v29, v30

    .line 306
    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    .line 271
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 320
    .end local v2    # "Px":F
    .end local v3    # "Py":F
    .end local v7    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    .end local v8    # "dvx":F
    .end local v9    # "dvy":F
    .end local v17    # "lambda":F
    .end local v19    # "newImpulse":F
    .end local v26    # "vn":F
    :cond_2
    iget-object v0, v6, Lorg/jbox2d/dynamics/contacts/ContactConstraint;->points:[Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;

    move-object/from16 v30, v0

    aget-object v7, v30, v16

    .line 326
    .restart local v7    # "ccp":Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    sub-float v30, v30, v31

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v28

    add-float v8, v30, v31

    .line 327
    .restart local v8    # "dvx":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v31, v31, v29

    add-float v30, v30, v31

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v31, v31, v28

    sub-float v9, v30, v31

    .line 330
    .restart local v9    # "dvy":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v8

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v9

    add-float v27, v30, v31

    .line 331
    .local v27, "vt":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentMass:F

    move/from16 v30, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v17, v30, v31

    .line 334
    .restart local v17    # "lambda":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->normalImpulse:F

    move/from16 v30, v0

    mul-float v18, v10, v30

    .line 335
    .local v18, "maxFriction":F
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v30, v0

    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    move/from16 v31, v0

    add-float v31, v31, v17

    move/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v31

    invoke-static/range {v30 .. v31}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v19

    .line 336
    .restart local v19    # "newImpulse":F
    iget v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    move/from16 v30, v0

    sub-float v17, v19, v30

    .line 340
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v21, v17, v30

    .line 341
    .local v21, "px":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v22, v17, v30

    .line 344
    .local v22, "py":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v31, v21, v14

    sub-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 345
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v31, v22, v14

    sub-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 347
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v22

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v21

    sub-float v30, v30, v31

    mul-float v30, v30, v12

    sub-float v28, v28, v30

    .line 350
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v31, v21, v15

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 351
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v30, v0

    mul-float v31, v22, v15

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 353
    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v30, v0

    mul-float v30, v30, v22

    iget-object v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->r2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v31, v31, v21

    sub-float v30, v30, v31

    mul-float v30, v30, v13

    add-float v29, v29, v30

    .line 355
    move/from16 v0, v19

    iput v0, v7, Lorg/jbox2d/dynamics/contacts/ContactConstraintPoint;->tangentImpulse:F

    .line 318
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2
.end method
