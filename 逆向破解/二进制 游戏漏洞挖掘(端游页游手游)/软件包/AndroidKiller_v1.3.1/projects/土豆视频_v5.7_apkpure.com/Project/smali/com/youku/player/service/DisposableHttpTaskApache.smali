.class public Lcom/youku/player/service/DisposableHttpTaskApache;
.super Ljava/lang/Thread;
.source "DisposableHttpTaskApache.java"


# static fields
.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final TIME_OUT:I = 0x1388


# instance fields
.field private requestMethod:Ljava/lang/String;

.field private requestSumary:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "DisposableHttpTaskApache"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->url:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestSumary"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/youku/player/service/DisposableHttpTaskApache;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->tag:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestSumary:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private getRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 56
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "isSuccess":Z
    const-string/jumbo v8, "unknown"

    .line 60
    .local v8, "resultDetail":Ljava/lang/String;
    sget-object v9, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disposable:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 66
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 68
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v9, 0x1388

    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    const/16 v9, 0x1388

    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 74
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->url:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/youku/player/service/DisposableHttpTaskApache;->getRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    .line 75
    .local v5, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v9, "User-Agent"

    sget-object v10, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 77
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 79
    .local v6, "response":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_2

    const/4 v4, 0x1

    .line 80
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    sget-object v9, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disposable result url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6    # "response":I
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestSumary:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestSumary:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v4, :cond_3

    const-string v9, " \u6210\u529f"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " !  resultCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u5176\u8bf7\u6c42url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "result":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 96
    invoke-static {v7}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 101
    .end local v7    # "result":Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 79
    .restart local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6    # "response":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 83
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6    # "response":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "got Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    sget-object v9, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    throw v9

    .line 92
    :cond_3
    const-string v9, " \u5931\u8d25"

    goto :goto_2

    .line 99
    .restart local v7    # "result":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTaskApache;->requestMethod:Ljava/lang/String;

    .line 49
    return-void
.end method
