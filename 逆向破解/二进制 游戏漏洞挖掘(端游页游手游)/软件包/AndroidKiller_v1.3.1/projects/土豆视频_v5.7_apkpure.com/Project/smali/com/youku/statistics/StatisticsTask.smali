.class public Lcom/youku/statistics/StatisticsTask;
.super Landroid/os/AsyncTask;
.source "StatisticsTask.java"


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


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isNeedLogin:Z

.field private mContext:Landroid/content/Context;

.field private mIsFailRetry:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/statistics/StatisticsTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/statistics/StatisticsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->isNeedLogin:Z

    .line 39
    iput-object p1, p0, Lcom/youku/statistics/StatisticsTask;->mUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/statistics/StatisticsTask;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isNeedLogin"    # Z
    .param p4, "isFailRetry"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->isNeedLogin:Z

    .line 52
    iput-object p1, p0, Lcom/youku/statistics/StatisticsTask;->mUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/statistics/StatisticsTask;->mContext:Landroid/content/Context;

    .line 54
    iput-boolean p4, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    .line 55
    iput-boolean p3, p0, Lcom/youku/statistics/StatisticsTask;->isNeedLogin:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isFailRetry"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/statistics/StatisticsTask;->isNeedLogin:Z

    .line 45
    iput-boolean p2, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    .line 46
    iput-object p1, p0, Lcom/youku/statistics/StatisticsTask;->mUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/statistics/StatisticsTask;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 111
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/statistics/StatisticsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 65
    .local v1, "isNeedRetry":Z
    :try_start_0
    invoke-direct {p0}, Lcom/youku/statistics/StatisticsTask;->disableConnectionReuseIfNecessary()V

    .line 67
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/youku/statistics/StatisticsTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 70
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const/16 v5, 0x3a98

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    const-string v5, "User-Agent"

    sget-object v6, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v5, p0, Lcom/youku/statistics/StatisticsTask;->isNeedLogin:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "Cookie"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 77
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 78
    .local v2, "responseCode":I
    sget-object v5, Lcom/youku/statistics/StatisticsTask;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean v5, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    if-eqz v5, :cond_1

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_1

    .line 80
    const/4 v1, 0x1

    .line 82
    :cond_1
    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 97
    iget-object v5, p0, Lcom/youku/statistics/StatisticsTask;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/statistics/StatisticsTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/youku/statistics/StatisticsDataManager;->write(Ljava/lang/String;Landroid/content/Context;)Z

    .line 98
    sget-object v5, Lcom/youku/statistics/StatisticsTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "vv\u53d1\u9001\u5931\u8d25\uff0c\u5df2\u5b58\u50a8\uff0c\u4e0b\u6b21\u91cd\u8bd5\u3002"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    const/4 v5, 0x0

    return-object v5

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    if-eqz v5, :cond_2

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p0, Lcom/youku/statistics/StatisticsTask;->mIsFailRetry:Z

    if-eqz v5, :cond_2

    .line 92
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method
