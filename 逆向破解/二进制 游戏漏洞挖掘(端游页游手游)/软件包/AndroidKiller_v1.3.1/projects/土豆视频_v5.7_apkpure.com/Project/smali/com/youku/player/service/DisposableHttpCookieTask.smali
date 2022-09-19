.class public Lcom/youku/player/service/DisposableHttpCookieTask;
.super Ljava/lang/Thread;
.source "DisposableHttpCookieTask.java"


# instance fields
.field private requestSumary:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestSumary"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/youku/player/service/DisposableHttpCookieTask;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 45
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "isSuccess":Z
    const-string/jumbo v6, "unknown"

    .line 50
    .local v6, "resultDetail":Ljava/lang/String;
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 51
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .local v7, "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 56
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 57
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 58
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    const-string v8, "User-Agent"

    sget-object v11, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v2, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    const-string v8, "Cookie"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 65
    .local v4, "response":I
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_3

    move v3, v9

    .line 66
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    sget-object v8, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":I
    .end local v7    # "u":Ljava/net/URL;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u53d1\u9001\u5e7f\u544a\u7edf\u8ba1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_4

    const-string v8, " \u6210\u529f"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !  resultCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u5176\u8bf7\u6c42url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "result":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 82
    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v4    # "response":I
    .restart local v7    # "u":Ljava/net/URL;
    :cond_3
    move v3, v10

    .line 65
    goto :goto_0

    .line 69
    .end local v4    # "response":I
    .end local v7    # "u":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got Exception e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    sget-object v8, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8

    .line 78
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    :cond_4
    const-string v8, " \u5931\u8d25"

    goto :goto_2

    .line 85
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/youku/player/service/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
