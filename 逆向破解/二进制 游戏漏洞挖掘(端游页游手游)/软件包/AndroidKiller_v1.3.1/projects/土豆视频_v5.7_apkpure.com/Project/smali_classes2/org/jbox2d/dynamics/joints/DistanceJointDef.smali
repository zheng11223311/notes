.class public Lorg/jbox2d/dynamics/joints/DistanceJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "DistanceJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public length:F

.field public localAnchor1:Lorg/jbox2d/common/Vec2;

.field public localAnchor2:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 51
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    .line 55
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    .line 56
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    .line 57
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 2
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor1"    # Lorg/jbox2d/common/Vec2;
    .param p4, "anchor2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 69
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    .line 70
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 71
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1, p4}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 72
    invoke-virtual {p4, p3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 73
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v1

    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    .line 74
    return-void
.end method
