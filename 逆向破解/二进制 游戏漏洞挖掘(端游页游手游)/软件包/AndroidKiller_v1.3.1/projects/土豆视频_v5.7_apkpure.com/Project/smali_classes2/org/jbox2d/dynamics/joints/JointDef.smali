.class public Lorg/jbox2d/dynamics/joints/JointDef;
.super Ljava/lang/Object;
.source "JointDef.java"


# instance fields
.field public body1:Lorg/jbox2d/dynamics/Body;

.field public body2:Lorg/jbox2d/dynamics/Body;

.field public collideConnected:Z

.field public type:Lorg/jbox2d/dynamics/joints/JointType;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN_JOINT:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 41
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->body1:Lorg/jbox2d/dynamics/Body;

    .line 42
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->body2:Lorg/jbox2d/dynamics/Body;

    .line 43
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->userData:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    .line 45
    return-void
.end method
