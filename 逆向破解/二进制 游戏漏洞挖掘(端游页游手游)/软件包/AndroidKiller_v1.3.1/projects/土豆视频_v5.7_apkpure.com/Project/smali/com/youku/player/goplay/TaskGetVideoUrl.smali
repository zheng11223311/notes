.class public Lcom/youku/player/goplay/TaskGetVideoUrl;
.super Lcom/baseproject/network/YoukuAsyncTask;
.source "TaskGetVideoUrl.java"


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

.field private exceptionString:Ljava/lang/String;

.field private fail:I

.field private message:I

.field private requrl:Ljava/lang/String;

.field private responseString:Ljava/lang/String;

.field private success:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 48
    invoke-direct {p0}, Lcom/baseproject/network/YoukuAsyncTask;-><init>()V

    .line 29
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->TIMEOUT:I

    .line 34
    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->requrl:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->success:I

    .line 51
    iput v1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    .line 52
    return-void
.end method


# virtual methods
.method public connectAPI()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/16 v14, 0x190

    .line 81
    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    .line 82
    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    .line 84
    const/4 v9, 0x0

    .line 86
    .local v9, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 87
    .local v5, "is":Ljava/io/InputStream;
    const/4 v8, -0x1

    .line 88
    .local v8, "response":I
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->requrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :try_start_1
    const-string v11, "TaskGetVideoUrl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connectAPI url "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 91
    .local v2, "conn":Ljava/net/URLConnection;
    const/16 v11, 0x3a98

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 92
    const/16 v11, 0x3a98

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 93
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 94
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 95
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 96
    const-string v11, "GET"

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 98
    const-string v11, "Cookie"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCookie()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v11, "User-Agent"

    sget-object v12, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v11, "TaskGetVideoUrl"

    const-string v12, "before httpConn.connect()"

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    const-string v11, "TaskGetVideoUrl"

    const-string v12, "after httpConn.connect()"

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 106
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_5

    .line 108
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 109
    invoke-static {v5}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v11

    iget-object v11, v11, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v11, v6}, Lcom/youku/player/apiservice/PlantformController;->processRawData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    .line 112
    new-instance v7, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "object":Lorg/json/JSONObject;
    const-string v11, "error_code"

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "code":I
    if-nez v1, :cond_1

    .line 115
    const-string v11, "code"

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 117
    :cond_1
    const/16 v11, -0x64

    if-eq v1, v11, :cond_2

    const/16 v11, -0x65

    if-eq v1, v11, :cond_2

    const/16 v11, -0x66

    if-eq v1, v11, :cond_2

    const/16 v11, -0x68

    if-eq v1, v11, :cond_2

    const/16 v11, -0x69

    if-eq v1, v11, :cond_2

    const/16 v11, -0x6a

    if-eq v1, v11, :cond_2

    const/16 v11, -0x6b

    if-eq v1, v11, :cond_2

    const/16 v11, -0x6c

    if-eq v1, v11, :cond_2

    const/16 v11, -0x70

    if-eq v1, v11, :cond_2

    const/16 v11, -0x7d

    if-eq v1, v11, :cond_2

    const/16 v11, -0x7e

    if-eq v1, v11, :cond_2

    const/16 v11, -0x7f

    if-eq v1, v11, :cond_2

    const/16 v11, -0x80

    if-eq v1, v11, :cond_2

    const/16 v11, -0xca

    if-eq v1, v11, :cond_2

    const/16 v11, -0xcc

    if-eq v1, v11, :cond_2

    const/16 v11, -0x12d

    if-eq v1, v11, :cond_2

    const/16 v11, -0x134

    if-eq v1, v11, :cond_2

    if-ne v1, v14, :cond_4

    .line 121
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 122
    iget v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    iput v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    .line 127
    :goto_0
    if-ne v1, v14, :cond_3

    .line 128
    const-string v11, "2"

    invoke-static {v11}, Lcom/youku/player/Track;->setVideoReqError(Ljava/lang/String;)V

    .end local v1    # "code":I
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    move-object v9, v10

    .line 153
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 124
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "code":I
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "jsonString":Ljava/lang/String;
    .restart local v7    # "object":Lorg/json/JSONObject;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_4
    iget v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->success:I

    iput v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    .line 125
    const-string v11, "200"

    sput-object v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 134
    .end local v1    # "code":I
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v9, v10

    .line 135
    .end local v10    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_3
    const-string v11, "-998"

    sput-object v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    .line 137
    iget v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    iput v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    .line 138
    const-string v11, "1"

    invoke-static {v11}, Lcom/youku/player/Track;->setVideoReqError(Ljava/lang/String;)V

    .line 139
    sget-object v11, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_5
    :try_start_2
    const-string v11, "2"

    invoke-static {v11}, Lcom/youku/player/Track;->setVideoReqError(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v11

    iget-object v11, v11, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v11, p0, v8, v4}, Lcom/youku/player/apiservice/PlantformController;->processHttpError(Lcom/youku/player/goplay/TaskGetVideoUrl;ILjava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 140
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v4    # "httpConn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v3

    move-object v9, v10

    .line 141
    .end local v10    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/io/IOException;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_4
    const-string v11, "-998"

    sput-object v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    .line 143
    iget v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    iput v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    .line 144
    const-string v11, "1"

    invoke-static {v11}, Lcom/youku/player/Track;->setVideoReqError(Ljava/lang/String;)V

    .line 145
    sget-object v11, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    const-string v11, "-998"

    sput-object v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    .line 149
    iget v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    iput v11, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    .line 150
    const-string v11, "1"

    invoke-static {v11}, Lcom/youku/player/Track;->setVideoReqError(Ljava/lang/String;)V

    .line 151
    sget-object v11, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_5

    .line 140
    :catch_4
    move-exception v3

    goto :goto_4

    .line 134
    :catch_5
    move-exception v3

    goto/16 :goto_3
.end method

.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/youku/player/goplay/TaskGetVideoUrl;->connectAPI()V

    .line 61
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskGetVideoUrl;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->requrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 68
    .local v1, "message":Landroid/os/Message;
    :try_start_0
    iget v2, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->message:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 69
    new-instance v2, Lcom/youku/player/goplay/VideoInfoReasult;

    iget-object v3, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/youku/player/goplay/VideoInfoReasult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u89c6\u9891\u6570\u636e\u8fd4\u56de:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->responseString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/baseproject/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->exceptionString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskGetVideoUrl;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method

.method public setFail(I)V
    .locals 0
    .param p1, "fail"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->fail:I

    .line 46
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->requrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/youku/player/goplay/TaskGetVideoUrl;->success:I

    .line 42
    return-void
.end method
