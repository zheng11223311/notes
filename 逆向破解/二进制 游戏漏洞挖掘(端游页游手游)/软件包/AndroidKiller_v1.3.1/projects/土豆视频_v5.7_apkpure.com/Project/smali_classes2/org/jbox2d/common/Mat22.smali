.class public Lorg/jbox2d/common/Mat22;
.super Ljava/lang/Object;
.source "Mat22.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public col1:Lorg/jbox2d/common/Vec2;

.field public col2:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/jbox2d/common/Mat22;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 46
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Mat22;->setAngle(F)V

    .line 55
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "col1x"    # F
    .param p2, "col2x"    # F
    .param p3, "col1y"    # F
    .param p4, "col2y"    # F

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    .line 76
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p2, p4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "c1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "c2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    .line 64
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 65
    return-void
.end method

.method public static abs(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 1
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/jbox2d/common/Mat22;->abs()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public static mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 1
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public static mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public static mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 1
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public static mulT(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Mat22;->mulT(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/jbox2d/common/Mat22;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->abs()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->abs()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Mat22;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v0
.end method

.method public add(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 4
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 233
    new-instance v0, Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Mat22;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v0
.end method

.method public addLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 2
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 243
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 244
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/common/Mat22;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Mat22;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v0
.end method

.method public invert()Lorg/jbox2d/common/Mat22;
    .locals 8

    .prologue
    .line 154
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "a":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v2, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v2, "b":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v3, v6, Lorg/jbox2d/common/Vec2;->y:F

    .local v3, "c":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v4, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 155
    .local v4, "d":F
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 156
    .local v0, "B":Lorg/jbox2d/common/Mat22;
    mul-float v6, v1, v4

    mul-float v7, v2, v3

    sub-float v5, v6, v7

    .line 158
    .local v5, "det":F
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    .line 159
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    mul-float v7, v5, v4

    iput v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 160
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    neg-float v7, v5

    mul-float/2addr v7, v2

    iput v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 161
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    neg-float v7, v5

    mul-float/2addr v7, v3

    iput v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 162
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    mul-float v7, v5, v1

    iput v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 163
    return-object v0
.end method

.method public mul(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 3
    .param p1, "R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 198
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 199
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p0, v1}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p0, v2}, Lorg/jbox2d/common/Mat22;->mul(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 200
    return-object v0
.end method

.method public mul(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 5
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 188
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 189
    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 188
    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public mulT(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .locals 6
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 209
    new-instance v1, Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 210
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 209
    invoke-direct {v1, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 211
    .local v1, "c1":Lorg/jbox2d/common/Vec2;
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v4}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    .line 212
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 211
    invoke-direct {v2, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 213
    .local v2, "c2":Lorg/jbox2d/common/Vec2;
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 214
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Mat22;->set(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 215
    return-object v0
.end method

.method public mulT(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 3
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 224
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    invoke-static {p1, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    invoke-static {p1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public set(F)V
    .locals 4
    .param p1, "angle"    # F

    .prologue
    .line 102
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 103
    .local v1, "s":F
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    neg-float v3, v1

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 104
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v1, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 105
    return-void
.end method

.method public set(Lorg/jbox2d/common/Mat22;)V
    .locals 2
    .param p1, "m"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 85
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 86
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 87
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 88
    return-void
.end method

.method public set(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 2
    .param p1, "c1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "c2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 147
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 148
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 149
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 150
    return-void
.end method

.method public setAngle(F)V
    .locals 4
    .param p1, "angle"    # F

    .prologue
    .line 132
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 133
    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 134
    .local v1, "s":F
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 135
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    neg-float v3, v1

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 136
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v1, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 137
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 138
    return-void
.end method

.method public setIdentity()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 112
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 113
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 114
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 115
    return-void
.end method

.method public setZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 122
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 123
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 124
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 125
    return-void
.end method

.method public solve(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 9
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 252
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v0, "a11":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "a12":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v2, v6, Lorg/jbox2d/common/Vec2;->y:F

    .local v2, "a21":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v3, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 253
    .local v3, "a22":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float v4, v6, v7

    .line 254
    .local v4, "det":F
    sget-boolean v6, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 255
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    .line 256
    new-instance v5, Lorg/jbox2d/common/Vec2;

    iget v6, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v6, v3

    iget v7, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    .line 257
    iget v7, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v0

    iget v8, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    .line 256
    invoke-direct {v5, v6, v7}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 258
    .local v5, "x":Lorg/jbox2d/common/Vec2;
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    const-string v0, ""

    .line 38
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col1:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->col2:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method
