.class public Lcom/youku/player/danmaku/TaskGetDanmakuInfo;
.super Lcom/baseproject/network/YoukuAsyncTask;
.source "TaskGetDanmakuInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/network/YoukuAsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskGetVideoUrl"


# instance fields
.field public final TIMEOUT:I

.field private fail:I

.field private message:I

.field private requrl:Ljava/lang/String;

.field private responseString:Ljava/lang/String;

.field private success:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Lcom/baseproject/network/YoukuAsyncTask;-><init>()V

    .line 27
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->TIMEOUT:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->responseString:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->requrl:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->success:I

    .line 49
    iput v1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    .line 50
    return-void
.end method

.method private getDanmakuError(Ljava/lang/String;)I
    .locals 5
    .param p1, "responseString"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, -0x1

    .line 128
    .local v0, "data":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "error"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 135
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public connectAPI()V
    .locals 13

    .prologue
    .line 78
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->responseString:Ljava/lang/String;

    .line 80
    const/4 v8, 0x0

    .line 82
    .local v8, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 83
    .local v5, "is":Ljava/io/InputStream;
    const/4 v7, -0x1

    .line 84
    .local v7, "response":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->requrl:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    .end local v8    # "url":Ljava/net/URL;
    .local v9, "url":Ljava/net/URL;
    :try_start_1
    const-string v10, "TaskGetVideoUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectAPI url "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 87
    .local v2, "conn":Ljava/net/URLConnection;
    const/16 v10, 0x3a98

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 88
    const/16 v10, 0x3a98

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 89
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 90
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 91
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 92
    const-string v10, "GET"

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 94
    const-string v10, "Cookie"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string v10, "User-Agent"

    sget-object v11, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 101
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 104
    invoke-static {v5}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v10

    iget-object v10, v10, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v10, v6}, Lcom/youku/player/apiservice/PlantformController;->processRawData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->responseString:Ljava/lang/String;

    .line 107
    iget-object v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->responseString:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->getDanmakuError(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, "code":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_2

    .line 109
    iget v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    iput v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I

    .end local v1    # "code":I
    .end local v6    # "jsonString":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v8, v9

    .line 123
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 111
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "code":I
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "jsonString":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    iget v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->success:I

    iput v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 116
    .end local v1    # "code":I
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v6    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 117
    .end local v9    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_2
    iget v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    iput v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I

    goto :goto_1

    .line 118
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    iget v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    iput v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I

    goto :goto_1

    .line 120
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    iget v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    iput v10, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I

    goto :goto_1

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_4

    .line 118
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v3

    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_3

    .line 116
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->connectAPI()V

    .line 59
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->requrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "message":Landroid/os/Message;
    :try_start_0
    iget v1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->message:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    iget-object v1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->responseString:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/baseproject/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method

.method public setFail(I)V
    .locals 0
    .param p1, "fail"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->fail:I

    .line 44
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->requrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->success:I

    .line 40
    return-void
.end method
