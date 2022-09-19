.class public Lcom/youku/gamecenter/statistics/GameStatisticsTask;
.super Landroid/os/AsyncTask;
.source "GameStatisticsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFailRetry:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mIsFailRetry:Z

    .line 27
    iput-object p1, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isFailRetry"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mIsFailRetry:Z

    .line 33
    iput-boolean p2, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mIsFailRetry:Z

    .line 34
    iput-object p1, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mUrl:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 91
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "isNeedRetry":Z
    iget-object v5, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v8

    .line 46
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->disableConnectionReuseIfNecessary()V

    .line 48
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "url":Ljava/net/URL;
    const-string v5, "Statistics"

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 52
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    const/16 v5, 0x3a98

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 55
    const-string v5, "User-Agent"

    sget-object v6, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 58
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 59
    .local v2, "responseCode":I
    const-string v5, "Statistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 78
    iget-object v5, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/youku/gamecenter/statistics/StatisticsDataManager;->write(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    iget-boolean v5, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mIsFailRetry:Z

    if-eqz v5, :cond_2

    .line 68
    const/4 v1, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    iget-boolean v5, p0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->mIsFailRetry:Z

    if-eqz v5, :cond_2

    .line 73
    const/4 v1, 0x1

    goto :goto_1
.end method
