.class public Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeDanmakuFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mFilterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public disableType(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public enableType(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 82
    if-eqz p1, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 83
    .local v0, "filtered":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 86
    :cond_0
    return v0

    .line 82
    .end local v0    # "filtered":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->mFilterTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->reset()V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;->enableType(Ljava/lang/Integer;)V

    goto :goto_0
.end method
