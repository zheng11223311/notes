.class public Lorg/jbox2d/common/Vec2;
.super Ljava/lang/Object;
.source "Vec2.java"


# static fields
.field public static creationCount:I = 0x0

.field public static final watchCreations:Z = true


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lorg/jbox2d/common/Vec2;->creationCount:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 47
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Lorg/jbox2d/common/Vec2;->creationCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/jbox2d/common/Vec2;->creationCount:I

    .line 51
    iput p1, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 52
    iput p2, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 54
    return-void
.end method

.method public static abs(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 3
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 173
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .locals 3
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 181
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 3
    .param p0, "s"    # F
    .param p1, "a"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 189
    new-instance v0, Lorg/jbox2d/common/Vec2;

    neg-float v1, p0

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;
    .locals 4
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "s"    # F

    .prologue
    .line 185
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, p1

    neg-float v2, p1

    iget v3, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .locals 3
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 177
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 4
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 197
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_0
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_1
    invoke-direct {v2, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2

    :cond_0
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_1
.end method

.method public static min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 4
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 193
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_0
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_1
    invoke-direct {v2, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2

    :cond_0
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_1
.end method


# virtual methods
.method public abs()Lorg/jbox2d/common/Vec2;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 4
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 76
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 2
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 103
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 104
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 105
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
    invoke-virtual {p0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/common/Vec2;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 147
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 147
    goto :goto_0
.end method

.method public length()F
    .locals 3

    .prologue
    .line 124
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 129
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lorg/jbox2d/common/Vec2;
    .locals 3
    .param p1, "a"    # F

    .prologue
    .line 86
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public mulLocal(F)Lorg/jbox2d/common/Vec2;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 117
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 118
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 119
    return-object p0
.end method

.method public negate()Lorg/jbox2d/common/Vec2;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v1, v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public negateLocal()Lorg/jbox2d/common/Vec2;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 97
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 98
    return-object p0
.end method

.method public normalize()F
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v1

    .line 135
    .local v1, "length":F
    const/high16 v2, 0x34000000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 142
    .end local v1    # "length":F
    :goto_0
    return v1

    .line 139
    .restart local v1    # "length":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 140
    .local v0, "invLength":F
    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 141
    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_0
.end method

.method public set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 64
    iput p1, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 65
    iput p2, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 66
    return-void
.end method

.method public set(Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 70
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 71
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 72
    return-void
.end method

.method public setZero()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 59
    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 60
    return-void
.end method

.method public sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 4
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 81
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .locals 2
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 110
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 111
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 112
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
