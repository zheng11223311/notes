.class public Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedTimeFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mMaxTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 175
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J

    .line 173
    return-void
.end method

.method private declared-synchronized needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z

    .prologue
    const/4 v2, 0x0

    .line 179
    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 183
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p4, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v0, v4, v6

    .line 184
    .local v0, "elapsedTime":J
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "elapsedTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 213
    return-void
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 193
    invoke-direct/range {p0 .. p5}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    .line 194
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 195
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 197
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    .prologue
    .line 208
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 203
    return-void
.end method
