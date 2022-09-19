.class public Lorg/jbox2d/dynamics/joints/GearJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "GearJointDef.java"


# instance fields
.field public joint1:Lorg/jbox2d/dynamics/joints/Joint;

.field public joint2:Lorg/jbox2d/dynamics/joints/Joint;

.field public ratio:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 58
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->GEAR_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 59
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    .line 60
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->ratio:F

    .line 62
    return-void
.end method
