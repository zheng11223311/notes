.class public Lcom/baseproject/network/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lcom/baseproject/network/IHttpRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/network/HttpRequestManager$NetEvent;
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final STATE_ERROR_IO_EXCEPTION:Ljava/lang/String; = "IO\u5f02\u5e38\u54e6"

.field public static final STATE_ERROR_MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

.field public static final STATE_ERROR_PROTOCOL_EXCEPTION:Ljava/lang/String; = "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

.field public static final STATE_ERROR_TIMEOUT:Ljava/lang/String; = "\u54a6\uff0c\u6682\u65f6\u6ca1\u6709\u83b7\u53d6\u5230\u6570\u636e\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

.field public static final STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String; = "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

.field public static final SUCCESS:I = 0x1


# instance fields
.field private connect_timeout_millis:I

.field private cookie:Ljava/lang/String;

.field private dataString:Ljava/lang/String;

.field public fail_reason:Ljava/lang/String;

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field private read_timout_millis:I

.field private state:I

.field private task:Lcom/baseproject/network/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baseproject/network/YoukuAsyncTask",
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/baseproject/network/HttpRequestManager;->state:I

    .line 60
    const-string v0, "GET"

    iput-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/baseproject/network/HttpRequestManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/network/HttpRequestManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baseproject/network/HttpRequestManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/network/HttpRequestManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/baseproject/network/HttpRequestManager;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baseproject/network/HttpRequestManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/network/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/baseproject/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/baseproject/network/HttpRequestManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/baseproject/network/HttpRequestManager;

    .prologue
    .line 47
    iget v0, p0, Lcom/baseproject/network/HttpRequestManager;->state:I

    return v0
.end method

.method static synthetic access$400(Lcom/baseproject/network/HttpRequestManager;Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/baseproject/network/HttpRequestManager;
    .param p1, "x1"    # Lcom/baseproject/network/HttpRequestManager$NetEvent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/baseproject/network/HttpRequestManager;->trackNetEvent(Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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
    .line 115
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 117
    const/4 v2, 0x0

    .line 119
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 121
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget v5, p0, Lcom/baseproject/network/HttpRequestManager;->read_timout_millis:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    iget v5, p0, Lcom/baseproject/network/HttpRequestManager;->connect_timeout_millis:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 123
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 124
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 126
    if-eqz p3, :cond_2

    .line 127
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->cookie:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "the cookie is not setted!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 154
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 155
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v2, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 178
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v5

    .line 130
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    :try_start_3
    const-string v5, "Cookie"

    iget-object v6, p0, Lcom/baseproject/network/HttpRequestManager;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    const-string v5, "User-Agent"

    sget-object v6, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 138
    sget-object v5, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netRequest:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    const-string v6, ""

    invoke-direct {p0, v5, p1, v6}, Lcom/baseproject/network/HttpRequestManager;->trackNetEvent(Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 141
    .local v3, "response":I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_3

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 143
    invoke-static {v2}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;

    .line 144
    const/4 v5, 0x1

    iput v5, p0, Lcom/baseproject/network/HttpRequestManager;->state:I

    .line 151
    :goto_1
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    if-eqz v2, :cond_0

    .line 171
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v6

    goto :goto_0

    .line 145
    :cond_3
    const/16 v5, 0x190

    if-ne v3, v5, :cond_4

    .line 146
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/baseproject/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 156
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e":Ljava/net/ProtocolException;
    :try_start_6
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 158
    invoke-virtual {v1}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 159
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    if-eqz v2, :cond_0

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 172
    :catch_3
    move-exception v6

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/net/ProtocolException;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "response":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_4
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 160
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "response":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_4
    move-exception v1

    .line 161
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_9
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 162
    const-string/jumbo v5, "\u54a6\uff0c\u6682\u65f6\u6ca1\u6709\u83b7\u53d6\u5230\u6570\u636e\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 163
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    if-eqz v2, :cond_0

    .line 171
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 172
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .line 164
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 167
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 169
    if-eqz v2, :cond_0

    .line 171
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 172
    :catch_7
    move-exception v6

    goto/16 :goto_0

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_5

    .line 171
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 173
    :cond_5
    :goto_2
    throw v5

    .line 177
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_6
    const-string/jumbo v5, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

    iput-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    .local v1, "e":Ljava/net/MalformedURLException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v6

    goto/16 :goto_0

    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_9
    move-exception v6

    goto :goto_2
.end method

.method private trackNetEvent(Lcom/baseproject/network/HttpRequestManager$NetEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Lcom/baseproject/network/HttpRequestManager$NetEvent;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 287
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->task:Lcom/baseproject/network/YoukuAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->task:Lcom/baseproject/network/YoukuAsyncTask;

    invoke-virtual {v0}, Lcom/baseproject/network/YoukuAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->task:Lcom/baseproject/network/YoukuAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baseproject/network/YoukuAsyncTask;->cancel(Z)Z

    .line 275
    :cond_0
    return-void
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;

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
    .line 217
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 218
    return-object p1
.end method

.method public request(Lcom/baseproject/network/HttpIntent;Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 2
    .param p1, "httpIntent"    # Lcom/baseproject/network/HttpIntent;
    .param p2, "callBack"    # Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;

    .prologue
    const/4 v1, 0x0

    .line 223
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/baseproject/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->uri:Ljava/lang/String;

    .line 224
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/baseproject/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 225
    const-string v0, "is_set_cookie"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baseproject/network/HttpRequestManager;->isSetCookie:Z

    .line 226
    const-string v0, "connect_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baseproject/network/HttpRequestManager;->connect_timeout_millis:I

    .line 227
    const-string v0, "read_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baseproject/network/HttpRequestManager;->read_timout_millis:I

    .line 229
    new-instance v0, Lcom/baseproject/network/HttpRequestManager$1;

    invoke-direct {v0, p0, p2}, Lcom/baseproject/network/HttpRequestManager$1;-><init>(Lcom/baseproject/network/HttpRequestManager;Lcom/baseproject/network/IHttpRequest$IHttpRequestCallBack;)V

    iput-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->task:Lcom/baseproject/network/YoukuAsyncTask;

    .line 266
    iget-object v0, p0, Lcom/baseproject/network/HttpRequestManager;->task:Lcom/baseproject/network/YoukuAsyncTask;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/baseproject/network/YoukuAsyncTask;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 268
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/baseproject/network/HttpRequestManager;->cookie:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baseproject/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 102
    return-void
.end method
