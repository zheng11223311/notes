.class public Lcom/youku/network/DisposableHttpTask;
.super Ljava/lang/Thread;
.source "DisposableHttpTask.java"


# static fields
.field private static final AD_TAG:Ljava/lang/String; = "advertisement"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "DisposableHttpTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/youku/network/DisposableHttpTask;->url:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 34
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 35
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/youku/network/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "uri":Ljava/net/URL;
    const-string v4, "advertisement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "advertisement exposure url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/network/DisposableHttpTask;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 43
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "User-Agent"

    sget-object v5, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 46
    .local v2, "response":I
    const-string v4, "advertisement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the response of advertisement exposure url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "response":I
    .end local v3    # "uri":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method
