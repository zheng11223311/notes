.class public Lorg/jbox2d/dynamics/joints/MouseJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "MouseJoint.java"


# instance fields
.field public m_C:Lorg/jbox2d/common/Vec2;

.field public m_beta:F

.field public m_force:Lorg/jbox2d/common/Vec2;

.field public m_gamma:F

.field public m_localAnchor:Lorg/jbox2d/common/Vec2;

.field public m_mass:Lorg/jbox2d/common/Mat22;

.field public m_maxForce:F

.field public m_target:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>(Lorg/jbox2d/dynamics/joints/MouseJointDef;)V
    .locals 6
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/MouseJointDef;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 65
    new-instance v4, Lorg/jbox2d/common/Vec2;

    invoke-direct {v4}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    .line 66
    new-instance v4, Lorg/jbox2d/common/Vec2;

    invoke-direct {v4}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    .line 67
    new-instance v4, Lorg/jbox2d/common/Vec2;

    invoke-direct {v4}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    .line 68
    new-instance v4, Lorg/jbox2d/common/Mat22;

    invoke-direct {v4}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    .line 69
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    .line 70
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v4, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/XForm;->mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchor:Lorg/jbox2d/common/Vec2;

    .line 72
    iget v4, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->maxForce:F

    iput v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    .line 74
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget v2, v4, Lorg/jbox2d/dynamics/Body;->m_mass:F

    .line 77
    .local v2, "mass":F
    const v4, 0x40c90fdb

    iget v5, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->frequencyHz:F

    mul-float v3, v4, v5

    .line 80
    .local v3, "omega":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    iget v5, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->dampingRatio:F

    mul-float/2addr v4, v5

    mul-float v0, v4, v3

    .line 83
    .local v0, "d":F
    mul-float v4, v2, v3

    mul-float v1, v4, v3

    .line 86
    .local v1, "k":F
    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->timeStep:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v0

    div-float/2addr v4, v5

    iput v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    .line 87
    iget v4, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->timeStep:F

    mul-float/2addr v4, v1

    iget v5, p1, Lorg/jbox2d/dynamics/joints/MouseJointDef;->timeStep:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v0

    div-float/2addr v4, v5

    iput v4, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    .line 89
    return-void
.end method


# virtual methods
.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchor:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getReactionTorque()F
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 14
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    const/4 v12, 0x0

    .line 109
    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 112
    .local v5, "b":Lorg/jbox2d/dynamics/Body;
    iget-object v9, v5, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v9, v9, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchor:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 119
    .local v8, "r":Lorg/jbox2d/common/Vec2;
    iget v7, v5, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    .line 120
    .local v7, "invMass":F
    iget v6, v5, Lorg/jbox2d/dynamics/Body;->m_invI:F

    .line 122
    .local v6, "invI":F
    new-instance v1, Lorg/jbox2d/common/Mat22;

    invoke-direct {v1, v7, v12, v12, v7}, Lorg/jbox2d/common/Mat22;-><init>(FFFF)V

    .line 124
    .local v1, "K1":Lorg/jbox2d/common/Mat22;
    new-instance v2, Lorg/jbox2d/common/Mat22;

    iget v9, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v6

    iget v10, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    neg-float v10, v6

    iget v11, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v10, v11

    iget v11, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v11

    neg-float v11, v6

    iget v12, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    .line 125
    iget v12, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    iget v12, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v12, v6

    iget v13, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v12, v13

    .line 124
    invoke-direct {v2, v9, v10, v11, v12}, Lorg/jbox2d/common/Mat22;-><init>(FFFF)V

    .line 127
    .local v2, "K2":Lorg/jbox2d/common/Mat22;
    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Mat22;->add(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v0

    .line 128
    .local v0, "K":Lorg/jbox2d/common/Mat22;
    iget-object v9, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 129
    iget-object v9, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 131
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v9, v0}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Mat22;)V

    .line 132
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v9}, Lorg/jbox2d/common/Mat22;->invert()Lorg/jbox2d/common/Mat22;

    move-result-object v9

    iput-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    .line 134
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    iget-object v10, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v10, v10, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v8, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v10, v11

    iget-object v11, v5, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v11, v11, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    iget v12, v8, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v11, v12

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 137
    iget v9, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    const v10, 0x3f7ae148    # 0.98f

    mul-float/2addr v9, v10

    iput v9, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 140
    iget v9, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v3, v9, v10

    .line 141
    .local v3, "Px":F
    iget v9, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v4, v9, v10

    .line 142
    .local v4, "Py":F
    iget-object v9, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v11, v7, v3

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 143
    iget-object v9, v5, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v11, v7, v4

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 144
    iget v9, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v10, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v10, v4

    iget v11, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v3

    sub-float/2addr v10, v11

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    iput v9, v5, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 145
    return-void
.end method

.method public setTarget(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "target"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->wakeUp()V

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_target:Lorg/jbox2d/common/Vec2;

    .line 95
    return-void
.end method

.method public solvePositionConstraints()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 11
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 154
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 156
    .local v2, "b":Lorg/jbox2d/dynamics/Body;
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/XForm;

    iget-object v7, v7, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchor:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 159
    .local v6, "r":Lorg/jbox2d/common/Vec2;
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v8, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    invoke-static {v8, v6}, Lorg/jbox2d/common/Vec2;->cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 162
    .local v0, "Cdot":Lorg/jbox2d/common/Vec2;
    new-instance v3, Lorg/jbox2d/common/Vec2;

    iget v7, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    iget v9, p1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    iget v9, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 163
    iget v8, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    iget v10, p1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    iget v10, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 162
    invoke-direct {v3, v7, v8}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 164
    .local v3, "force":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    invoke-static {v7, v3}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 165
    iget v7, p1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v7, v7

    invoke-virtual {v3, v7}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 167
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 168
    .local v5, "oldForce":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7, v3}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 169
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v4

    .line 170
    .local v4, "forceMagnitude":F
    iget v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    .line 171
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    div-float/2addr v8, v4

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 173
    :cond_0
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget v8, v5, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_force:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    iget v9, v5, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Lorg/jbox2d/common/Vec2;->set(FF)V

    .line 175
    new-instance v1, Lorg/jbox2d/common/Vec2;

    iget v7, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v8, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    iget v8, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v9, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 176
    .local v1, "P":Lorg/jbox2d/common/Vec2;
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v8, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    invoke-virtual {v1, v8}, Lorg/jbox2d/common/Vec2;->mul(F)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 177
    iget v7, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v8, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    invoke-static {v6, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 178
    return-void
.end method
