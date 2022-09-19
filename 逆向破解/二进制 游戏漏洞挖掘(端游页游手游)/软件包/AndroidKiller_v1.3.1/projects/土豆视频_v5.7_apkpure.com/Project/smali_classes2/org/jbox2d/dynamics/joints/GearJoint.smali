.class public Lorg/jbox2d/dynamics/joints/GearJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "GearJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

.field public m_constant:F

.field m_force:F

.field public m_ground1:Lorg/jbox2d/dynamics/Body;

.field public m_ground2:Lorg/jbox2d/dynamics/Body;

.field public m_groundAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_groundAnchor2:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor1:Lorg/jbox2d/common/Vec2;

.field public m_localAnchor2:Lorg/jbox2d/common/Vec2;

.field m_mass:F

.field public m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

.field public m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

.field public m_ratio:F

.field public m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

.field public m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/jbox2d/dynamics/joints/GearJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/GearJointDef;)V
    .locals 6
    .param p1, "def"    # Lorg/jbox2d/dynamics/joints/GearJointDef;

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-direct {p0, p1}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 100
    new-instance v4, Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-direct {v4}, Lorg/jbox2d/dynamics/joints/Jacobian;-><init>()V

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    .line 102
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v2

    .line 103
    .local v2, "type1":Lorg/jbox2d/dynamics/joints/JointType;
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v3

    .line 105
    .local v3, "type2":Lorg/jbox2d/dynamics/joints/JointType;
    sget-boolean v4, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-eq v2, v4, :cond_0

    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-eq v2, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 106
    :cond_0
    sget-boolean v4, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 107
    :cond_1
    sget-boolean v4, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody1()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 108
    :cond_2
    sget-boolean v4, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody1()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/Body;->isStatic()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 110
    :cond_3
    iput-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 111
    iput-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 112
    iput-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 113
    iput-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 117
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody1()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ground1:Lorg/jbox2d/dynamics/Body;

    .line 118
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody2()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 119
    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v2, v4, :cond_4

    .line 120
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 121
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    .line 122
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 123
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->getJointAngle()F

    move-result v0

    .line 132
    .local v0, "coordinate1":F
    :goto_0
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody1()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ground2:Lorg/jbox2d/dynamics/Body;

    .line 133
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/Joint;->getBody2()Lorg/jbox2d/dynamics/Body;

    move-result-object v4

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 134
    sget-object v4, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v3, v4, :cond_5

    .line 135
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 136
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    .line 137
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 138
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->getJointAngle()F

    move-result v1

    .line 147
    .local v1, "coordinate2":F
    :goto_1
    iget v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->ratio:F

    iput v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    .line 149
    iget v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iput v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_constant:F

    .line 151
    const/4 v4, 0x0

    iput v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    .line 152
    return-void

    .line 126
    .end local v0    # "coordinate1":F
    .end local v1    # "coordinate2":F
    :cond_4
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 127
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_groundAnchor1:Lorg/jbox2d/common/Vec2;

    .line 128
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 129
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->getJointTranslation()F

    move-result v0

    .restart local v0    # "coordinate1":F
    goto :goto_0

    .line 141
    :cond_5
    iget-object v4, p1, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 142
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_groundAnchor2:Lorg/jbox2d/common/Vec2;

    .line 143
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    iput-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 144
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v4}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->getJointTranslation()F

    move-result v1

    .restart local v1    # "coordinate2":F
    goto :goto_1
.end method


# virtual methods
.method public getAnchor1()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor2()Lorg/jbox2d/common/Vec2;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    return v0
.end method

.method public getReactionForce()Lorg/jbox2d/common/Vec2;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v2, v2, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v3, v3, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public getReactionTorque()F
    .locals 6

    .prologue
    .line 279
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v3

    iget-object v3, v3, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 280
    .local v2, "r":Lorg/jbox2d/common/Vec2;
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v4, v4, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v5, v5, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 281
    .local v0, "F":Lorg/jbox2d/common/Vec2;
    iget v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v4, v4, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    mul-float/2addr v3, v4

    invoke-static {v2, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    sub-float v1, v3, v4

    .line 282
    .local v1, "T":F
    return v1
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 13
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    const/4 v12, 0x0

    .line 155
    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ground1:Lorg/jbox2d/dynamics/Body;

    .line 156
    .local v5, "g1":Lorg/jbox2d/dynamics/Body;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ground2:Lorg/jbox2d/dynamics/Body;

    .line 157
    .local v6, "g2":Lorg/jbox2d/dynamics/Body;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 158
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 160
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    const/4 v0, 0x0

    .line 161
    .local v0, "K":F
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-virtual {v9}, Lorg/jbox2d/dynamics/joints/Jacobian;->setZero()V

    .line 163
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    if-eqz v9, :cond_0

    .line 164
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    const/high16 v10, -0x40800000    # -1.0f

    iput v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    .line 165
    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    add-float/2addr v0, v9

    .line 176
    :goto_0
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    if-eqz v9, :cond_1

    .line 177
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    neg-float v10, v10

    iput v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    .line 178
    iget v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    mul-float/2addr v9, v10

    iget v10, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    .line 190
    :goto_1
    sget-boolean v9, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    cmpl-float v9, v0, v12

    if-gtz v9, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 168
    :cond_0
    invoke-virtual {v5}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v9

    iget-object v9, v9, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-static {v9, v10}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 169
    .local v8, "ug":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v9

    iget-object v9, v9, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 170
    .local v7, "r":Lorg/jbox2d/common/Vec2;
    invoke-static {v7, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 171
    .local v4, "crug":F
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    invoke-virtual {v8}, Lorg/jbox2d/common/Vec2;->negate()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    iput-object v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    .line 172
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    neg-float v10, v4

    iput v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    .line 173
    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v10, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v10, v4

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    add-float/2addr v0, v9

    goto :goto_0

    .line 181
    .end local v4    # "crug":F
    .end local v7    # "r":Lorg/jbox2d/common/Vec2;
    .end local v8    # "ug":Lorg/jbox2d/common/Vec2;
    :cond_1
    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v9

    iget-object v9, v9, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxis1:Lorg/jbox2d/common/Vec2;

    invoke-static {v9, v10}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 182
    .restart local v8    # "ug":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getXForm()Lorg/jbox2d/common/XForm;

    move-result-object v9

    iget-object v9, v9, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchor2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getLocalCenter()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 183
    .restart local v7    # "r":Lorg/jbox2d/common/Vec2;
    invoke-static {v7, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 184
    .restart local v4    # "crug":F
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    neg-float v10, v10

    invoke-virtual {v8, v10}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    iput-object v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    .line 185
    iget-object v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    neg-float v10, v10

    mul-float/2addr v10, v4

    iput v10, v9, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    .line 186
    iget v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    mul-float/2addr v9, v10

    iget v10, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    iget v11, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v11, v4

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    goto/16 :goto_1

    .line 191
    .end local v4    # "crug":F
    .end local v7    # "r":Lorg/jbox2d/common/Vec2;
    .end local v8    # "ug":Lorg/jbox2d/common/Vec2;
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v0

    iput v9, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 193
    iget-boolean v9, p1, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    if-eqz v9, :cond_3

    .line 195
    iget v9, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    mul-float v1, v9, v10

    .line 196
    .local v1, "P":F
    iget-object v9, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v11, v1

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v12, v12, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 197
    iget-object v9, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v11, v1

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v12, v12, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 198
    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v10, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v10, v1

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v11, v11, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 199
    iget-object v9, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v11, v1

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v12, v12, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 200
    iget-object v9, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v11, v1

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v12, v12, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 201
    iget v9, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v10, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v10, v1

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v11, v11, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 205
    .end local v1    # "P":F
    :goto_2
    return-void

    .line 203
    :cond_3
    iput v12, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    goto :goto_2
.end method

.method public solvePositionConstraints()Z
    .locals 11

    .prologue
    .line 227
    const/4 v6, 0x0

    .line 229
    .local v6, "linearError":F
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 230
    .local v1, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 233
    .local v2, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    if-eqz v7, :cond_0

    .line 234
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute1:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->getJointAngle()F

    move-result v3

    .line 240
    .local v3, "coordinate1":F
    :goto_0
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    if-eqz v7, :cond_1

    .line 241
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_revolute2:Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->getJointAngle()F

    move-result v4

    .line 247
    .local v4, "coordinate2":F
    :goto_1
    iget v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_constant:F

    iget v8, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    mul-float/2addr v8, v4

    add-float/2addr v8, v3

    sub-float v0, v7, v8

    .line 249
    .local v0, "C":F
    iget v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    neg-float v7, v7

    mul-float v5, v7, v0

    .line 251
    .local v5, "impulse":F
    iget-object v7, v1, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget v9, v1, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 252
    iget-object v7, v1, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget v9, v1, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 253
    iget-object v7, v1, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v8, v7, Lorg/jbox2d/common/Sweep;->a:F

    iget v9, v1, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Sweep;->a:F

    .line 254
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 255
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v7, v7, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 256
    iget-object v7, v2, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v8, v7, Lorg/jbox2d/common/Sweep;->a:F

    iget v9, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v9, v5

    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v10, v10, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lorg/jbox2d/common/Sweep;->a:F

    .line 258
    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 259
    invoke-virtual {v2}, Lorg/jbox2d/dynamics/Body;->synchronizeTransform()V

    .line 261
    const v7, 0x3ba3d70a    # 0.005f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    return v7

    .line 237
    .end local v0    # "C":F
    .end local v3    # "coordinate1":F
    .end local v4    # "coordinate2":F
    .end local v5    # "impulse":F
    :cond_0
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic1:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->getJointTranslation()F

    move-result v3

    .restart local v3    # "coordinate1":F
    goto/16 :goto_0

    .line 244
    :cond_1
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_prismatic2:Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v7}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->getJointTranslation()F

    move-result v4

    .restart local v4    # "coordinate2":F
    goto/16 :goto_1

    .line 261
    .restart local v0    # "C":F
    .restart local v5    # "impulse":F
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
    .locals 10
    .param p1, "step"    # Lorg/jbox2d/dynamics/TimeStep;

    .prologue
    .line 208
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 209
    .local v2, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 211
    .local v3, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v6, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v7, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 212
    iget-object v8, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v9, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 211
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/jbox2d/dynamics/joints/Jacobian;->compute(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)F

    move-result v0

    .line 214
    .local v0, "Cdot":F
    iget v5, p1, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    neg-float v5, v5

    iget v6, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    mul-float/2addr v5, v6

    mul-float v4, v5, v0

    .line 215
    .local v4, "force":F
    iget v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    add-float/2addr v5, v4

    iput v5, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_force:F

    .line 217
    iget v5, p1, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    mul-float v1, v5, v4

    .line 218
    .local v1, "P":F
    iget-object v5, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v7, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v8, v8, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 219
    iget-object v5, v2, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v7, v2, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v8, v8, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 220
    iget v5, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v6, v2, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v6, v1

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v7, v7, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v2, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 221
    iget-object v5, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v7, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v8, v8, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 222
    iget-object v5, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    iget v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v7, v3, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget-object v8, v8, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 223
    iget v5, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v6, v3, Lorg/jbox2d/dynamics/Body;->m_invI:F

    mul-float/2addr v6, v1

    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_J:Lorg/jbox2d/dynamics/joints/Jacobian;

    iget v7, v7, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    .line 224
    return-void
.end method
