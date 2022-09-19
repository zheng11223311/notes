.class public Lcom/youtu/apps/network/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lcom/youtu/apps/network/IHttpRequest;


# static fields
.field public static final FAIL:I = 0x2

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final STATE_ERROR_IO_EXCEPTION:Ljava/lang/String; = "IO\u5f02\u5e38"

.field public static final STATE_ERROR_MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

.field public static final STATE_ERROR_NO_NETWORK:Ljava/lang/String; = "\u7f51\u7edc\u6ca1\u6709\u8fde\u63a5\u4e0a\u54e6"

.field public static final STATE_ERROR_PROTOCOL_EXCEPTION:Ljava/lang/String; = "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

.field public static final STATE_ERROR_TIMEOUT:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field public static final STATE_ERROR_UNABLE_URL_EXCEPTION:Ljava/lang/String; = "\u6240\u5728Wi-fi\u4e0d\u53ef\u7528"

.field public static final SUCCESS:I = 0x1


# instance fields
.field private connect_timeout_millis:I

.field private dataString:Ljava/lang/String;

.field public fail_reason:Ljava/lang/String;

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field private read_timout_millis:I

.field private state:I

.field private task:Lcom/youtu/apps/network/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youtu/apps/network/YoukuAsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->state:I

    .line 47
    const-string v0, "GET"

    iput-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/youtu/apps/network/HttpRequestManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/network/HttpRequestManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youtu/apps/network/HttpRequestManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/network/HttpRequestManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$200(Lcom/youtu/apps/network/HttpRequestManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/network/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/youtu/apps/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/youtu/apps/network/HttpRequestManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/network/HttpRequestManager;

    .prologue
    .line 33
    iget v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->state:I

    return v0
.end method

.method private downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 109
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->read_timout_millis:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    iget v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->connect_timeout_millis:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 119
    const-string v5, "User-Agent"

    sget-object v6, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sUser_Agent:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 124
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 125
    .local v3, "response":I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/youtu/apps/recommend/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;

    .line 128
    const/4 v5, 0x1

    iput v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->state:I

    .line 134
    :goto_0
    iget-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v2, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 156
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return-object v5

    .line 132
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "response":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u9519\u8bef"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_3
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 137
    const-string/jumbo v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v2, :cond_0

    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v6

    goto :goto_1

    .line 139
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 140
    .local v1, "e":Ljava/net/ProtocolException;
    :try_start_5
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 141
    const-string/jumbo v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    if-eqz v2, :cond_0

    .line 154
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 155
    :catch_3
    move-exception v6

    goto :goto_1

    .line 143
    .end local v1    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v1

    .line 144
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_7
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 145
    const-string/jumbo v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    if-eqz v2, :cond_0

    .line 154
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 155
    :catch_5
    move-exception v6

    goto :goto_1

    .line 147
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    const-string/jumbo v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 152
    if-eqz v2, :cond_0

    .line 154
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 155
    :catch_7
    move-exception v6

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 154
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 156
    :cond_2
    :goto_2
    throw v5

    .line 155
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "response":I
    .restart local v4    # "url":Ljava/net/URL;
    :catch_8
    move-exception v6

    goto :goto_1

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_9
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->task:Lcom/youtu/apps/network/YoukuAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->task:Lcom/youtu/apps/network/YoukuAsyncTask;

    invoke-virtual {v0}, Lcom/youtu/apps/network/YoukuAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->task:Lcom/youtu/apps/network/YoukuAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youtu/apps/network/YoukuAsyncTask;->cancel(Z)Z

    .line 259
    :cond_0
    return-void
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 200
    return-object p1
.end method

.method public request(Lcom/youtu/apps/network/HttpIntent;Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 2
    .param p1, "httpIntent"    # Lcom/youtu/apps/network/HttpIntent;
    .param p2, "callBack"    # Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;

    .prologue
    const/4 v1, 0x0

    .line 206
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/youtu/apps/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->uri:Ljava/lang/String;

    .line 207
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/youtu/apps/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 208
    const-string v0, "is_set_cookie"

    invoke-virtual {p1, v0, v1}, Lcom/youtu/apps/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->isSetCookie:Z

    .line 211
    const-string v0, "connect_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/youtu/apps/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->connect_timeout_millis:I

    .line 213
    const-string v0, "read_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/youtu/apps/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->read_timout_millis:I

    .line 215
    new-instance v0, Lcom/youtu/apps/network/HttpRequestManager$1;

    invoke-direct {v0, p0, p2}, Lcom/youtu/apps/network/HttpRequestManager$1;-><init>(Lcom/youtu/apps/network/HttpRequestManager;Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;)V

    iput-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->task:Lcom/youtu/apps/network/YoukuAsyncTask;

    .line 250
    iget-object v0, p0, Lcom/youtu/apps/network/HttpRequestManager;->task:Lcom/youtu/apps/network/YoukuAsyncTask;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/youtu/apps/network/YoukuAsyncTask;->execute([Ljava/lang/Object;)Lcom/youtu/apps/network/YoukuAsyncTask;

    .line 252
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youtu/apps/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 88
    return-void
.end method
