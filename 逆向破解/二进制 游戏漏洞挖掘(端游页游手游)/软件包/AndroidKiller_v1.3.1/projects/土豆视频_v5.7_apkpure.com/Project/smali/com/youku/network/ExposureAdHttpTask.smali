.class public Lcom/youku/network/ExposureAdHttpTask;
.super Ljava/lang/Thread;
.source "ExposureAdHttpTask.java"


# static fields
.field private static final AD_TAG:Ljava/lang/String; = "advertisement"


# instance fields
.field private key:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/youku/network/ExposureAdHttpTask;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/youku/network/ExposureAdHttpTask;->key:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 37
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    :try_start_0
    iget-object v5, p0, Lcom/youku/network/ExposureAdHttpTask;->key:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "localAdCookie":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/youku/network/ExposureAdHttpTask;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, "uri":Ljava/net/URL;
    const-string v5, "advertisement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "advertisement exposure url\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/network/ExposureAdHttpTask;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 45
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "User-Agent"

    sget-object v6, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 48
    const-string v6, "Cookie"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 56
    .local v3, "response":I
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_1

    const/16 v5, 0x130

    if-ne v3, v5, :cond_2

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/youku/network/ExposureAdHttpTask;->key:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/youku/network/HttpRequestManager;->updateADCookie(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "localAdCookie":Ljava/lang/String;
    .end local v3    # "response":I
    .end local v4    # "uri":Ljava/net/URL;
    :cond_2
    :goto_2
    return-void

    .line 48
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "localAdCookie":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URL;
    :cond_3
    sget-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    const-string v5, "Cookie"

    invoke-virtual {v0, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 58
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "localAdCookie":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    throw v5
.end method
