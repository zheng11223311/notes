.class public Lcom/youku/player/service/DisposableHttpTask;
.super Ljava/lang/Thread;
.source "DisposableHttpTask.java"


# static fields
.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"


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
    .line 35
    const-string v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTask;->url:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestSumary"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Lcom/youku/player/service/DisposableHttpTask;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTask;->tag:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/youku/player/service/DisposableHttpTask;->requestSumary:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 55
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "isSuccess":Z
    const-string/jumbo v5, "unknown"

    .line 59
    .local v5, "resultDetail":Ljava/lang/String;
    sget-object v7, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DisposableHttpTask:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 65
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/youku/player/service/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v6, "uri":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 69
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lcom/youku/player/service/DisposableHttpTask;->requestMethod:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    iget-object v7, p0, Lcom/youku/player/service/DisposableHttpTask;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v7, "User-Agent"

    sget-object v8, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 75
    .local v3, "response":I
    const/16 v7, 0xc8

    if-ne v3, v7, :cond_3

    const/4 v2, 0x1

    .line 76
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    sget-object v7, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v6    # "uri":Ljava/net/URL;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/youku/player/service/DisposableHttpTask;->requestSumary:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpTask;->requestSumary:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    const-string v7, " \u6210\u529f"

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " !  resultCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u5176\u8bf7\u6c42url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "result":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 92
    invoke-static {v4}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 97
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 75
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "response":I
    .restart local v6    # "uri":Ljava/net/URL;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v6    # "uri":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    sget-object v7, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    throw v7

    .line 88
    :cond_4
    const-string v7, " \u5931\u8d25"

    goto :goto_2

    .line 95
    .restart local v4    # "result":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpTask;->requestMethod:Ljava/lang/String;

    .line 48
    return-void
.end method
