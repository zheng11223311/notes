.class public Lorg/jbox2d/common/XForm;
.super Ljava/lang/Object;
.source "XForm.java"


# static fields
.field public static identity:Lorg/jbox2d/common/XForm;


# instance fields
.field public R:Lorg/jbox2d/common/Mat22;

.field public position:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/jbox2d/common/XForm;

    invoke-direct {v0}, Lorg/jbox2d/common/XForm;-><init>()V

    sput-object v0, Lorg/jbox2d/common/XForm;->identity:Lorg/jbox2d/common/XForm;

    .line 42
    sget-object v0, Lorg/jbox2d/common/XForm;->identity:Lorg/jbox2d/common/XForm;

    invoke-virtual {v0}, Lorg/jbox2d/common/XForm;->setIdentity()V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 48
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Mat22;)V
    .locals 1
    .param p1, "_position"    # Lorg/jbox2d/common/Vec2;
    .param p2, "_R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 60
    invoke-virtual {p2}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/XForm;)V
    .locals 1
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    .line 54
    iget-object v0, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    .line 55
    return-void
.end method

.method public static mul(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 5
    .param p0, "T"    # Lorg/jbox2d/common/XForm;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 76
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v2, v2, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v2, v2, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 77
    iget-object v2, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, v3, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v3, v3, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 76
    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static mulT(Lorg/jbox2d/common/XForm;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 8
    .param p0, "T"    # Lorg/jbox2d/common/XForm;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 83
    iget v4, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v2, v4, v5

    .line 84
    .local v2, "v1x":F
    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v5, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v3, v4, v5

    .line 85
    .local v3, "v1y":F
    iget-object v4, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    .line 86
    .local v0, "b":Lorg/jbox2d/common/Vec2;
    iget-object v4, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v1, v4, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 87
    .local v1, "b1":Lorg/jbox2d/common/Vec2;
    new-instance v4, Lorg/jbox2d/common/Vec2;

    iget v5, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v5, v2

    iget v6, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v6, v2

    iget v7, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v4
.end method


# virtual methods
.method public set(Lorg/jbox2d/common/XForm;)V
    .locals 2
    .param p1, "xf"    # Lorg/jbox2d/common/XForm;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)V

    .line 66
    iget-object v0, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    iget-object v1, p1, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Mat22;)V

    .line 67
    return-void
.end method

.method public setIdentity()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 72
    iget-object v0, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->setIdentity()V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const-string v0, "XForm:\n"

    .line 93
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/XForm;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "R: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/XForm;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method
