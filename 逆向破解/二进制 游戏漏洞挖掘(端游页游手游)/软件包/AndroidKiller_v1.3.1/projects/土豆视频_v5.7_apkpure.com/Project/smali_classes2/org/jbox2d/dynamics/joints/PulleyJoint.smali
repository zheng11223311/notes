.class public Lorg/jbox2d/dynamics/joints/PulleyJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "PulleyJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MIN_PULLEY_LENGTH:F = 2.0f


# instance fields
.field public m_constant:F

.field public m_force:F

.field public m_ground:Lorg/jbox2d/dynamics/Body;

.field public m_groundAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_groundAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_limitForce1:F

.field public m_limitForce2:F

.field public m_limitMass1:F

.field public m_limitMass2:F

.field public m_limitPositionImpulse1:F

.field public m_limitPositionImpulse2:F

.field public m_limitState1:Lorg/jbox2d/dynamics/joints/LimitState;

.field public m_limitState2:Lorg/jbox2d/dynamics/joints/LimitState;

.field public m_localAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_maxLength1:F

.field public m_maxLength2:F

.field public m_positionImpulse:F

.field public m_pulleyMass:F

.field public m_ratio:F

.field public m_state:Lorg/jbox2d/dynamics/joints/LimitState;

.field public m_u1:Lorg/jbox2d/common/Vec2;

.field public m_u2:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/PulleyJointDef;)V
    .locals 5
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 104
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/World;->getGroundBody()Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    .line 105
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor1:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v1, v1, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v1, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    .line 106
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v1, v1, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v1, v1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    .line 107
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 108
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 109
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    .line 110
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    .line 112
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_0
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    .line 115
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length1:F

    iget v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    iget v2, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    .line 117
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength1:F

    iget v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    iget v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength1:F

    .line 118
    iget v0, p1, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength2:F

    iget v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    sub-float/2addr v1, v4

    iget v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength2:F

    .line 120
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    .line 121
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    .line 122
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    .line 123
    return-void
.end method


# virtual methods
.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getGroundAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getGroundAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getLength1()F
    .locals 5

    .prologue
    .line 414
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 415
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v3, v3, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 416
    .local v2, "s":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 417
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v3

    return v3
.end method

.method public getLength2()F
    .locals 5

    .prologue
    .line 421
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 422
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v3, v3, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 423
    .local v2, "s":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 424
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v3

    return v3
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    return v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 398
    .local v0, "F":Lorg/jbox2d/common/Vec2;
    return-object v0
.end method

.method public getReactionTorque()F
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 21
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 127
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 129
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 130
    .local v13, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 132
    .local v14, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 133
    .local v11, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 135
    .local v12, "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 136
    .local v15, "s1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 139
    .local v16, "s2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v11, v15}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    .line 140
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v9

    .line 143
    .local v9, "length1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v10

    .line 145
    .local v10, "length2":F
    const v17, 0x3ba3d70a    # 0.005f

    cmpl-float v17, v9, v17

    if-lez v17, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v9

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 151
    :goto_0
    const v17, 0x3ba3d70a    # 0.005f

    cmpl-float v17, v10, v17

    if-lez v17, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 157
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    move/from16 v17, v0

    sub-float v17, v17, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v18, v0

    mul-float v18, v18, v10

    sub-float v2, v17, v18

    .line 158
    .local v2, "C":F
    const/16 v17, 0x0

    cmpl-float v17, v2, v17

    if-lez v17, :cond_2

    .line 159
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 160
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    .line 166
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength1:F

    move/from16 v17, v0

    cmpg-float v17, v9, v17

    if-gez v17, :cond_3

    .line 167
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState1:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 168
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    .line 174
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength2:F

    move/from16 v17, v0

    cmpg-float v17, v10, v17

    if-gez v17, :cond_4

    .line 175
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState2:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 176
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    .line 183
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v7

    .line 184
    .local v7, "cr1u1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    .line 186
    .local v8, "cr2u2":F
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    mul-float v18, v18, v7

    mul-float v18, v18, v7

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    .line 187
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    mul-float v18, v18, v8

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    .line 189
    sget-boolean v17, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    move/from16 v17, v0

    const/high16 v18, 0x34000000

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_5

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 148
    .end local v2    # "C":F
    .end local v7    # "cr1u1":F
    .end local v8    # "cr2u2":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_0

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_1

    .line 162
    .restart local v2    # "C":F
    :cond_2
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 163
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_positionImpulse:F

    goto/16 :goto_2

    .line 170
    :cond_3
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState1:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 171
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse1:F

    goto/16 :goto_3

    .line 178
    :cond_4
    sget-object v17, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState2:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 179
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse2:F

    goto/16 :goto_4

    .line 190
    .restart local v7    # "cr1u1":F
    .restart local v8    # "cr2u2":F
    :cond_5
    sget-boolean v17, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    move/from16 v17, v0

    const/high16 v18, 0x34000000

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_6

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 191
    :cond_6
    sget-boolean v17, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    move/from16 v17, v0

    const/high16 v18, 0x34000000

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 192
    :cond_7
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    .line 193
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    .line 194
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    .line 196
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 199
    .local v3, "P1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 200
    .local v4, "P2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 201
    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v17, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    invoke-static {v13, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 202
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 203
    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v17, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    invoke-static {v14, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 209
    .end local v3    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v4    # "P2":Lorg/jbox2d/common/Vec2;
    :goto_5
    return-void

    .line 205
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    .line 206
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    .line 207
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    goto :goto_5
.end method

.method public solvePositionConstraints()Z
    .locals 23

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 271
    .local v5, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 273
    .local v6, "b2":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 274
    .local v17, "s1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ground:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 276
    .local v18, "s2":Lorg/jbox2d/common/Vec2;
    const/4 v10, 0x0

    .line 278
    .local v10, "linearError":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 280
    .local v15, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 282
    .local v16, "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 283
    .local v13, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 286
    .local v14, "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v8

    .line 290
    .local v8, "length1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v9

    .line 292
    .local v9, "length2":F
    const v19, 0x3ba3d70a    # 0.005f

    cmpl-float v19, v8, v19

    if-lez v19, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    div-float v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 298
    :goto_0
    const v19, 0x3ba3d70a    # 0.005f

    cmpl-float v19, v9, v19

    if-lez v19, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    div-float v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 304
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    move/from16 v19, v0

    sub-float v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v20, v0

    mul-float v20, v20, v9

    sub-float v2, v19, v20

    .line 305
    .local v2, "C":F
    neg-float v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 307
    const v19, 0x3ba3d70a    # 0.005f

    add-float v19, v19, v2

    const v20, -0x41b33333    # -0.2f

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v2

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v7, v19, v2

    .line 309
    .local v7, "impulse":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_positionImpulse:F

    .line 310
    .local v11, "oldImpulse":F
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_positionImpulse:F

    move/from16 v20, v0

    add-float v20, v20, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_positionImpulse:F

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_positionImpulse:F

    move/from16 v19, v0

    sub-float v7, v19, v11

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    neg-float v0, v7

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 314
    .local v3, "P1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 316
    .local v4, "P2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 317
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 318
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    invoke-static {v15, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 319
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 320
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 321
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 323
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 324
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 327
    .end local v2    # "C":F
    .end local v3    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v4    # "P2":Lorg/jbox2d/common/Vec2;
    .end local v7    # "impulse":F
    .end local v8    # "length1":F
    .end local v9    # "length2":F
    .end local v11    # "oldImpulse":F
    .end local v13    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .end local v15    # "r1":Lorg/jbox2d/common/Vec2;
    .end local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState1:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 329
    .restart local v15    # "r1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 331
    .restart local v13    # "p1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v8

    .line 334
    .restart local v8    # "length1":F
    const v19, 0x3ba3d70a    # 0.005f

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    div-float v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 340
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength1:F

    move/from16 v19, v0

    sub-float v2, v19, v8

    .line 341
    .restart local v2    # "C":F
    neg-float v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 342
    const v19, 0x3ba3d70a    # 0.005f

    add-float v19, v19, v2

    const v20, -0x41b33333    # -0.2f

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v2

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v7, v19, v2

    .line 344
    .restart local v7    # "impulse":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse1:F

    .line 345
    .local v12, "oldLimitPositionImpulse":F
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse1:F

    move/from16 v20, v0

    add-float v20, v20, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse1:F

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse1:F

    move/from16 v19, v0

    sub-float v7, v19, v12

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    neg-float v0, v7

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 349
    .restart local v3    # "P1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 350
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 351
    iget-object v0, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v20, v0

    iget v0, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    invoke-static {v15, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 353
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 356
    .end local v2    # "C":F
    .end local v3    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v7    # "impulse":F
    .end local v8    # "length1":F
    .end local v12    # "oldLimitPositionImpulse":F
    .end local v13    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v15    # "r1":Lorg/jbox2d/common/Vec2;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState2:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 357
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 358
    .restart local v16    # "r2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 360
    .restart local v14    # "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v9

    .line 363
    .restart local v9    # "length2":F
    const v19, 0x3ba3d70a    # 0.005f

    cmpl-float v19, v9, v19

    if-lez v19, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    div-float v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 369
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_maxLength2:F

    move/from16 v19, v0

    sub-float v2, v19, v9

    .line 370
    .restart local v2    # "C":F
    neg-float v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 371
    const v19, 0x3ba3d70a    # 0.005f

    add-float v19, v19, v2

    const v20, -0x41b33333    # -0.2f

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v2

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v7, v19, v2

    .line 373
    .restart local v7    # "impulse":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse2:F

    .line 374
    .restart local v12    # "oldLimitPositionImpulse":F
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse2:F

    move/from16 v20, v0

    add-float v20, v20, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse2:F

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitPositionImpulse2:F

    move/from16 v19, v0

    sub-float v7, v19, v12

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    neg-float v0, v7

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 378
    .restart local v4    # "P2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 379
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 380
    iget-object v0, v6, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Sweep;->a:F

    move/from16 v20, v0

    iget v0, v6, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Sweep;->a:F

    .line 382
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 385
    .end local v2    # "C":F
    .end local v4    # "P2":Lorg/jbox2d/common/Vec2;
    .end local v7    # "impulse":F
    .end local v9    # "length2":F
    .end local v12    # "oldLimitPositionImpulse":F
    .end local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .end local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_2
    const v19, 0x3ba3d70a    # 0.005f

    cmpg-float v19, v10, v19

    if-gez v19, :cond_7

    const/16 v19, 0x1

    :goto_4
    return v19

    .line 295
    .restart local v8    # "length1":F
    .restart local v9    # "length2":F
    .restart local v13    # "p1":Lorg/jbox2d/common/Vec2;
    .restart local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .restart local v15    # "r1":Lorg/jbox2d/common/Vec2;
    .restart local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_0

    .line 301
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_1

    .line 337
    .end local v9    # "length2":F
    .end local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .end local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_2

    .line 366
    .end local v8    # "length1":F
    .end local v13    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v15    # "r1":Lorg/jbox2d/common/Vec2;
    .restart local v9    # "length2":F
    .restart local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .restart local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_3

    .line 385
    .end local v9    # "length2":F
    .end local v14    # "p2":Lorg/jbox2d/common/Vec2;
    .end local v16    # "r2":Lorg/jbox2d/common/Vec2;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 16
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 213
    .local v4, "b1":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 215
    .local v5, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v12, v12, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 216
    .local v8, "r1":Lorg/jbox2d/common/Vec2;
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v12, v12, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 218
    .local v9, "r2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v13, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    if-ne v12, v13, :cond_0

    .line 219
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v13, v8}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 220
    .local v10, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v13, v9}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 222
    .local v11, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v10}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    neg-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    invoke-static {v14, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    sub-float v1, v12, v13

    .line 223
    .local v1, "Cdot":F
    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_pulleyMass:F

    mul-float/2addr v12, v13

    mul-float v6, v12, v1

    .line 224
    .local v6, "force":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    .line 225
    .local v7, "oldForce":F
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    add-float/2addr v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    .line 226
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_force:F

    sub-float v6, v12, v7

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    neg-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 229
    .local v2, "P1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 230
    .local v3, "P2":Lorg/jbox2d/common/Vec2;
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 231
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 232
    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v13, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v8, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 233
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v14, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 234
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v14, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 235
    iget v12, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v13, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v9, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 238
    .end local v1    # "Cdot":F
    .end local v2    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v3    # "P2":Lorg/jbox2d/common/Vec2;
    .end local v6    # "force":F
    .end local v7    # "oldForce":F
    .end local v10    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v11    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState1:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v13, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    if-ne v12, v13, :cond_1

    .line 239
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v13, v8}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 241
    .restart local v10    # "v1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v10}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    neg-float v1, v12

    .line 242
    .restart local v1    # "Cdot":F
    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass1:F

    mul-float/2addr v12, v13

    mul-float v6, v12, v1

    .line 243
    .restart local v6    # "force":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    .line 244
    .restart local v7    # "oldForce":F
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    add-float/2addr v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    .line 245
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce1:F

    sub-float v6, v12, v7

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    neg-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 248
    .restart local v2    # "P1":Lorg/jbox2d/common/Vec2;
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 249
    iget-object v12, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v14, v4, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 250
    iget v12, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v13, v4, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v8, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 253
    .end local v1    # "Cdot":F
    .end local v2    # "P1":Lorg/jbox2d/common/Vec2;
    .end local v6    # "force":F
    .end local v7    # "oldForce":F
    .end local v10    # "v1":Lorg/jbox2d/common/Vec2;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitState2:Lorg/jbox2d/dynamics/joints/LimitState;

    sget-object v13, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER_LIMIT:Lorg/jbox2d/dynamics/joints/LimitState;

    if-ne v12, v13, :cond_2

    .line 254
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v13, v9}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 256
    .restart local v11    # "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    neg-float v1, v12

    .line 257
    .restart local v1    # "Cdot":F
    move-object/from16 v0, p1

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitMass2:F

    mul-float/2addr v12, v13

    mul-float v6, v12, v1

    .line 258
    .restart local v6    # "force":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    .line 259
    .restart local v7    # "oldForce":F
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    add-float/2addr v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    .line 260
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_limitForce2:F

    sub-float v6, v12, v7

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_u2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    neg-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 263
    .restart local v3    # "P2":Lorg/jbox2d/common/Vec2;
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v14, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 264
    iget-object v12, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v14, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v15, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 265
    iget v12, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v13, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v9, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 267
    .end local v1    # "Cdot":F
    .end local v3    # "P2":Lorg/jbox2d/common/Vec2;
    .end local v6    # "force":F
    .end local v7    # "oldForce":F
    .end local v11    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_2
    return-void
.end method
