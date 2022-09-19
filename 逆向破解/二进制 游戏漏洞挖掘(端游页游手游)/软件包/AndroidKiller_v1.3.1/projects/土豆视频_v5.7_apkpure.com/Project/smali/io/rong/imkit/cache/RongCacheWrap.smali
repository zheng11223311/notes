.class public abstract Lio/rong/imkit/cache/RongCacheWrap;
.super Lio/rong/imkit/cache/RongCache;
.source "RongCacheWrap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rong/imkit/cache/RongCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mContext:Lio/rong/imkit/RongContext;

.field mIsSync:Z


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;I)V
    .locals 1
    .param p1, "context"    # Lio/rong/imkit/RongContext;
    .param p2, "maxSize"    # I

    .prologue
    .line 20
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    invoke-direct {p0, p2}, Lio/rong/imkit/cache/RongCache;-><init>(I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/cache/RongCacheWrap;->mIsSync:Z

    .line 21
    iput-object p1, p0, Lio/rong/imkit/cache/RongCacheWrap;->mContext:Lio/rong/imkit/RongContext;

    .line 22
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-boolean v0, p0, Lio/rong/imkit/cache/RongCacheWrap;->mIsSync:Z

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lio/rong/imkit/cache/RongCacheWrap;->executeCacheProvider(Ljava/lang/Object;)V

    .line 41
    invoke-super {p0, p1}, Lio/rong/imkit/cache/RongCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lio/rong/imkit/cache/RongCacheWrap;->obtainValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public executeCacheProvider(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/rong/imkit/cache/RongCacheWrap;->mContext:Lio/rong/imkit/RongContext;

    new-instance v1, Lio/rong/imkit/cache/RongCacheWrap$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lio/rong/imkit/cache/RongCacheWrap$1;-><init>(Lio/rong/imkit/cache/RongCacheWrap;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Lcom/sea_monster/common/PriorityRunnable;)V

    .line 55
    return-void
.end method

.method protected getContext()Lio/rong/imkit/RongContext;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    iget-object v0, p0, Lio/rong/imkit/cache/RongCacheWrap;->mContext:Lio/rong/imkit/RongContext;

    return-object v0
.end method

.method public isIsSync()Z
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    iget-boolean v0, p0, Lio/rong/imkit/cache/RongCacheWrap;->mIsSync:Z

    return v0
.end method

.method public abstract obtainValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public setIsSync(Z)V
    .locals 0
    .param p1, "isSync"    # Z

    .prologue
    .line 29
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap;, "Lio/rong/imkit/cache/RongCacheWrap<TK;TV;>;"
    iput-boolean p1, p0, Lio/rong/imkit/cache/RongCacheWrap;->mIsSync:Z

    .line 30
    return-void
.end method
