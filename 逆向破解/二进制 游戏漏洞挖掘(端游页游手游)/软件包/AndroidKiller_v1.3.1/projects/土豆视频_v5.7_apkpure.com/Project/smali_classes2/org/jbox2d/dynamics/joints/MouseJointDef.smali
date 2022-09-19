.class public Lorg/jbox2d/dynamics/joints/MouseJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "MouseJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public maxForce:F

.field public target:Lorg/jbox2d/common/Vec2;

.field public timeStep:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 54
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    .line 56
    iput v1, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->maxForce:F

    .line 57
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->frequencyHz:F

    .line 58
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->dampingRatio:F

    .line 59
    const v0, 0x3c888889

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->timeStep:F

    .line 60
    return-void
.end method
