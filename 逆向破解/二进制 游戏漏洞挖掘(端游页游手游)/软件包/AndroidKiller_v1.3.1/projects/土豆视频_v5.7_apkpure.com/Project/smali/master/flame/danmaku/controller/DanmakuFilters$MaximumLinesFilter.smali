.class public Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaximumLinesFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mMaximumLinesPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lines"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "willHit"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "filtered":Z
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;->mMaximumLinesPairs:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;->mMaximumLinesPairs:Ljava/util/Map;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 474
    .local v1, "maxLines":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p2, v2, :cond_1

    const/4 v0, 0x1

    .line 475
    :goto_0
    if-eqz v0, :cond_0

    .line 476
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 479
    .end local v1    # "maxLines":Ljava/lang/Integer;
    :cond_0
    return v0

    .line 474
    .restart local v1    # "maxLines":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;->mMaximumLinesPairs:Ljava/util/Map;

    .line 490
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;->setData(Ljava/util/Map;)V

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;->mMaximumLinesPairs:Ljava/util/Map;

    .line 485
    return-void
.end method
