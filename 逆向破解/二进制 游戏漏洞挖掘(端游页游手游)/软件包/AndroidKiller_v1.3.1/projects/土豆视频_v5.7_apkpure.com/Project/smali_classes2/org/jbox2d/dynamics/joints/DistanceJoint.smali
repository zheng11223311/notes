.class public Lorg/jbox2d/dynamics/joints/DistanceJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "DistanceJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_bias:F

.field public m_dampingRatio:F

.field public m_frequencyHz:F

.field public m_gamma:F

.field public m_impulse:F

.field public m_length:F

.field public m_localAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_mass:F

.field public m_u:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/DistanceJointDef;)V
    .locals 2
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 60
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 61
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 62
    iget v0, p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    .line 63
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 64
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    .line 65
    iget v0, p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    .line 66
    iget v0, p1, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    .line 67
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 68
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    .line 69
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_inv_dt:F

    .line 70
    return-void
.end method


# virtual methods
.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public getReactionTorque()F
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 18
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 92
    move-object/from16 v0, p1

    iget v14, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_inv_dt:F

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 96
    .local v3, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 99
    .local v4, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v14

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 100
    .local v12, "r1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v14

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 101
    .local v13, "r2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v15, v15, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v15, v15, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v10

    .line 106
    .local v10, "length":F
    const v14, 0x3ba3d70a    # 0.005f

    cmpl-float v14, v10, v14

    if-lez v14, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v16, v16, v10

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v16, v16, v10

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v14}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    .line 114
    .local v5, "cr1u":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-static {v13, v14}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v6

    .line 116
    .local v6, "cr2u":F
    iget v14, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v15, v5

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    add-float/2addr v14, v15

    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v15, v6

    mul-float/2addr v15, v6

    add-float v8, v14, v15

    .line 117
    .local v8, "invMass":F
    sget-boolean v14, Lorg/jbox2d/dynamics/joints/DistanceJoint;->$assertionsDisabled:Z

    if-nez v14, :cond_1

    const/high16 v14, 0x34000000

    cmpl-float v14, v8, v14

    if-gtz v14, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 110
    .end local v5    # "cr1u":F
    .end local v6    # "cr2u":F
    .end local v8    # "invMass":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/jbox2d/common/Vec2;->set(FF)V

    goto :goto_0

    .line 118
    .restart local v5    # "cr1u":F
    .restart local v6    # "cr2u":F
    .restart local v8    # "invMass":F
    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    .line 120
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    sub-float v1, v10, v14

    .line 124
    .local v1, "C":F
    const v14, 0x40c90fdb

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    mul-float v11, v14, v15

    .line 127
    .local v11, "omega":F
    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    mul-float/2addr v14, v15

    mul-float v7, v14, v11

    .line 130
    .local v7, "d":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    mul-float/2addr v14, v11

    mul-float v9, v14, v11

    .line 133
    .local v9, "k":F
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    add-float v16, v16, v7

    mul-float v15, v15, v16

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 134
    move-object/from16 v0, p1

    iget v14, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float/2addr v14, v1

    mul-float/2addr v14, v9

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    .line 136
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    add-float/2addr v15, v8

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    .line 139
    .end local v1    # "C":F
    .end local v7    # "d":F
    .end local v9    # "k":F
    .end local v11    # "omega":F
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    if-eqz v14, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    invoke-virtual {v14, v15}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 142
    .local v2, "P":Lorg/jbox2d/common/Vec2;
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v16, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 143
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v16, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 144
    iget v14, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v15, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v12, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 145
    iget-object v14, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v16, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 146
    iget-object v14, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v16, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 147
    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v13, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 151
    .end local v2    # "P":Lorg/jbox2d/common/Vec2;
    :goto_1
    return-void

    .line 149
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    goto :goto_1
.end method

.method public solvePositionConstraints()Z
    .locals 15

    .prologue
    .line 155
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 156
    const/4 v10, 0x1

    .line 187
    :goto_0
    return v10

    .line 159
    :cond_0
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 160
    .local v3, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 162
    .local v4, "b2":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v10

    iget-object v10, v10, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 163
    .local v8, "r1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v10

    iget-object v10, v10, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 165
    .local v9, "r2":Lorg/jbox2d/common/Vec2;
    new-instance v5, Lorg/jbox2d/common/Vec2;

    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v9, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v10, v11

    iget-object v11, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v10, v11

    iget v11, v8, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v10, v11

    .line 166
    iget-object v11, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v9, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v11, v12

    iget-object v12, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v12, v12, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v11, v12

    iget v12, v8, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v11, v12

    .line 165
    invoke-direct {v5, v10, v11}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 168
    .local v5, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v7

    .line 169
    .local v7, "length":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    sub-float v0, v7, v10

    .line 170
    .local v0, "C":F
    const v10, -0x41b33333    # -0.2f

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v10, v11}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v0

    .line 172
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    neg-float v10, v10

    mul-float v6, v10, v0

    .line 173
    .local v6, "impulse":F
    iput-object v5, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    .line 174
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v1, v6, v10

    .line 175
    .local v1, "Px":F
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v2, v6, v10

    .line 177
    .local v2, "Py":F
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 178
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 179
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v11, v10, Lorg/jbox2d/common/Sweep;->a:F

    iget v12, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget v13, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v2

    iget v14, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Sweep;->a:F

    .line 180
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 181
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 182
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v11, v10, Lorg/jbox2d/common/Sweep;->a:F

    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget v13, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v2

    iget v14, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Sweep;->a:F

    .line 184
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 185
    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3ba3d70a    # 0.005f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 14
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 192
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 193
    .local v3, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 195
    .local v4, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v10, v10, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 196
    .local v6, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v10, v10, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 199
    .local v7, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v11, v6}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 200
    .local v8, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v11, v7}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 201
    .local v9, "v2":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9, v8}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 203
    .local v0, "Cdot":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    neg-float v10, v10

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    add-float/2addr v11, v0

    iget v12, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    iget v13, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float v5, v10, v11

    .line 204
    .local v5, "impulse":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    add-float/2addr v10, v5

    iput v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 206
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v1, v5, v10

    .line 207
    .local v1, "Px":F
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v2, v5, v10

    .line 208
    .local v2, "Py":F
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 209
    iget-object v10, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 210
    iget v10, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v11, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget v12, v6, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v12, v2

    iget v13, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v13, v1

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 211
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 212
    iget-object v10, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    iput v11, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 213
    iget v10, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v11, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    iget v12, v7, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v12, v2

    iget v13, v7, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v13, v1

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 214
    return-void
.end method
