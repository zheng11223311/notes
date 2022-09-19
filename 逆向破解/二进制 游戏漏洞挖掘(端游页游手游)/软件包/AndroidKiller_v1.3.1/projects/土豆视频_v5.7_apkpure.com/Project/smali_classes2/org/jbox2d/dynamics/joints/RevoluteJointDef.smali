.class public Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "RevoluteJointDef.java"


# instance fields
.field public enableLimit:Z

.field public enableMotor:Z

.field public localAnchor1:Lorg/jbox2d/common/Vec2;

.field public localAnchor2:Lorg/jbox2d/common/Vec2;

.field public lowerAngle:F

.field public maxMotorTorque:F

.field public motorSpeed:F

.field public referenceAngle:F

.field public upperAngle:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 44
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 46
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 47
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    .line 48
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->lowerAngle:F

    .line 49
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->upperAngle:F

    .line 50
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 51
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    .line 52
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableLimit:Z

    .line 53
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    .line 54
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V
    .locals 2
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 60
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    .line 61
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 62
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 63
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    .line 64
    return-void
.end method
