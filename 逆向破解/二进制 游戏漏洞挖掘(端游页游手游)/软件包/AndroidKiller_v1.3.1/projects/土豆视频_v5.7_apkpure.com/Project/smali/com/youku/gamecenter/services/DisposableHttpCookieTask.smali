.class public Lcom/youku/gamecenter/services/DisposableHttpCookieTask;
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
    .line 30
    const-string v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestSumary"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 94
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 95
    const-string v2, ""

    .line 102
    :goto_0
    return-object v2

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "s":Landroid/content/SharedPreferences;
    const-string v2, "cookie"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v1    # "s":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 46
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "isSuccess":Z
    const-string/jumbo v6, "unknown"

    .line 51
    .local v6, "resultDetail":Ljava/lang/String;
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    .local v7, "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 57
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 58
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 59
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    const-string v8, "User-Agent"

    sget-object v11, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v2, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/youku/gamecenter/services/URLContainer;->isLogined()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    const-string v8, "Cookie"

    invoke-direct {p0}, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->getCookie()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 64
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 66
    .local v4, "response":I
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_3

    move v3, v9

    .line 67
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

    .line 69
    const-string v8, "PlayFlow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->url:Ljava/lang/String;

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

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":I
    .end local v7    # "u":Ljava/net/URL;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u53d1\u9001\u4e00\u6b21\u6027\u7edf\u8ba1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->requestSumary:Ljava/lang/String;

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

    iget-object v9, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "result":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 84
    iget-object v8, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v4    # "response":I
    .restart local v7    # "u":Ljava/net/URL;
    :cond_3
    move v3, v10

    .line 66
    goto :goto_0

    .line 71
    .end local v4    # "response":I
    .end local v7    # "u":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 72
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

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8

    .line 80
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    :cond_4
    const-string v8, " \u5931\u8d25"

    goto :goto_2

    .line 87
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/youku/gamecenter/services/DisposableHttpCookieTask;->tag:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
