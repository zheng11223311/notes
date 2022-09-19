.class Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DanmakuIterator"
.end annotation


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private mIteratorUsed:Z

.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "datas":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-virtual {p0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->setDatas(Ljava/util/Collection;)V

    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 297
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 308
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 310
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->access$0(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->access$1(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->this$0:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->access$0(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;)I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setDatas(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "datas":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    if-eq v0, p1, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    .line 291
    :cond_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
