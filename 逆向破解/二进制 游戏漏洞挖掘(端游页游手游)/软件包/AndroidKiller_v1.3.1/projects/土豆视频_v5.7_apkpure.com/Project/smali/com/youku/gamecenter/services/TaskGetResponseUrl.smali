.class public Lcom/youku/gamecenter/services/TaskGetResponseUrl;
.super Lcom/youku/gamecenter/services/YoukuAsyncTask;
.source "TaskGetResponseUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/gamecenter/services/YoukuAsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_FAILED:Ljava/lang/String; = "failed"

.field public static final STATUS_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "PlayFlow"


# instance fields
.field public final TIMEOUT:I

.field public errorcode:I

.field private exceptionString:Ljava/lang/String;

.field private fail:I

.field private isPost:Z

.field private message:I

.field private requrl:Ljava/lang/String;

.field private responseString:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field private success:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;-><init>(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "requrl"    # Ljava/lang/String;
    .param p2, "isPost"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    .line 27
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->TIMEOUT:I

    .line 32
    iput-object v2, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    iput-object v2, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->isPost:Z

    .line 59
    iput-object p1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->requrl:Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->isPost:Z

    .line 61
    iput v1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    .line 62
    iput v1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    .line 63
    return-void
.end method

.method private connectAPI()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 87
    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 88
    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    .line 90
    const/4 v9, 0x0

    .line 91
    .local v9, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 92
    .local v4, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v8, -0x1

    .line 94
    .local v8, "response":I
    const/4 v5, 0x0

    .line 95
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->requrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 97
    .local v1, "conn":Ljava/net/URLConnection;
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 99
    const-string v11, "User-Agent"

    sget-object v12, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v1, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 103
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    iget-boolean v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->isPost:Z

    if-eqz v11, :cond_2

    const-string v11, "POST"

    :goto_0
    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 108
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_7

    .line 110
    invoke-direct {p0, v4}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5

    .line 112
    invoke-static {v5}, Lcom/youku/gamecenter/util/CommonUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "jsonString":Ljava/lang/String;
    iput-object v6, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    .line 114
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v7, "object":Lorg/json/JSONObject;
    const-string/jumbo v11, "status"

    invoke-static {v7, v11}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->status:Ljava/lang/String;

    .line 116
    const-string v11, "error"

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->errorcode:I

    .line 118
    iget-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->status:Ljava/lang/String;

    const-string/jumbo v12, "success"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->errorcode:I

    if-nez v11, :cond_3

    .line 119
    :cond_0
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_1
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    move-object v9, v10

    .line 171
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 104
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    const-string v11, "GET"

    goto :goto_0

    .line 123
    .restart local v6    # "jsonString":Ljava/lang/String;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v11, "status"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 124
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-eqz v4, :cond_4

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_4
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_1

    .line 127
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_5
    :try_start_3
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    .line 128
    const-string v11, "error_desc"

    invoke-static {v7, v11}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    :goto_2
    if-eqz v4, :cond_6

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_6
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    move-object v9, v10

    .line 170
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_1

    .line 131
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_7
    :try_start_4
    const-string/jumbo v11, "\u6570\u636e\u8fde\u63a5\u51fa\u9519"

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 133
    .end local v1    # "conn":Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 135
    .end local v10    # "url":Ljava/net/URL;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_3
    :try_start_5
    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    const-string v13, "094b2a34e812a4282f25c7ca1987789f"

    invoke-static {v12, v13}, Lcom/youku/gamecenter/util/SystemUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    .line 138
    new-instance v7, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v7    # "object":Lorg/json/JSONObject;
    const-string/jumbo v11, "status_api"

    invoke-static {v7, v11}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->status:Ljava/lang/String;

    .line 140
    const-string v11, "error_code_api"

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->errorcode:I

    .line 142
    iget-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->status:Ljava/lang/String;

    const-string/jumbo v12, "success"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->errorcode:I

    if-nez v11, :cond_a

    .line 143
    :cond_8
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    if-eqz v4, :cond_9

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_9
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 147
    :cond_a
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 148
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    .end local v7    # "object":Lorg/json/JSONObject;
    :goto_4
    if-eqz v4, :cond_b

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_b
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 150
    :catch_1
    move-exception v3

    .line 151
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 152
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 164
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v4, :cond_c

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_c
    iget v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v13, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    throw v11

    .line 154
    :catch_2
    move-exception v2

    .line 155
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_6
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 156
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    if-eqz v4, :cond_d

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_d
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 157
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 159
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 164
    if-eqz v4, :cond_e

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_e
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    .line 162
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    iput v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 164
    if-eqz v4, :cond_f

    .line 165
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_f
    iget v11, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iget-object v12, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v8}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->dumpResult(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto/16 :goto_5

    .line 160
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_5
    move-exception v2

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_8

    .line 157
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_6
    move-exception v2

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_7

    .line 154
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_7
    move-exception v2

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto/16 :goto_6

    .line 133
    :catch_8
    move-exception v2

    goto/16 :goto_3
.end method

.method private dumpResult(ILjava/lang/String;I)V
    .locals 4
    .param p1, "message"    # I
    .param p2, "exceptionString"    # Ljava/lang/String;
    .param p3, "response"    # I

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "->connectAPI    response code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "success! "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, "PlayFlow"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 176
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 183
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 180
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->connectAPI()V

    .line 68
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, "message":Landroid/os/Message;
    :try_start_0
    iget v2, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->message:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 76
    new-instance v2, Lcom/youku/gamecenter/data/ResponseInfoResult;

    iget-object v3, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->responseString:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/youku/gamecenter/data/ResponseInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->exceptionString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method

.method public setFail(I)V
    .locals 0
    .param p1, "fail"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->fail:I

    .line 52
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->requrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->success:I

    .line 48
    return-void
.end method
