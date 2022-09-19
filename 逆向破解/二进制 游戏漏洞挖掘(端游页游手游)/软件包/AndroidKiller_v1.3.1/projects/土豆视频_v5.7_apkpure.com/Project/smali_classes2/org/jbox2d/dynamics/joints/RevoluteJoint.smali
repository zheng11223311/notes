.class public Lorg/jbox2d/dynamics/joints/RevoluteJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "RevoluteJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_enableLimit:Z

.field public m_enableMotor:Z

.field public m_limitForce:F

.field public m_limitPositionImpulse:F

.field public m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

.field public m_localAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_lowerAngle:F

.field public m_maxMotorTorque:F

.field public m_motorForce:F

.field public m_motorMass:F

.field public m_motorSpeed:F

.field public m_pivotForce:Lorg/jbox2d/common/Vec2;

.field public m_pivotMass:Lorg/jbox2d/common/Mat22;

.field public m_referenceAngle:F

.field public m_upperAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/RevoluteJointDef;)V
    .locals 2
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 73
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 74
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 75
    iget v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    .line 77
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    .line 78
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    .line 79
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 80
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    .line 81
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotMass:Lorg/jbox2d/common/Mat22;

    .line 83
    iget v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->lowerAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    .line 84
    iget v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->upperAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    .line 85
    iget v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    .line 86
    iget v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    .line 87
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableLimit:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    .line 88
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    .line 89
    return-void
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    .line 371
    return-void
.end method

.method public enableMotor(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    .line 351
    return-void
.end method

.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getJointAngle()F
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 335
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 336
    .local v1, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v2, v1, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v2, v2, Lorg/jbox2d/common/Sweep;->a:F

    iget-object v3, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    sub-float/2addr v2, v3

    return v2
.end method

.method public getJointSpeed()F
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 341
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 342
    .local v1, "b2":Lorg/jbox2d/dynamics/Body;
    iget v2, v1, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v3, v0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    sub-float/2addr v2, v3

    return v2
.end method

.method public getLowerLimit()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    return v0
.end method

.method public getMotorTorque()F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    return v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getReactionTorque()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    return v0
.end method

.method public getUpperLimit()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 18
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 94
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 97
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v14, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 98
    .local v12, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v14, v6, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 103
    .local v13, "r2":Lorg/jbox2d/common/Vec2;
    iget v9, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .local v9, "invMass1":F
    iget v10, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 104
    .local v10, "invMass2":F
    iget v7, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .local v7, "invI1":F
    iget v8, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 106
    .local v8, "invI2":F
    new-instance v2, Lorg/jbox2d/common/Mat22;

    invoke-direct {v2}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 107
    .local v2, "K1":Lorg/jbox2d/common/Mat22;
    iget-object v14, v2, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    add-float v15, v9, v10

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v14, v2, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    const/4 v15, 0x0

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 108
    iget-object v14, v2, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    const/4 v15, 0x0

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v14, v2, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    add-float v15, v9, v10

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 110
    new-instance v3, Lorg/jbox2d/common/Mat22;

    invoke-direct {v3}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 111
    .local v3, "K2":Lorg/jbox2d/common/Mat22;
    iget-object v14, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v15, v7

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v14, v3, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    neg-float v15, v7

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 112
    iget-object v14, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    neg-float v15, v7

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v14, v3, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v15, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v15, v7

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 114
    new-instance v4, Lorg/jbox2d/common/Mat22;

    invoke-direct {v4}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 115
    .local v4, "K3":Lorg/jbox2d/common/Mat22;
    iget-object v14, v4, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v15, v13, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v15, v8

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v14, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    neg-float v15, v8

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 116
    iget-object v14, v4, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    neg-float v15, v8

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v14, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v15, v13, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v15, v8

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 118
    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Mat22;->addLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v14

    invoke-virtual {v14, v4}, Lorg/jbox2d/common/Mat22;->addLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v1

    .line 119
    .local v1, "K":Lorg/jbox2d/common/Mat22;
    invoke-virtual {v1}, Lorg/jbox2d/common/Mat22;->invert()Lorg/jbox2d/common/Mat22;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotMass:Lorg/jbox2d/common/Mat22;

    .line 121
    const/high16 v14, 0x3f800000    # 1.0f

    add-float v15, v7, v8

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    .line 123
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    if-nez v14, :cond_0

    .line 124
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    if-eqz v14, :cond_6

    .line 128
    iget-object v14, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v14, v14, Lorg/jbox2d/common/Sweep;->a:F

    iget-object v15, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v15, v15, Lorg/jbox2d/common/Sweep;->a:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    sub-float v11, v14, v15

    .line 129
    .local v11, "jointAngle":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3d8efa36

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 130
    sget-object v14, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 149
    .end local v11    # "jointAngle":F
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    if-eqz v14, :cond_7

    .line 150
    iget-object v14, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 151
    iget-object v14, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 152
    iget v14, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float/2addr v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 154
    iget-object v14, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 155
    iget-object v14, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 156
    iget v14, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float/2addr v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 163
    :goto_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    .line 164
    return-void

    .line 131
    .restart local v11    # "jointAngle":F
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    cmpg-float v14, v11, v14

    if-gtz v14, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v15, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    if-eq v14, v15, :cond_2

    .line 133
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 135
    :cond_2
    sget-object v14, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_0

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    cmpl-float v14, v11, v14

    if-ltz v14, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v15, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    if-eq v14, v15, :cond_4

    .line 138
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 140
    :cond_4
    sget-object v14, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_0

    .line 142
    :cond_5
    sget-object v14, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 143
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    goto/16 :goto_0

    .line 146
    .end local v11    # "jointAngle":F
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    goto/16 :goto_0

    .line 158
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    .line 160
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    goto :goto_1
.end method

.method public isLimitEnabled()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    return v0
.end method

.method public setLimits(FF)V
    .locals 1
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    .line 382
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmpg-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 383
    :cond_0
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    .line 384
    iput p2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    .line 385
    return-void
.end method

.method public setMaxMotorTorque(F)V
    .locals 0
    .param p1, "torque"    # F

    .prologue
    .line 362
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    .line 363
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 358
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    .line 359
    return-void
.end method

.method public solvePositionConstraints()Z
    .locals 28

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 225
    .local v8, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 227
    .local v9, "b2":Lorg/jbox2d/dynamics/Body;
    const/16 v20, 0x0

    .line 230
    .local v20, "positionError":F
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 231
    .local v22, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 233
    .local v23, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 234
    .local v18, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    .line 235
    .local v19, "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 237
    .local v21, "ptpC":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v20

    .line 243
    iget v13, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .local v13, "invMass1":F
    iget v14, v9, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 244
    .local v14, "invMass2":F
    iget v11, v8, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .local v11, "invI1":F
    iget v12, v9, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 246
    .local v12, "invI2":F
    new-instance v3, Lorg/jbox2d/common/Mat22;

    invoke-direct {v3}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 247
    .local v3, "K1":Lorg/jbox2d/common/Mat22;
    iget-object v0, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    add-float v25, v13, v14

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v0, v3, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 248
    iget-object v0, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v0, v3, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    add-float v25, v13, v14

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 250
    new-instance v4, Lorg/jbox2d/common/Mat22;

    invoke-direct {v4}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 251
    .local v4, "K2":Lorg/jbox2d/common/Mat22;
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v11

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    neg-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 252
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    neg-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v11

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 254
    new-instance v5, Lorg/jbox2d/common/Mat22;

    invoke-direct {v5}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 255
    .local v5, "K3":Lorg/jbox2d/common/Mat22;
    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v12

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    neg-float v0, v12

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 256
    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    neg-float v0, v12

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v0, v5, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v12

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 258
    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Mat22;->add(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Mat22;->add(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v2

    .line 259
    .local v2, "K":Lorg/jbox2d/common/Mat22;
    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Mat22;->solve(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 261
    .local v10, "impulse":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 262
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 263
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v26, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 265
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 266
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 267
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v26, v0

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 269
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 270
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 273
    const/4 v7, 0x0

    .line 276
    .local v7, "angularError":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 277
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v24, v0

    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    move/from16 v25, v0

    sub-float v6, v24, v25

    .line 278
    .local v6, "angle":F
    const/16 v16, 0x0

    .line 280
    .local v16, "limitImpulse":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 282
    const v24, -0x41f105ca

    const v25, 0x3e0efa36

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v6, v0, v1}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v15

    .line 283
    .local v15, "limitC":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    mul-float v16, v24, v15

    .line 284
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 307
    .end local v15    # "limitC":F
    :cond_0
    :goto_0
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 308
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v25, v0

    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 310
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 311
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 314
    .end local v6    # "angle":F
    .end local v16    # "limitImpulse":F
    :cond_1
    const v24, 0x3ba3d70a    # 0.005f

    cmpg-float v24, v20, v24

    if-gtz v24, :cond_4

    const v24, 0x3d0efa36

    cmpg-float v24, v7, v24

    if-gtz v24, :cond_4

    const/16 v24, 0x1

    :goto_1
    return v24

    .line 285
    .restart local v6    # "angle":F
    .restart local v16    # "limitImpulse":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    move/from16 v24, v0

    sub-float v15, v6, v24

    .line 287
    .restart local v15    # "limitC":F
    const/16 v24, 0x0

    neg-float v0, v15

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 290
    const v24, 0x3d0efa36

    add-float v24, v24, v15

    const v25, -0x41f105ca

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v15

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    mul-float v16, v24, v15

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v17, v0

    .line 293
    .local v17, "oldLimitImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v24, v0

    add-float v24, v24, v16

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v24, v0

    sub-float v16, v24, v17

    goto/16 :goto_0

    .line 295
    .end local v15    # "limitC":F
    .end local v17    # "oldLimitImpulse":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    move/from16 v24, v0

    sub-float v15, v6, v24

    .line 297
    .restart local v15    # "limitC":F
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 300
    const v24, 0x3d0efa36

    sub-float v24, v15, v24

    const/16 v25, 0x0

    const v26, 0x3e0efa36

    invoke-static/range {v24 .. v26}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v15

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    mul-float v16, v24, v15

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v17, v0

    .line 303
    .restart local v17    # "oldLimitImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v24, v0

    add-float v24, v24, v16

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitPositionImpulse:F

    move/from16 v24, v0

    sub-float v16, v24, v17

    goto/16 :goto_0

    .line 314
    .end local v6    # "angle":F
    .end local v15    # "limitC":F
    .end local v16    # "limitImpulse":F
    .end local v17    # "oldLimitImpulse":F
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 19
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 169
    .local v3, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 171
    .local v4, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v15, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v15, v15, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 172
    .local v13, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v15, v15, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 175
    .local v14, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v0, v14}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v13}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 176
    .local v11, "pivotCdot":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotMass:Lorg/jbox2d/common/Mat22;

    invoke-static {v15, v11}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 177
    .local v12, "pivotForce":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_pivotForce:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v15, v12}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 179
    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    invoke-virtual {v12, v15}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 180
    .local v1, "P":Lorg/jbox2d/common/Vec2;
    iget-object v15, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 181
    iget-object v15, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 182
    iget v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    invoke-static {v13, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    iput v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 184
    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 185
    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 186
    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    invoke-static {v14, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 188
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v16, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 189
    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    move/from16 v16, v0

    sub-float v7, v15, v16

    .line 190
    .local v7, "motorCdot":F
    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float v8, v15, v7

    .line 191
    .local v8, "motorForce":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    .line 192
    .local v10, "oldMotorForce":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    add-float/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    .line 193
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorForce:F

    sub-float v8, v15, v10

    .line 195
    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float v2, v15, v8

    .line 196
    .local v2, "P2":F
    iget v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    iput v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 197
    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    iput v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 200
    .end local v2    # "P2":F
    .end local v7    # "motorCdot":F
    .end local v8    # "motorForce":F
    .end local v10    # "oldMotorForce":F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v16, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 201
    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    .line 202
    .local v5, "limitCdot":F
    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float v6, v15, v5

    .line 204
    .local v6, "limitForce":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v16, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    add-float/2addr v15, v6

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 216
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float v2, v15, v6

    .line 217
    .restart local v2    # "P2":F
    iget v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    iput v15, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 218
    iget v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    iput v15, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 220
    .end local v2    # "P2":F
    .end local v5    # "limitCdot":F
    .end local v6    # "limitForce":F
    :cond_2
    return-void

    .line 206
    .restart local v5    # "limitCdot":F
    .restart local v6    # "limitForce":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v16, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 208
    .local v9, "oldLimitForce":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    add-float/2addr v15, v6

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 209
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    sub-float v6, v15, v9

    goto :goto_0

    .line 210
    .end local v9    # "oldLimitForce":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v16, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 212
    .restart local v9    # "oldLimitForce":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    add-float/2addr v15, v6

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    .line 213
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitForce:F

    sub-float v6, v15, v9

    goto :goto_0
.end method
