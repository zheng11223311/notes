.class public abstract Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field public mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter<TT;>;"
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->mBlackList:Ljava/util/List;

    .line 264
    return-void
.end method

.method private addToBlackList(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter<TT;>;"
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->reset()V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    :cond_0
    return-void

    .line 282
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 283
    .local v0, "i":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;->addToBlackList(Ljava/lang/Object;)V

    goto :goto_0
.end method
