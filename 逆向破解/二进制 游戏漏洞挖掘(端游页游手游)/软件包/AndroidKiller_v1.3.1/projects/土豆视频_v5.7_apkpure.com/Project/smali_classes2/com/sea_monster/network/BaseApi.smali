.class public Lcom/sea_monster/network/BaseApi;
.super Ljava/lang/Object;
.source "BaseApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/network/BaseApi$DefaultApiReqeust;
    }
.end annotation


# instance fields
.field protected callMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sea_monster/network/ApiCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sea_monster/network/AbstractHttpRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected manager:Lcom/sea_monster/network/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/sea_monster/network/NetworkManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "manager"    # Lcom/sea_monster/network/NetworkManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/sea_monster/network/BaseApi;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public cancelReqeust(Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "callId":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<*>;"
    iget-object v0, p0, Lcom/sea_monster/network/BaseApi;->manager:Lcom/sea_monster/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/sea_monster/network/NetworkManager;->cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V

    .line 63
    return-void
.end method

.method public cancelReqeust(Lcom/sea_monster/network/ApiCallback;)V
    .locals 9
    .param p1, "callback"    # Lcom/sea_monster/network/ApiCallback;

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 67
    .local v5, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest;>;"
    iget-object v8, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    monitor-enter v8

    .line 68
    :try_start_0
    iget-object v7, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 69
    .local v6, "weakCallback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sea_monster/network/ApiCallback;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 70
    iget-object v7, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    goto :goto_0

    .line 73
    .end local v6    # "weakCallback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sea_monster/network/ApiCallback;>;"
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest<*>;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/network/AbstractHttpRequest;

    .line 77
    .local v1, "callId":Lcom/sea_monster/network/AbstractHttpRequest;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v1    # "callId":Lcom/sea_monster/network/AbstractHttpRequest;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest<*>;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 79
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest<*>;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sea_monster/network/AbstractHttpRequest;

    .line 80
    .local v4, "request":Lcom/sea_monster/network/AbstractHttpRequest;
    iget-object v7, p0, Lcom/sea_monster/network/BaseApi;->manager:Lcom/sea_monster/network/NetworkManager;

    invoke-virtual {v7, v4}, Lcom/sea_monster/network/NetworkManager;->cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V

    goto :goto_2

    .line 83
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest<*>;>;"
    .end local v4    # "request":Lcom/sea_monster/network/AbstractHttpRequest;
    :cond_3
    return-void
.end method

.method protected final recordRequest(Ljava/lang/ref/WeakReference;Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 3
    .param p2, "request"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sea_monster/network/ApiCallback;",
            ">;",
            "Lcom/sea_monster/network/AbstractHttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sea_monster/network/ApiCallback;>;"
    iget-object v2, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    monitor-exit v2

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v0    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final releaseRequest(Ljava/lang/ref/WeakReference;Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 5
    .param p2, "request"    # Lcom/sea_monster/network/AbstractHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sea_monster/network/ApiCallback;",
            ">(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;",
            "Lcom/sea_monster/network/AbstractHttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    iget-object v3, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    monitor-enter v3

    .line 47
    if-nez p1, :cond_0

    .line 48
    :try_start_0
    const-string v2, "Api"

    const-string v4, "Null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, "callIds":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 53
    .local v1, "index":I
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/sea_monster/network/BaseApi;->callMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v1    # "index":I
    :cond_1
    monitor-exit v3

    .line 59
    return-void

    .line 58
    .end local v0    # "callIds":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/AbstractHttpRequest;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
