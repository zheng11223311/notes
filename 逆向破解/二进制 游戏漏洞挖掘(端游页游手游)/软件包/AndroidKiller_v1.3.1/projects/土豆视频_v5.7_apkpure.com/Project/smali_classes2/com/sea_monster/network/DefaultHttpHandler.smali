.class public Lcom/sea_monster/network/DefaultHttpHandler;
.super Ljava/lang/Object;
.source "DefaultHttpHandler.java"

# interfaces
.implements Lcom/sea_monster/network/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;
    }
.end annotation


# instance fields
.field client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    iput-object p1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->context:Landroid/content/Context;

    .line 73
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 75
    .local v4, "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    .line 76
    .local v3, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    const/16 v7, 0x50

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 77
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 79
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 81
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 82
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 83
    const/4 v5, 0x4

    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v5, 0x6

    invoke-direct {v0, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 85
    .local v0, "bean":Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 86
    const/16 v5, 0x2000

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 89
    invoke-static {v2, v10}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 91
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 93
    .local v1, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v5, p0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 94
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 8

    .prologue
    .line 180
    iget-object v4, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;>;"
    iget-object v4, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;

    .line 190
    .local v2, "request":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;"
    invoke-virtual {v2}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {v2}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v2}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getRequest()Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v4

    new-instance v5, Lcom/sea_monster/exception/InternalException;

    const v6, -0xefff

    const-string v7, "Request Canceled"

    invoke-direct {v5, v6, v7}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sea_monster/network/AbstractHttpRequest;->cancelRequest(Lcom/sea_monster/exception/BaseException;)V

    goto :goto_1

    .line 197
    .end local v2    # "request":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;"
    :cond_3
    iget-object v4, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 198
    return-void
.end method

.method public cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "id":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<*>;"
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;

    .line 168
    .local v0, "request":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<*>;"
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v0}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getRequest()Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/exception/InternalException;

    const-string v3, "Request Canceled"

    invoke-direct {v2, v3}, Lcom/sea_monster/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sea_monster/network/AbstractHttpRequest;->cancelRequest(Lcom/sea_monster/exception/BaseException;)V

    goto :goto_0
.end method

.method protected final createHttpParams(I)Lorg/apache/http/params/HttpParams;
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    const/16 v3, 0x7530

    const/16 v2, 0x4e20

    const/16 v1, 0x2710

    .line 97
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 99
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 103
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 107
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final createHttpParams(ILjava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "proxyUri"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/16 v5, 0x7530

    const/16 v4, 0x4e20

    const/16 v3, 0x2710

    .line 120
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 122
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v0, "host":Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 138
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 139
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 143
    :goto_0
    return-object v1

    .line 129
    :pswitch_0
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public executeRequest(Lcom/sea_monster/network/AbstractHttpRequest;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    new-instance v0, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;

    invoke-direct {v0, p0, p1}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;-><init>(Lcom/sea_monster/network/DefaultHttpHandler;Lcom/sea_monster/network/AbstractHttpRequest;)V

    .line 151
    .local v0, "runnable":Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;, "Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable<TT;>;"
    iget-object v2, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 162
    :goto_0
    invoke-virtual {p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v1

    return v1

    .line 153
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/network/DefaultHttpHandler;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public executeRequestSync(Lcom/sea_monster/network/AbstractHttpRequest;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/BaseException;
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    const/16 v16, 0x0

    .line 396
    .local v16, "port":I
    const/4 v10, 0x0

    .line 397
    .local v10, "host":Ljava/lang/String;
    const/16 v21, 0x0

    .line 399
    .local v21, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->obtainRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sea_monster/exception/PackException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v25

    .line 406
    .local v25, "uriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "connectivity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 408
    .local v13, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v26

    sget-object v27, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 409
    :cond_0
    new-instance v26, Lcom/sea_monster/exception/InternalException;

    const v27, -0xffff

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 400
    .end local v13    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v25    # "uriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v8

    .line 401
    .local v8, "e":Lcom/sea_monster/exception/InternalException;
    throw v8

    .line 402
    .end local v8    # "e":Lcom/sea_monster/exception/InternalException;
    :catch_1
    move-exception v8

    .line 403
    .local v8, "e":Lcom/sea_monster/exception/PackException;
    throw v8

    .line 412
    .end local v8    # "e":Lcom/sea_monster/exception/PackException;
    .restart local v13    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v25    # "uriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v19

    .line 413
    .local v19, "proxySelector":Ljava/net/ProxySelector;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v17

    .line 414
    .local v17, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 415
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/net/Proxy;

    .line 416
    .local v18, "proxy":Ljava/net/Proxy;
    invoke-virtual/range {v18 .. v18}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v26

    if-eqz v26, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 417
    invoke-virtual/range {v18 .. v18}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v22

    check-cast v22, Ljava/net/InetSocketAddress;

    .line 418
    .local v22, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v22 .. v22}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    .line 419
    invoke-virtual/range {v22 .. v22}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    .line 425
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "proxy":Ljava/net/Proxy;
    .end local v22    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_3
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 427
    .local v7, "currentNetworkType":I
    if-nez v7, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_7

    if-lez v16, :cond_7

    .line 428
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v10, v1}, Lcom/sea_monster/network/DefaultHttpHandler;->createHttpParams(ILjava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 432
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getResStream()Ljava/io/InputStream;

    move-result-object v26

    if-eqz v26, :cond_4

    if-nez v7, :cond_4

    .line 433
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    const-string v27, "http.socket.timeout"

    const/16 v28, 0x7530

    invoke-interface/range {v26 .. v28}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 436
    :cond_4
    const-string v26, "Accept-Encoding"

    const-string v27, "gzip"

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 439
    .local v6, "context":Lorg/apache/http/protocol/HttpContext;
    const/4 v4, 0x0

    .line 442
    .local v4, "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    :try_start_1
    const-string v26, "http.authscheme-registry"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v6, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v26, "http.cookiespec-registry"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v6, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v26, "http.cookie-store"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v6, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v26, "http.auth.credentials-provider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v6, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 449
    .local v20, "response":Lorg/apache/http/HttpResponse;
    const-string v26, "http.connection"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    move-object v4, v0

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v26

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/sea_monster/network/parser/IEntityParser;->onHeaderParsed([Lorg/apache/http/Header;)V

    .line 453
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 454
    const-string v26, "Content-Length"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 455
    .local v12, "lenHeader":Lorg/apache/http/Header;
    if-eqz v12, :cond_5

    .line 456
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 457
    .local v14, "length":J
    const-wide/16 v26, 0x4e20

    cmp-long v26, v14, v26

    if-lez v26, :cond_5

    .line 458
    instance-of v0, v4, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 460
    const/16 v24, 0x0

    .line 461
    .local v24, "timeout":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_9

    .line 462
    const-wide/16 v26, 0x4e20

    div-long v26, v14, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    .line 463
    const/16 v26, 0x2710

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 469
    :goto_1
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->setSocketTimeout(I)V

    .line 474
    .end local v14    # "length":J
    .end local v24    # "timeout":I
    :cond_5
    const-string v26, "Content-Encoding"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 476
    .local v5, "codingHeader":Lorg/apache/http/Header;
    if-eqz v5, :cond_b

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    const-string v27, "gzip"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v26

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getStatusCallback()Lcom/sea_monster/network/StatusCallback;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/sea_monster/network/parser/IEntityParser;->parseGzip(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 519
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 522
    if-eqz v4, :cond_6

    .line 523
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 525
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    const-wide/16 v28, 0x0

    sget-object v27, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 528
    .end local v5    # "codingHeader":Lorg/apache/http/Header;
    .end local v12    # "lenHeader":Lorg/apache/http/Header;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "result":Ljava/lang/Object;, "TT;"
    :goto_3
    return-object v21

    .line 430
    .end local v4    # "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    .end local v6    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v21    # "result":Ljava/lang/Object;, "TT;"
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sea_monster/network/DefaultHttpHandler;->createHttpParams(I)Lorg/apache/http/params/HttpParams;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_0

    .line 463
    .restart local v4    # "adapter":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    .restart local v6    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v12    # "lenHeader":Lorg/apache/http/Header;
    .restart local v14    # "length":J
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "timeout":I
    :cond_8
    const/16 v24, 0x2710

    goto :goto_1

    .line 466
    :cond_9
    const-wide/16 v26, 0x2710

    :try_start_3
    div-long v26, v14, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    .line 467
    const/16 v26, 0x7530

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    :goto_4
    goto/16 :goto_1

    :cond_a
    const/16 v24, 0x7530

    goto :goto_4

    .line 479
    .end local v14    # "length":J
    .end local v24    # "timeout":I
    .restart local v5    # "codingHeader":Lorg/apache/http/Header;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getParser()Lcom/sea_monster/network/parser/IEntityParser;

    move-result-object v26

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getStatusCallback()Lcom/sea_monster/network/StatusCallback;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/sea_monster/network/parser/IEntityParser;->parse(Lorg/apache/http/HttpEntity;Lcom/sea_monster/network/StatusCallback;)Ljava/lang/Object;

    move-result-object v21

    goto :goto_2

    .line 482
    .end local v5    # "codingHeader":Lorg/apache/http/Header;
    .end local v12    # "lenHeader":Lorg/apache/http/Header;
    :cond_c
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 483
    new-instance v9, Lcom/sea_monster/exception/InternalException;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    .line 485
    .local v9, "exception":Lcom/sea_monster/exception/InternalException;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 487
    .local v23, "statue":I
    throw v9
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/sea_monster/exception/ParseException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/sea_monster/exception/InternalException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    .end local v9    # "exception":Lcom/sea_monster/exception/InternalException;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "statue":I
    :catch_2
    move-exception v8

    .line 491
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_4
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 520
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 522
    if-eqz v4, :cond_d

    .line 523
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 525
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v27

    const-wide/16 v28, 0x0

    sget-object v30, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v27 .. v30}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    throw v26

    .line 521
    .restart local v5    # "codingHeader":Lorg/apache/http/Header;
    .restart local v12    # "lenHeader":Lorg/apache/http/Header;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v26

    :try_start_6
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v26

    .line 493
    .end local v5    # "codingHeader":Lorg/apache/http/Header;
    .end local v12    # "lenHeader":Lorg/apache/http/Header;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 494
    .local v8, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_7
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 496
    .end local v8    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_4
    move-exception v8

    .line 497
    .local v8, "e":Ljava/net/ConnectException;
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 499
    .end local v8    # "e":Ljava/net/ConnectException;
    :catch_5
    move-exception v8

    .line 500
    .local v8, "e":Ljava/net/SocketTimeoutException;
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 502
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v8

    .line 503
    .local v8, "e":Ljava/net/SocketException;
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 505
    .end local v8    # "e":Ljava/net/SocketException;
    :catch_7
    move-exception v8

    .line 506
    .local v8, "e":Ljava/io/IOException;
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 508
    .end local v8    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 509
    .local v8, "e":Lcom/sea_monster/exception/ParseException;
    throw v8

    .line 511
    .end local v8    # "e":Lcom/sea_monster/exception/ParseException;
    :catch_9
    move-exception v8

    .line 512
    .local v8, "e":Lcom/sea_monster/exception/InternalException;
    throw v8

    .line 513
    .end local v8    # "e":Lcom/sea_monster/exception/InternalException;
    :catch_a
    move-exception v8

    .line 514
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 515
    new-instance v26, Lcom/sea_monster/exception/InternalException;

    const v27, -0xffff

    const-string v28, "NullPointerException"

    invoke-direct/range {v26 .. v28}, Lcom/sea_monster/exception/InternalException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 516
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v8

    .line 517
    .local v8, "e":Ljava/lang/IllegalStateException;
    new-instance v26, Lcom/sea_monster/exception/HttpException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/sea_monster/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sea_monster/network/AbstractHttpRequest;->onFailure(Lcom/sea_monster/exception/BaseException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 520
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->requestMap:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sea_monster/network/AbstractHttpRequest;->getCallId()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 522
    if-eqz v4, :cond_e

    .line 523
    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->releaseConnection()V

    .line 525
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sea_monster/network/DefaultHttpHandler;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    const-wide/16 v28, 0x0

    sget-object v27, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_3

    .line 521
    :catchall_2
    move-exception v26

    :try_start_9
    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v26

    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catchall_3
    move-exception v26

    :try_start_a
    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v26
.end method
