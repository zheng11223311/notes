.class public abstract Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.super Ljava/lang/Object;
.source "BaseDanmaku.java"


# static fields
.field public static final DANMAKU_BR_CHAR:Ljava/lang/String; = "/n"

.field public static final FLAG_REQUEST_INVALIDATE:I = 0x2

.field public static final FLAG_REQUEST_REMEASURE:I = 0x1

.field public static final INVISIBLE:I = 0x0

.field public static final TYPE_FIX_BOTTOM:I = 0x4

.field public static final TYPE_FIX_TOP:I = 0x5

.field public static final TYPE_MOVEABLE_XXX:I = 0x0

.field public static final TYPE_SCROLL_LR:I = 0x6

.field public static final TYPE_SCROLL_RL:I = 0x1

.field public static final TYPE_SPECIAL:I = 0x7

.field public static final VISIBLE:I = 0x1


# instance fields
.field protected alpha:I

.field public borderColor:I

.field public cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/IDrawingCache",
            "<*>;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public duration:Lmaster/flame/danmaku/danmaku/model/Duration;

.field public filterResetFlag:I

.field public flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

.field public index:I

.field public isGuest:Z

.field public isLive:Z

.field public isStar:Z

.field public isStarAdded:Z

.field public lines:[Ljava/lang/String;

.field public mFilterParam:I

.field protected mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private measureResetFlag:I

.field public obj:Ljava/lang/Object;

.field public padding:I

.field public paintHeight:F

.field public paintWidth:F

.field public priority:B

.field public requestFlags:I

.field public rotationY:F

.field public rotationZ:F

.field public starName:Ljava/lang/String;

.field public starUrl:Ljava/lang/String;

.field public text:Ljava/lang/CharSequence;

.field public textColor:I

.field public textShadowColor:I

.field public textSize:F

.field public time:J

.field public underlineColor:I

.field public userHash:Ljava/lang/String;

.field public userId:I

.field public visibility:I

.field private visibleResetFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    .line 90
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 95
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    .line 100
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    .line 105
    iput-byte v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    .line 110
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 115
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 135
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    .line 140
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measureResetFlag:I

    .line 155
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->userId:I

    .line 175
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->alpha:I

    .line 177
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 183
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)I
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .prologue
    .line 204
    invoke-interface {p1, p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->draw(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->alpha:I

    return v0
.end method

.method public abstract getBottom()F
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    return-wide v0
.end method

.method public abstract getLeft()F
.end method

.method public abstract getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
.end method

.method public abstract getRight()F
.end method

.method public getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method public abstract getTop()F
.end method

.method public abstract getType()I
.end method

.method public hasDrawingCache()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPassedFilter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    if-eq v1, v2, :cond_0

    .line 249
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilteredBy(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 260
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLate()Z
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMeasured()Z
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 208
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 209
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measureResetFlag:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutside()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOutside(J)Z
    .locals 5
    .param p1, "ctime"    # J

    .prologue
    .line 239
    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v2

    .line 240
    .local v0, "dtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 222
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibility:I

    if-ne v1, v0, :cond_0

    .line 223
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    if-ne v1, v2, :cond_0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeOut()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTimeOut(J)Z
    .locals 5
    .param p1, "ctime"    # J

    .prologue
    .line 231
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "fromWorkerThread"    # Z

    .prologue
    .line 213
    invoke-interface {p1, p0, p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measureResetFlag:I

    .line 215
    return-void
.end method

.method public setDuration(Lmaster/flame/danmaku/danmaku/model/Duration;)V
    .locals 0
    .param p1, "duration"    # Lmaster/flame/danmaku/danmaku/model/Duration;

    .prologue
    .line 200
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 201
    return-void
.end method

.method public setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 0
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 296
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 297
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibility:I

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->visibility:I

    goto :goto_0
.end method
