.class public Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantityDanmakuFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field protected mMaximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 111
    return-void
.end method

.method private needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalSizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    if-eq v2, v0, :cond_2

    :cond_0
    move v0, v1

    .line 134
    :cond_1
    :goto_0
    return v0

    .line 124
    :cond_2
    iget v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-lt p3, v2, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    .line 125
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v2, v4

    iget-object v4, p6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v6, 0x14

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 126
    :cond_3
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_4
    iget v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-le p2, v2, :cond_5

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_5
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move v0, v1

    .line 134
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 165
    return-void
.end method

.method public declared-synchronized filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v0

    .line 141
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 142
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return v0

    .line 140
    .end local v0    # "filtered":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setData(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Integer;

    .prologue
    .line 149
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 150
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-eq v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    goto :goto_0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->setData(Ljava/lang/Integer;)V

    return-void
.end method
