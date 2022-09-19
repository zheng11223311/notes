.class Lcom/mobisage/android/MobiSageTrackRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageTrackRunnable.java"


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageTrackMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageTrackMessage;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 29
    :try_start_0
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 30
    .local v4, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 32
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    new-instance v8, Lcom/mobisage/android/SNSSSLSocketFactory;

    invoke-direct {v8}, Lcom/mobisage/android/SNSSSLSocketFactory;-><init>()V

    const/16 v9, 0x1bb

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 34
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 35
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v6, "http.connection.timeout"

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 37
    const-string v6, "http.socket.timeout"

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 38
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 39
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 40
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v5, v2, v4}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 42
    .local v5, "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 44
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 45
    .local v3, "response":Lorg/apache/http/HttpResponse;
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v6, v6, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v7, "StatusCode"

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v6, v6, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v6, :cond_0

    .line 54
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v6, v6, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v7, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v6, v7}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 56
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->run()V

    .line 57
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    :try_start_1
    invoke-static {v6, v7, v8}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_1
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v6, v6, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v6, :cond_0

    .line 54
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v6, v6, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v7, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v6, v7}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v7, v7, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v7, :cond_1

    .line 54
    iget-object v7, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v7, v7, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v8, p0, Lcom/mobisage/android/MobiSageTrackRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v7, v8}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    :cond_1
    throw v6

    .line 50
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
