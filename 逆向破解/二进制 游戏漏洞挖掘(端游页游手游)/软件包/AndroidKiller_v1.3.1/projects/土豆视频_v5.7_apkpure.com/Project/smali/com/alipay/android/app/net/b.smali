.class public Lcom/alipay/android/app/net/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/net/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alipay/android/app/net/b;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static a(Lb/j;Ljava/lang/String;Z)Lorg/apache/http/entity/ByteArrayEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lb/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lb/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v0, "application/octet-stream;binary/octet-stream"

    .line 96
    :cond_1
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    if-eqz p2, :cond_2

    .line 98
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 102
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 103
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 104
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 105
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 106
    const-string v0, "gzip"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 110
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v1

    .line 111
    goto :goto_0
.end method

.method private e()Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/alipay/android/app/net/b;->b()Ljava/net/URL;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 287
    :goto_1
    return-object v0

    .line 278
    :cond_0
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private f()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/net/b;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/net/b;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 317
    const-string/jumbo v0, "wifi"

    .line 329
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    const-string v0, "none"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    const-string v0, "none"

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lb/j;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/alipay/android/app/net/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lh/a;->b(Landroid/content/Context;)Lh/d;

    move-result-object v1

    .line 131
    sget-object v2, Lh/d;->p:Lh/d;

    if-ne v1, v2, :cond_0

    .line 132
    const-string v1, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "nonetwork"

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 141
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/net/c;->a()Lcom/alipay/android/app/net/c;

    move-result-object v3

    .line 145
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/android/app/net/c;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/app/net/b;->c()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_1

    .line 148
    const-string v4, "http.route.default-proxy"

    invoke-interface {v1, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 150
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/h;->e(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/h;->d(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 169
    :goto_0
    if-eqz p2, :cond_4

    .line 170
    invoke-virtual {p2}, Lb/j;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHeader;

    .line 173
    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 196
    :catch_0
    move-exception v1

    .line 197
    const-string v2, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "neterror"

    invoke-static {v2, v3, v1, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 198
    throw v1

    .line 155
    :cond_2
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/alipay/android/app/net/b;->a(Lb/j;Ljava/lang/String;Z)Lorg/apache/http/entity/ByteArrayEntity;

    move-result-object v4

    .line 159
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 160
    const-string v1, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "Keep-Alive"

    const-string/jumbo v4, "timeout=180, max=100"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 200
    if-eqz v3, :cond_3

    .line 201
    invoke-virtual {v3}, Lcom/alipay/android/app/net/c;->c()V

    .line 202
    :cond_3
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string v3, "connction time out"

    invoke-virtual {v2, v1, v3}, Lf/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 203
    const-string v2, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout"

    invoke-static {v2, v3, v1, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 204
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    .line 205
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 176
    :cond_4
    :try_start_2
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    const-string v1, "OS"

    const-string v4, "Android"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_5
    invoke-virtual {v3, v2}, Lcom/alipay/android/app/net/c;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 183
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_6

    array-length v4, v2

    if-lez v4, :cond_6

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_6

    .line 186
    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj/h;->b(Ljava/lang/String;)V

    .line 189
    :cond_6
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_7

    array-length v4, v2

    if-lez v4, :cond_7

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_7

    .line 193
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj/h;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 223
    :cond_7
    return-object v1

    .line 206
    :catch_2
    move-exception v1

    .line 207
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string v3, "connect reset"

    invoke-virtual {v2, v1, v3}, Lf/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 208
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    .line 209
    const-string v2, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "socketerror"

    invoke-static {v2, v3, v1, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 211
    :catch_3
    move-exception v1

    .line 212
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string/jumbo v3, "socket time out"

    invoke-virtual {v2, v1, v3}, Lf/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    .line 214
    const-string v2, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sockettimeout"

    invoke-static {v2, v3, v1, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    .line 216
    :catch_4
    move-exception v1

    .line 217
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string v3, "connction net error"

    invoke-virtual {v2, v1, v3}, Lf/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 218
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    .line 219
    const-string v2, "SPSafePay"

    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connctionneterror"

    invoke-static {v2, v3, v1, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b()Ljava/net/URL;
    .locals 3

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUrl : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->b(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/android/app/net/b;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/net/b;->a(Ljava/lang/String;Lb/j;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/apache/http/HttpHost;
    .locals 2

    .prologue
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->e()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/net/b;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    invoke-direct {p0}, Lcom/alipay/android/app/net/b;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 252
    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 256
    :cond_0
    return-object v0
.end method
