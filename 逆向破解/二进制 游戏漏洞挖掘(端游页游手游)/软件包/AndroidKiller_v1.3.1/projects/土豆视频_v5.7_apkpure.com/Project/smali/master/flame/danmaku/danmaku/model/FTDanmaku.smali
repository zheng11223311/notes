.class public Lmaster/flame/danmaku/danmaku/model/FTDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "FTDanmaku.java"


# instance fields
.field private RECT:[F

.field private mLastDispWidth:I

.field private mLastLeft:F

.field private mLastPaintWidth:F

.field private x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V
    .locals 1
    .param p1, "duration"    # Lmaster/flame/danmaku/danmaku/model/Duration;

    .prologue
    .line 36
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    .line 37
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 38
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    return v0
.end method

.method protected getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F
    .locals 3
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .prologue
    .line 61
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastDispWidth:I

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 62
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastLeft:F

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 65
    .local v0, "left":F
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastDispWidth:I

    .line 66
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    .line 67
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastLeft:F

    goto :goto_0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 5
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "time"    # J

    .prologue
    .line 73
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->isMeasured()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F

    move-result v0

    .line 76
    .local v0, "left":F
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    .line 79
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 80
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    aput v3, v1, v2

    .line 81
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x2

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v3, v0

    aput v3, v1, v2

    .line 82
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x3

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    iget v4, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 83
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    goto :goto_0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x5

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 6
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 42
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->time:J

    sub-long v0, v2, v4

    .line 44
    .local v0, "deltaDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F

    move-result v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    .line 47
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 58
    .end local v0    # "deltaDuration":J
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v0    # "deltaDuration":J
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 54
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 55
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    goto :goto_0
.end method
