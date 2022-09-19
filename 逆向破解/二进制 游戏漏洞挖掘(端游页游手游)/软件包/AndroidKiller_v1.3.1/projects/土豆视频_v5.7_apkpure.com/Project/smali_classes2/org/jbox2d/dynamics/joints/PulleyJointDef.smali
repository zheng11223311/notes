.class public Lorg/jbox2d/dynamics/joints/PulleyJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "PulleyJointDef.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public groundAnchor1:Lorg/jbox2d/common/Vec2;

.field public groundAnchor2:Lorg/jbox2d/common/Vec2;

.field public length1:F

.field public length2:F

.field public localAnchor1:Lorg/jbox2d/common/Vec2;

.field public localAnchor2:Lorg/jbox2d/common/Vec2;

.field public maxLength1:F

.field public maxLength2:F

.field public ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 35
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 36
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor1:Lorg/jbox2d/common/Vec2;

    .line 37
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v2, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor2:Lorg/jbox2d/common/Vec2;

    .line 38
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 39
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v2, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 40
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length1:F

    .line 41
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength1:F

    .line 42
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length2:F

    .line 43
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength2:F

    .line 44
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->collideConnected:Z

    .line 46
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;F)V
    .locals 7
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "ga1"    # Lorg/jbox2d/common/Vec2;
    .param p4, "ga2"    # Lorg/jbox2d/common/Vec2;
    .param p5, "anchor1"    # Lorg/jbox2d/common/Vec2;
    .param p6, "anchor2"    # Lorg/jbox2d/common/Vec2;
    .param p7, "r"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 53
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 54
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    .line 55
    iput-object p3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor1:Lorg/jbox2d/common/Vec2;

    .line 56
    iput-object p4, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchor2:Lorg/jbox2d/common/Vec2;

    .line 57
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->body1:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3, p5}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    iput-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor1:Lorg/jbox2d/common/Vec2;

    .line 58
    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->body2:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3, p6}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    iput-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchor2:Lorg/jbox2d/common/Vec2;

    .line 59
    invoke-virtual {p5, p3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 60
    .local v1, "d1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v3

    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length1:F

    .line 61
    invoke-virtual {p6, p4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 62
    .local v2, "d2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v3

    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length2:F

    .line 63
    iput p7, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    .line 64
    sget-boolean v3, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    const/high16 v4, 0x34000000

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 65
    :cond_0
    iget v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length1:F

    iget v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    iget v5, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->length2:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 66
    .local v0, "C":F
    iget v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    mul-float/2addr v3, v6

    sub-float v3, v0, v3

    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength1:F

    .line 67
    sub-float v3, v0, v6

    iget v4, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    div-float/2addr v3, v4

    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->maxLength2:F

    .line 68
    return-void
.end method
