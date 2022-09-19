.class public Lorg/jbox2d/dynamics/joints/PrismaticJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "PrismaticJointDef.java"


# instance fields
.field public enableLimit:Z

.field public enableMotor:Z

.field public localAnchor1:Lorg/jbox2d/common/Vec2;

.field public localAnchor2:Lorg/jbox2d/common/Vec2;

.field public localAxis1:Lorg/jbox2d/common/Vec2;

.field public lowerTranslation:F

.field public maxMotorForce:F

.field public motorSpeed:F

.field public referenceAngle:F

.field public upperTranslation:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 33
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 34
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 35
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 36
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxis1:Lorg/jbox2d/common/Vec2;

    .line 37
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    .line 38
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableLimit:Z

    .line 39
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->lowerTranslation:F

    .line 40
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->upperTranslation:F

    .line 41
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableMotor:Z

    .line 42
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->maxMotorForce:F

    .line 43
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->motorSpeed:F

    .line 44
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 2
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;
    .param p4, "axis"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 50
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    .line 51
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 52
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 53
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, p4}, Lorg/jbox2d/dynamics/Body;->getLocalVector(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxis1:Lorg/jbox2d/common/Vec2;

    .line 54
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    .line 55
    return-void
.end method
