.class public Lorg/jbox2d/dynamics/joints/PrismaticJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "PrismaticJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_angularMass:F

.field public m_enableLimit:Z

.field public m_enableMotor:Z

.field public m_force:F

.field public m_limitForce:F

.field public m_limitPositionImpulse:F

.field public m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

.field public m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

.field public m_linearMass:F

.field public m_localAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_localXAxis1:Lorg/jbox2d/common/Vec2;

.field public m_localYAxis1:Lorg/jbox2d/common/Vec2;

.field public m_lowerTranslation:F

.field public m_maxMotorForce:F

.field public m_motorForce:F

.field public m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

.field public m_motorMass:F

.field public m_motorSpeed:F

.field public m_refAngle:F

.field public m_torque:F

.field public m_upperTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/PrismaticJointDef;)V
    .locals 3
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/PrismaticJointDef;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 87
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 88
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 89
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxis1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxis1:Lorg/jbox2d/common/Vec2;

    .line 91
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_refAngle:F

    .line 93
    new-instance v0, Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/Jacobian;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    .line 94
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/joints/Jacobian;->setZero()V

    .line 95
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    .line 96
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    .line 98
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    .line 99
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    .line 101
    new-instance v0, Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/Jacobian;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    .line 102
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/joints/Jacobian;->setZero()V

    .line 103
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 104
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    .line 105
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 106
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    .line 108
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->lowerTranslation:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    .line 109
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->upperTranslation:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    .line 110
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->maxMotorForce:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    .line 111
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->motorSpeed:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    .line 112
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableLimit:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    .line 113
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableMotor:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    .line 114
    return-void
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    .line 466
    return-void
.end method

.method public enableMotor(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    .line 493
    return-void
.end method

.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getJointSpeed()F
    .locals 17

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 427
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 429
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v14, v2, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 430
    .local v7, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v14, v14, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 431
    .local v8, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v14, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14, v7}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 432
    .local v5, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14, v8}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 433
    .local v6, "p2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v6, v5}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 434
    .local v4, "d":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v14}, Lorg/jbox2d/dynamics/Body;->getWorldVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 436
    .local v1, "axis":Lorg/jbox2d/common/Vec2;
    iget-object v10, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 437
    .local v10, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v11, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 438
    .local v11, "v2":Lorg/jbox2d/common/Vec2;
    iget v12, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 439
    .local v12, "w1":F
    iget v13, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 441
    .local v13, "w2":F
    invoke-static {v12, v1}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    invoke-static {v13, v8}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v12, v7}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v1, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    add-float v9, v14, v15

    .line 442
    .local v9, "speed":F
    return v9
.end method

.method public getJointTranslation()F
    .locals 8

    .prologue
    .line 412
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 413
    .local v1, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 415
    .local v2, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v7}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 416
    .local v4, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v7}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 417
    .local v5, "p2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v5, v4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 418
    .local v3, "d":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v7}, Lorg/jbox2d/dynamics/Body;->getWorldVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 420
    .local v0, "axis":Lorg/jbox2d/common/Vec2;
    invoke-static {v3, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v6

    .line 421
    .local v6, "translation":F
    return v6
.end method

.method public getLowerLimit()F
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    return v0
.end method

.method public getMotorForce()F
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    return v0
.end method

.method public getMotorSpeed()F
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    return v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 7

    .prologue
    .line 451
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v2, v2, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v2, v2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 452
    .local v0, "ax1":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v2, v2, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v2, v2, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxis1:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 454
    .local v1, "ay1":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    iget v5, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 455
    iget v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    iget v5, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    iget v6, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 454
    invoke-direct {v2, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2
.end method

.method public getReactionTorque()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    return v0
.end method

.method public getUpperLimit()F
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 26
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 118
    .local v10, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 121
    .local v11, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    .line 122
    .local v19, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 124
    .local v20, "r2":Lorg/jbox2d/common/Vec2;
    iget v0, v10, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v16, v0

    .local v16, "invMass1":F
    iget v0, v11, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    .line 125
    .local v17, "invMass2":F
    iget v14, v10, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .local v14, "invI1":F
    iget v15, v11, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 129
    .local v15, "invI2":F
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxis1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 130
    .local v9, "ay1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 132
    .local v13, "e":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v22

    invoke-static {v13, v9}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .line 133
    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    .line 132
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v9, v3}, Lorg/jbox2d/dynamics/joints/Jacobian;->set(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v21, v0

    mul-float v21, v21, v14

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v21, v21, v16

    add-float v21, v21, v17

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 134
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    .line 138
    sget-boolean v21, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    move/from16 v21, v0

    const/high16 v22, 0x34000000

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 140
    :cond_0
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    .line 143
    add-float v21, v14, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    move/from16 v21, v0

    const/high16 v22, 0x34000000

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    .line 145
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 151
    :cond_2
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 153
    .local v8, "ax1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v22

    invoke-static {v13, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .line 154
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    .line 153
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/jbox2d/dynamics/joints/Jacobian;->set(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v21, v0

    mul-float v21, v21, v14

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v21, v21, v16

    add-float v21, v21, v17

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 155
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 158
    sget-boolean v21, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v21, v0

    const/high16 v22, 0x34000000

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_3

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 159
    :cond_3
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 162
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 163
    .local v12, "d":Lorg/jbox2d/common/Vec2;
    invoke-static {v8, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    .line 165
    .local v18, "jointTranslation":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const v22, 0x3c23d70a    # 0.01f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_7

    .line 166
    sget-object v21, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 187
    .end local v8    # "ax1":Lorg/jbox2d/common/Vec2;
    .end local v12    # "d":Lorg/jbox2d/common/Vec2;
    .end local v18    # "jointTranslation":F
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 188
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    .line 191
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 192
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 195
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 196
    new-instance v6, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    mul-float v21, v21, v22

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v22, v22, v23

    .line 196
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 198
    .local v6, "P1":Lorg/jbox2d/common/Vec2;
    new-instance v7, Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    mul-float v21, v21, v22

    .line 199
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v22, v22, v23

    .line 198
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 200
    .local v7, "P2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    mul-float v4, v21, v22

    .line 201
    .local v4, "L1":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    mul-float v5, v21, v22

    .line 203
    .local v5, "L2":F
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 204
    iget-object v0, v10, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 205
    iget v0, v10, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v14, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 207
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v17

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 208
    iget-object v0, v11, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v17

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 209
    iget v0, v11, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v15, v5

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v11, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 217
    .end local v4    # "L1":F
    .end local v5    # "L2":F
    .end local v6    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v7    # "P2":Lorg/jbox2d/common/Vec2;
    :goto_1
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    .line 219
    return-void

    .line 168
    .restart local v8    # "ax1":Lorg/jbox2d/common/Vec2;
    .restart local v12    # "d":Lorg/jbox2d/common/Vec2;
    .restart local v18    # "jointTranslation":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v21, v0

    cmpg-float v21, v18, v21

    if-gtz v21, :cond_9

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 170
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 172
    :cond_8
    sget-object v21, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_0

    .line 174
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v21, v0

    cmpl-float v21, v18, v21

    if-ltz v21, :cond_b

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 176
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 178
    :cond_a
    sget-object v21, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_0

    .line 181
    :cond_b
    sget-object v21, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 182
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    goto/16 :goto_0

    .line 211
    .end local v8    # "ax1":Lorg/jbox2d/common/Vec2;
    .end local v12    # "d":Lorg/jbox2d/common/Vec2;
    .end local v18    # "jointTranslation":F
    :cond_c
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    .line 212
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    .line 213
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 214
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    goto/16 :goto_1
.end method

.method public isLimitEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    return v0
.end method

.method public setLimits(FF)V
    .locals 1
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    .line 480
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmpg-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 481
    :cond_0
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    .line 482
    iput p2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    .line 483
    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 0
    .param p1, "force"    # F

    .prologue
    .line 507
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    .line 508
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 497
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    .line 498
    return-void
.end method

.method public solvePositionConstraints()Z
    .locals 35

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 302
    .local v8, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 304
    .local v9, "b2":Lorg/jbox2d/dynamics/Body;
    iget v14, v8, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .local v14, "invMass1":F
    iget v15, v9, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 305
    .local v15, "invMass2":F
    iget v12, v8, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .local v12, "invI1":F
    iget v13, v9, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 307
    .local v13, "invI2":F
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    .line 308
    .local v26, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v28

    .line 309
    .local v28, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 310
    .local v21, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 311
    .local v23, "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 312
    .local v10, "d":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxis1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 315
    .local v7, "ay1":Lorg/jbox2d/common/Vec2;
    invoke-static {v7, v10}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    .line 317
    .local v18, "linearC":F
    const v31, -0x41b33333    # -0.2f

    const v32, 0x3e4ccccd    # 0.2f

    move/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v18

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v19, v31, v18

    .line 320
    .local v19, "linearImpulse":F
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    mul-float v33, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 321
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v33, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 322
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    mul-float v33, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 324
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    mul-float v33, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 325
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v33, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 326
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    mul-float v33, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 329
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v25

    .line 332
    .local v25, "positionError":F
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v31, v0

    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_refAngle:F

    move/from16 v32, v0

    sub-float v3, v31, v32

    .line 334
    .local v3, "angularC":F
    const v31, -0x41f105ca

    const v32, 0x3e0efa36

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v3, v0, v1}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v3

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v5, v31, v3

    .line 337
    .local v5, "angularImpulse":F
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    iget v0, v8, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v5

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 338
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    iget v0, v9, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v33, v0

    mul-float v33, v33, v5

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 340
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 341
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 343
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 346
    .local v4, "angularError":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v31, v0

    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 348
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    .line 349
    .local v27, "r1z":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v29

    .line 350
    .local v29, "r2z":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 351
    .local v22, "p1z":Lorg/jbox2d/common/Vec2;
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    .line 352
    .local v24, "p2z":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 353
    .local v11, "dz":Lorg/jbox2d/common/Vec2;
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 355
    .local v6, "ax1":Lorg/jbox2d/common/Vec2;
    invoke-static {v6, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v30

    .line 356
    .local v30, "translation":F
    const/16 v17, 0x0

    .line 358
    .local v17, "limitImpulse":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v31, v0

    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 360
    const v31, -0x41b33333    # -0.2f

    const v32, 0x3e4ccccd    # 0.2f

    invoke-static/range {v30 .. v32}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v16

    .line 361
    .local v16, "limitC":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v17, v31, v16

    .line 362
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 385
    .end local v16    # "limitC":F
    :cond_0
    :goto_0
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    mul-float v33, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 386
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v33, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 387
    iget-object v0, v8, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    mul-float v33, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 388
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    mul-float v33, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 389
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v33, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 390
    iget-object v0, v9, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v32, v0

    mul-float v33, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 392
    invoke-virtual {v8}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 393
    invoke-virtual {v9}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 396
    .end local v6    # "ax1":Lorg/jbox2d/common/Vec2;
    .end local v11    # "dz":Lorg/jbox2d/common/Vec2;
    .end local v17    # "limitImpulse":F
    .end local v22    # "p1z":Lorg/jbox2d/common/Vec2;
    .end local v24    # "p2z":Lorg/jbox2d/common/Vec2;
    .end local v27    # "r1z":Lorg/jbox2d/common/Vec2;
    .end local v29    # "r2z":Lorg/jbox2d/common/Vec2;
    .end local v30    # "translation":F
    :cond_1
    const v31, 0x3ba3d70a    # 0.005f

    cmpg-float v31, v25, v31

    if-gtz v31, :cond_4

    const v31, 0x3d0efa36

    cmpg-float v31, v4, v31

    if-gtz v31, :cond_4

    const/16 v31, 0x1

    :goto_1
    return v31

    .line 363
    .restart local v6    # "ax1":Lorg/jbox2d/common/Vec2;
    .restart local v11    # "dz":Lorg/jbox2d/common/Vec2;
    .restart local v17    # "limitImpulse":F
    .restart local v22    # "p1z":Lorg/jbox2d/common/Vec2;
    .restart local v24    # "p2z":Lorg/jbox2d/common/Vec2;
    .restart local v27    # "r1z":Lorg/jbox2d/common/Vec2;
    .restart local v29    # "r2z":Lorg/jbox2d/common/Vec2;
    .restart local v30    # "translation":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v31, v0

    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v31, v0

    sub-float v16, v30, v31

    .line 365
    .restart local v16    # "limitC":F
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 368
    const v31, 0x3ba3d70a    # 0.005f

    add-float v31, v31, v16

    const v32, -0x41b33333    # -0.2f

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v16

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v17, v31, v16

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v20, v0

    .line 371
    .local v20, "oldLimitImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v31, v0

    add-float v31, v31, v17

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(FF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v31, v0

    sub-float v17, v31, v20

    goto/16 :goto_0

    .line 373
    .end local v16    # "limitC":F
    .end local v20    # "oldLimitImpulse":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v31, v0

    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v31, v0

    sub-float v16, v30, v31

    .line 375
    .restart local v16    # "limitC":F
    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 378
    const v31, 0x3ba3d70a    # 0.005f

    sub-float v31, v16, v31

    const/16 v32, 0x0

    const v33, 0x3e4ccccd    # 0.2f

    invoke-static/range {v31 .. v33}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v16

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    mul-float v17, v31, v16

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v20, v0

    .line 381
    .restart local v20    # "oldLimitImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v31, v0

    add-float v31, v31, v17

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitPositionImpulse:F

    move/from16 v31, v0

    sub-float v17, v31, v20

    goto/16 :goto_0

    .line 396
    .end local v6    # "ax1":Lorg/jbox2d/common/Vec2;
    .end local v11    # "dz":Lorg/jbox2d/common/Vec2;
    .end local v16    # "limitC":F
    .end local v17    # "limitImpulse":F
    .end local v20    # "oldLimitImpulse":F
    .end local v22    # "p1z":Lorg/jbox2d/common/Vec2;
    .end local v24    # "p2z":Lorg/jbox2d/common/Vec2;
    .end local v27    # "r1z":Lorg/jbox2d/common/Vec2;
    .end local v29    # "r2z":Lorg/jbox2d/common/Vec2;
    .end local v30    # "translation":F
    :cond_4
    const/16 v31, 0x0

    goto/16 :goto_1
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 26
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 223
    .local v6, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 225
    .local v7, "b2":Lorg/jbox2d/dynamics/Body;
    iget v11, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .local v11, "invMass1":F
    iget v12, v7, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 226
    .local v12, "invMass2":F
    iget v9, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .local v9, "invI1":F
    iget v10, v7, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 229
    .local v10, "invI2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    .line 230
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v23, v0

    .line 231
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v25, v0

    .line 230
    invoke-virtual/range {v21 .. v25}, Lorg/jbox2d/dynamics/joints/Jacobian;->compute(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)F

    move-result v15

    .line 232
    .local v15, "linearCdot":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearMass:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v8, v21, v15

    .line 233
    .local v8, "force":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    move/from16 v21, v0

    add-float v21, v21, v8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_force:F

    .line 235
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    mul-float v3, v21, v8

    .line 236
    .local v3, "P":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v11, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 237
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v11, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 238
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v9, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 240
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v12, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 241
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v12, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 242
    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v10, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_linearJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 245
    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v22, v0

    sub-float v5, v21, v22

    .line 246
    .local v5, "angularCdot":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_angularMass:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v20, v21, v5

    .line 247
    .local v20, "torque":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    move/from16 v21, v0

    add-float v21, v21, v20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_torque:F

    .line 249
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    mul-float v2, v21, v20

    .line 250
    .local v2, "L":F
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v9, v2

    sub-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 251
    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v10, v2

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v23, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Lorg/jbox2d/dynamics/joints/Jacobian;->compute(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    move/from16 v22, v0

    sub-float v16, v21, v22

    .line 256
    .local v16, "motorCdot":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v17, v21, v16

    .line 257
    .local v17, "motorForce":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v19, v0

    .line 258
    .local v19, "oldMotorForce":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v21, v0

    add-float v21, v21, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorForce:F

    move/from16 v21, v0

    sub-float v17, v21, v19

    .line 261
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    mul-float v4, v21, v17

    .line 262
    .local v4, "P2":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 263
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 264
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 266
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 267
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 268
    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 272
    .end local v4    # "P2":F
    .end local v16    # "motorCdot":F
    .end local v17    # "motorForce":F
    .end local v19    # "oldMotorForce":F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v21, v0

    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v23, v0

    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Lorg/jbox2d/dynamics/joints/Jacobian;->compute(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)F

    move-result v13

    .line 274
    .local v13, "limitCdot":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v14, v21, v13

    .line 276
    .local v14, "limitForce":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL_LIMITS:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v21, v0

    add-float v21, v21, v14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 288
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v21, v0

    mul-float v4, v21, v14

    .line 290
    .restart local v4    # "P2":F
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 291
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v11, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 292
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 294
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v23, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 295
    iget-object v0, v7, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v23, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 296
    iget v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v21, v0

    mul-float v22, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorJacobian:Lorg/jbox2d/dynamics/joints/Jacobian;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v7, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 298
    .end local v4    # "P2":F
    .end local v13    # "limitCdot":F
    .end local v14    # "limitForce":F
    :cond_2
    return-void

    .line 278
    .restart local v13    # "limitCdot":F
    .restart local v14    # "limitForce":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v18, v0

    .line 280
    .local v18, "oldLimitForce":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v21, v0

    add-float v21, v21, v14

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v21, v0

    sub-float v14, v21, v18

    goto/16 :goto_0

    .line 282
    .end local v18    # "oldLimitForce":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v21, v0

    sget-object v22, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v18, v0

    .line 284
    .restart local v18    # "oldLimitForce":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v21, v0

    add-float v21, v21, v14

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitForce:F

    move/from16 v21, v0

    sub-float v14, v21, v18

    goto/16 :goto_0
.end method
