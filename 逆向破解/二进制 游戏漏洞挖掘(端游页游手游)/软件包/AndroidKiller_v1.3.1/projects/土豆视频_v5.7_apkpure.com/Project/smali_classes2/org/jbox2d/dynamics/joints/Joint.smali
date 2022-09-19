.class public abstract Lorg/jbox2d/dynamics/joints/Joint;
.super Ljava/lang/Object;
.source "Joint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_body1:Lorg/jbox2d/dynamics/Body;

.field public m_body2:Lorg/jbox2d/dynamics/Body;

.field public m_collideConnected:Z

.field public m_inv_dt:F

.field public m_islandFlag:Z

.field public m_next:Lorg/jbox2d/dynamics/joints/Joint;

.field public m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public m_prev:Lorg/jbox2d/dynamics/joints/Joint;

.field public m_type:Lorg/jbox2d/dynamics/joints/JointType;

.field public m_userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/jbox2d/dynamics/joints/Joint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/Joint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jbox2d/dynamics/joints/JointDef;)V
    .locals 2
    .param p1, "description"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 59
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_prev:Lorg/jbox2d/dynamics/joints/Joint;

    .line 60
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    .line 61
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/JointEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_node1:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 62
    new-instance v0, Lorg/jbox2d/dynamics/joints/JointEdge;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/joints/JointEdge;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_node2:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 63
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body1:Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    .line 64
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->body2:Lorg/jbox2d/dynamics/Body;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    .line 65
    iget-boolean v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_collideConnected:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_islandFlag:Z

    .line 67
    iget-object v0, p1, Lorg/jbox2d/dynamics/joints/JointDef;->userData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static create(Lorg/jbox2d/dynamics/joints/JointDef;)Lorg/jbox2d/dynamics/joints/Joint;
    .locals 3
    .param p0, "description"    # Lorg/jbox2d/dynamics/joints/JointDef;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "joint":Lorg/jbox2d/dynamics/joints/Joint;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/DistanceJoint;-><init>(Lorg/jbox2d/dynamics/joints/DistanceJointDef;)V

    .line 107
    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    :cond_0
    :goto_0
    return-object v0

    .line 88
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_1
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_2

    .line 89
    new-instance v0, Lorg/jbox2d/dynamics/joints/MouseJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/MouseJoint;-><init>(Lorg/jbox2d/dynamics/joints/MouseJointDef;)V

    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    goto :goto_0

    .line 91
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_2
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_3

    .line 92
    new-instance v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/PrismaticJoint;-><init>(Lorg/jbox2d/dynamics/joints/PrismaticJointDef;)V

    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    goto :goto_0

    .line 94
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_3
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_4

    .line 95
    new-instance v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/RevoluteJoint;-><init>(Lorg/jbox2d/dynamics/joints/RevoluteJointDef;)V

    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    goto :goto_0

    .line 97
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_4
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_5

    .line 98
    new-instance v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/PulleyJoint;-><init>(Lorg/jbox2d/dynamics/joints/PulleyJointDef;)V

    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    goto :goto_0

    .line 100
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_5
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    sget-object v2, Lorg/jbox2d/dynamics/joints/JointType;->GEAR_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    if-ne v1, v2, :cond_6

    .line 101
    new-instance v0, Lorg/jbox2d/dynamics/joints/GearJoint;

    .end local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    check-cast p0, Lorg/jbox2d/dynamics/joints/GearJointDef;

    .end local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    invoke-direct {v0, p0}, Lorg/jbox2d/dynamics/joints/GearJoint;-><init>(Lorg/jbox2d/dynamics/joints/GearJointDef;)V

    .restart local v0    # "joint":Lorg/jbox2d/dynamics/joints/Joint;
    goto :goto_0

    .line 104
    .restart local p0    # "description":Lorg/jbox2d/dynamics/joints/JointDef;
    :cond_6
    sget-boolean v1, Lorg/jbox2d/dynamics/joints/Joint;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static destroy(Lorg/jbox2d/dynamics/joints/Joint;)V
    .locals 0
    .param p0, "j"    # Lorg/jbox2d/dynamics/joints/Joint;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/joints/Joint;->destructor()V

    .line 76
    return-void
.end method


# virtual methods
.method public destructor()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public abstract getAnchor1()Lorg/jbox2d/common/Vec2;
.end method

.method public abstract getAnchor2()Lorg/jbox2d/common/Vec2;
.end method

.method public getBody1()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_body1:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getBody2()Lorg/jbox2d/dynamics/Body;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_body2:Lorg/jbox2d/dynamics/Body;

    return-object v0
.end method

.method public getNext()Lorg/jbox2d/dynamics/joints/Joint;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_next:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public abstract getReactionForce()Lorg/jbox2d/common/Vec2;
.end method

.method public abstract getReactionTorque()F
.end method

.method public getType()Lorg/jbox2d/dynamics/joints/JointType;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_type:Lorg/jbox2d/dynamics/joints/JointType;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public initPositionConstraints()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public abstract initVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/Joint;->m_userData:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public abstract solvePositionConstraints()Z
.end method

.method public abstract solveVelocityConstraints(Lorg/jbox2d/dynamics/TimeStep;)V
.end method
