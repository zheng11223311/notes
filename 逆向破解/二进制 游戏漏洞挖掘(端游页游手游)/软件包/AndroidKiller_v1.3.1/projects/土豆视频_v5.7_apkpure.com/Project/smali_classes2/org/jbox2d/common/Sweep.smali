.class public Lorg/jbox2d/common/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public a:F

.field public a0:F

.field public c:Lorg/jbox2d/common/Vec2;

.field public c0:Lorg/jbox2d/common/Vec2;

.field public localCenter:Lorg/jbox2d/common/Vec2;

.field public t0:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/jbox2d/common/Sweep;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/common/Sweep;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    .line 57
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    .line 58
    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 90
    iget v1, p0, Lorg/jbox2d/common/Sweep;->t0:F

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    iget v1, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v1, v4, v1

    const/high16 v2, 0x34000000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 91
    iget v1, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v1, p1, v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v2, v4, v2

    div-float v0, v1, v2

    .line 92
    .local v0, "alpha":F
    iget-object v1, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    sub-float v2, v4, v0

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 93
    iget-object v1, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    sub-float v2, v4, v0

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 94
    sub-float v1, v4, v0

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a0:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 95
    iput p1, p0, Lorg/jbox2d/common/Sweep;->t0:F

    .line 97
    .end local v0    # "alpha":F
    :cond_0
    return-void
.end method

.method public getXForm(Lorg/jbox2d/common/XForm;F)V
    .locals 6
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;
    .param p2, "t"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    sget-boolean v2, Lorg/jbox2d/common/Sweep;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 70
    :cond_0
    iget v2, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v2, v5, v2

    const/high16 v3, 0x34000000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 71
    iget v2, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v2, p2, v2

    iget v3, p0, Lorg/jbox2d/common/Sweep;->t0:F

    sub-float v3, v5, v3

    div-float v0, v2, v3

    .line 72
    .local v0, "alpha":F
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    sub-float v3, v5, v0

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 73
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    sub-float v3, v5, v0

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 74
    sub-float v2, v5, v0

    iget v3, p0, Lorg/jbox2d/common/Sweep;->a0:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Sweep;->a:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 75
    .local v1, "angle":F
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v2, v1}, Lorg/jbox2d/common/Mat22;->set(F)V

    .line 82
    .end local v0    # "alpha":F
    .end local v1    # "angle":F
    :goto_0
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v4}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 83
    return-void

    .line 77
    :cond_1
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 78
    iget-object v2, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget v3, p0, Lorg/jbox2d/common/Sweep;->a:F

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Mat22;->set(F)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sweep:\nlocalCenter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "c0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "a0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "t0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->t0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method
