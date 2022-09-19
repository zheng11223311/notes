.class public Lcom/tudou/detail/VideoListCache;
.super Ljava/lang/Object;
.source "VideoListCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/VideoListCache$1;,
        Lcom/tudou/detail/VideoListCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/detail/VideoListCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/tudou/detail/VideoListCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/VideoListCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    .line 21
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/tudou/detail/vo/VideoList;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 39
    :try_start_0
    new-instance v0, Lcom/tudou/detail/VideoListCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tudou/detail/VideoListCache$CacheEntry;-><init>(Lcom/tudou/detail/VideoListCache$1;)V

    .line 40
    .local v0, "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    iput-object p2, v0, Lcom/tudou/detail/VideoListCache$CacheEntry;->videolist:Lcom/tudou/detail/vo/VideoList;

    .line 41
    iget-object v1, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    monitor-exit v2

    .line 43
    return-void

    .line 42
    .end local v0    # "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoList(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;
    .locals 6
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 57
    iget-object v5, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "ret":Lcom/tudou/detail/vo/VideoList;
    :try_start_0
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v3

    .line 60
    .local v3, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v3, :cond_1

    .line 61
    const-string v1, ""

    .line 62
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v4, v3, :cond_2

    .line 63
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v4, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 67
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/VideoListCache$CacheEntry;

    .line 68
    .local v0, "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    if-eqz v0, :cond_1

    .line 69
    iget-object v2, v0, Lcom/tudou/detail/VideoListCache$CacheEntry;->videolist:Lcom/tudou/detail/vo/VideoList;

    .line 72
    .end local v0    # "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    return-object v2

    .line 64
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-eq v4, v3, :cond_3

    sget-object v4, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v4, v3, :cond_0

    .line 65
    :cond_3
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v4, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    goto :goto_0

    .line 73
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "type":Lcom/tudou/android/Youku$VideoType;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getVideoList(Ljava/lang/String;)Lcom/tudou/detail/vo/VideoList;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/VideoListCache$CacheEntry;

    .line 48
    .local v0, "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Lcom/tudou/detail/VideoListCache$CacheEntry;->videolist:Lcom/tudou/detail/vo/VideoList;

    monitor-exit v2

    .line 51
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 53
    .end local v0    # "entry":Lcom/tudou/detail/VideoListCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/tudou/detail/VideoListCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
