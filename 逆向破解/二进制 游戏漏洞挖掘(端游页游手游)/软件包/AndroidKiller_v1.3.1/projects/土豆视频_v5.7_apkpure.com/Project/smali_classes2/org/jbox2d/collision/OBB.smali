.class public Lorg/jbox2d/collision/OBB;
.super Ljava/lang/Object;
.source "OBB.java"


# instance fields
.field public R:Lorg/jbox2d/common/Mat22;

.field public center:Lorg/jbox2d/common/Vec2;

.field public extents:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/OBB;)V
    .locals 3
    .param p1, "copy"    # Lorg/jbox2d/collision/OBB;

    .prologue
    .line 47
    iget-object v0, p1, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    iget-object v1, p1, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p1, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jbox2d/collision/OBB;-><init>(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .locals 1
    .param p1, "_R"    # Lorg/jbox2d/common/Mat22;
    .param p2, "_center"    # Lorg/jbox2d/common/Vec2;
    .param p3, "_extents"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->R:Lorg/jbox2d/common/Mat22;

    .line 42
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->center:Lorg/jbox2d/common/Vec2;

    .line 43
    invoke-virtual {p3}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/OBB;->extents:Lorg/jbox2d/common/Vec2;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jbox2d/collision/OBB;->clone()Lorg/jbox2d/collision/OBB;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/collision/OBB;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/jbox2d/collision/OBB;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/OBB;-><init>(Lorg/jbox2d/collision/OBB;)V

    return-object v0
.end method
