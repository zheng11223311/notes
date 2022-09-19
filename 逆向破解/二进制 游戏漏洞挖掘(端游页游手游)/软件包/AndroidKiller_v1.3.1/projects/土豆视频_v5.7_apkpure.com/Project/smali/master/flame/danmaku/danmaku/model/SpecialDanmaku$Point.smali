.class Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;FF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 24
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->this$0:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 26
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 27
    return-void
.end method


# virtual methods
.method public getDistance(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;)F
    .locals 4
    .param p1, "p"    # Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    .prologue
    .line 30
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 31
    .local v0, "_x":F
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 32
    .local v1, "_y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method
