.class public Lorg/jbox2d/dynamics/joints/Jacobian;
.super Ljava/lang/Object;
.source "Jacobian.java"


# instance fields
.field public angular1:F

.field public angular2:F

.field public linear1:Lorg/jbox2d/common/Vec2;

.field public linear2:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    .line 39
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    .line 40
    invoke-virtual {p0}, Lorg/jbox2d/dynamics/joints/Jacobian;->setZero()V

    .line 41
    return-void
.end method


# virtual methods
.method compute(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)F
    .locals 2
    .param p1, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "a1"    # F
    .param p3, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p4, "a2"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    iget v1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, p3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    add-float/2addr v0, v1

    .line 59
    iget v1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    mul-float/2addr v1, p4

    .line 58
    add-float/2addr v0, v1

    return v0
.end method

.method set(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;F)V
    .locals 0
    .param p1, "x1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "a1"    # F
    .param p3, "x2"    # Lorg/jbox2d/common/Vec2;
    .param p4, "a2"    # F

    .prologue
    .line 51
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    .line 52
    iput p2, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    .line 53
    iput-object p3, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    .line 54
    iput p4, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    .line 55
    return-void
.end method

.method setZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 45
    iput v1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular1:F

    .line 46
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linear2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 47
    iput v1, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->angular2:F

    .line 48
    return-void
.end method
