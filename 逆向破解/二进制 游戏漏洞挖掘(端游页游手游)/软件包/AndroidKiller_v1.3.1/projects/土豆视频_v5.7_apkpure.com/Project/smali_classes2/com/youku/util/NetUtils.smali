.class public Lcom/youku/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final FORMAL_HOST:Ljava/lang/String; = "http://minterface.tudou.com/"

.field private static final HTTP_PARTIAL:I = 0xce

.field public static LOGIN:Ljava/lang/String; = null

.field public static final MIME_FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static NEW_LOGIN:Ljava/lang/String;

.field public static REGIST:Ljava/lang/String;

.field public static TEST_HOST:Ljava/lang/String;

.field public static UPLOADING:Ljava/lang/String;

.field public static UPLOAD_FAIL:Ljava/lang/String;

.field public static UPLOAD_STEP1:Ljava/lang/String;

.field public static UPLOAD_SUCESS:Ljava/lang/String;

.field public static VERIFICATION:Ljava/lang/String;

.field private static mHttpParameters:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3a98

    .line 48
    const-string v0, "http://minterface.tudou.com/login?"

    sput-object v0, Lcom/youku/util/NetUtils;->LOGIN:Ljava/lang/String;

    .line 49
    const-string v0, "http://minterface.tudou.com/authcode?"

    sput-object v0, Lcom/youku/util/NetUtils;->VERIFICATION:Ljava/lang/String;

    .line 50
    const-string v0, "http://minterface.tudou.com/register?"

    sput-object v0, Lcom/youku/util/NetUtils;->REGIST:Ljava/lang/String;

    .line 51
    const-string v0, "http://minterface.tudou.com/uploadaddress?"

    sput-object v0, Lcom/youku/util/NetUtils;->UPLOAD_STEP1:Ljava/lang/String;

    .line 53
    const-string v0, "http://minterface.tudou.com/uploadsuccess?"

    sput-object v0, Lcom/youku/util/NetUtils;->UPLOAD_SUCESS:Ljava/lang/String;

    .line 54
    const-string v0, "http://minterface.tudou.com/uploading?"

    sput-object v0, Lcom/youku/util/NetUtils;->UPLOADING:Ljava/lang/String;

    .line 55
    const-string v0, "http://minterface.tudou.com/uploadfail?"

    sput-object v0, Lcom/youku/util/NetUtils;->UPLOAD_FAIL:Ljava/lang/String;

    .line 57
    const-string v0, "http://test.api.3g.youku.com:81/"

    sput-object v0, Lcom/youku/util/NetUtils;->TEST_HOST:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/util/NetUtils;->TEST_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user/login?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/util/NetUtils;->NEW_LOGIN:Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    .line 71
    sget-object v0, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    sget-object v0, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/youku/util/NetUtils;->getNetInfoMain(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/youku/util/NetUtils;->parseUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public static decodeToBitmap(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 400
    .local v0, "bufHttpEntity":Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 401
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static downloadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 405
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v7, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    invoke-direct {v3, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 406
    .local v3, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 407
    .local v4, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const/4 v5, 0x0

    .line 409
    .local v5, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 410
    if-eqz v5, :cond_1

    .line 411
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 412
    .local v6, "statusCode":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 413
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 414
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "statusCode":I
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    if-eqz v4, :cond_0

    .line 427
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    const/4 v4, 0x0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "isSetCookie"    # Z

    .prologue
    .line 451
    const/4 v6, 0x0

    .line 452
    .local v6, "result":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 453
    const/4 v4, 0x0

    .line 455
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    .local v7, "url":Ljava/net/URL;
    const-string v8, "HttpRequestManager#downloadUri()"

    invoke-static {v8, p0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 461
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x4e20

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 462
    const/16 v8, 0x7530

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 463
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 464
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 466
    if-eqz p2, :cond_0

    .line 467
    const-string v8, "Cookie"

    sget-object v9, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    const-string v8, "User-Agent"

    sget-object v9, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 474
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 475
    .local v5, "response":I
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_2

    .line 476
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 477
    invoke-static {v4}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 508
    :goto_0
    if-eqz v4, :cond_1

    .line 510
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 520
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-object v6

    .line 478
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    const/16 v8, 0x19a

    if-ne v5, v8, :cond_3

    .line 479
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 480
    invoke-static {v4}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 481
    .local v2, "d":D
    double-to-long v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    sput-wide v8, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 482
    invoke-static {p0, p1}, Lcom/youku/http/TudouURLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-static/range {p0 .. p2}, Lcom/youku/util/NetUtils;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 484
    goto :goto_0

    .line 485
    .end local v2    # "d":D
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 487
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/net/MalformedURLException;
    const/4 v6, 0x0

    .line 508
    if-eqz v4, :cond_1

    .line 510
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 511
    :catch_1
    move-exception v8

    goto :goto_1

    .line 492
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 496
    .local v1, "e":Ljava/net/ProtocolException;
    const/4 v6, 0x0

    .line 508
    if-eqz v4, :cond_1

    .line 510
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 511
    :catch_3
    move-exception v8

    goto :goto_1

    .line 497
    .end local v1    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v1

    .line 501
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const/4 v6, 0x0

    .line 508
    if-eqz v4, :cond_1

    .line 510
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 511
    :catch_5
    move-exception v8

    goto :goto_1

    .line 502
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v1

    .line 506
    .local v1, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 508
    if-eqz v4, :cond_1

    .line 510
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    .line 511
    :catch_7
    move-exception v8

    goto :goto_1

    .line 508
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_4

    .line 510
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 512
    :cond_4
    :goto_2
    throw v8

    .line 518
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 511
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_8
    move-exception v8

    goto :goto_1

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_9
    move-exception v9

    goto :goto_2
.end method

.method public static getCookie(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 9
    .param p0, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 297
    const-string v6, "test1"

    const-string v7, "getCookie start"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const-string v6, "test1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCookie end cookiesize= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 302
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 303
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "cookieName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "cookieValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "cookieValue":Ljava/lang/String;
    :cond_1
    const-string v6, "test1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCookie end cookie= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 313
    const-string v6, "cookie"

    sget-object v7, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private static getNetInfo(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "jsonInfo"    # Ljava/lang/String;
    .param p4, "type"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "postInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/youku/util/NetUtils;->parseUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/16 v0, 0x90

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/util/ThreadUtil;->getTheadPool(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/youku/util/NetUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/youku/util/NetUtils$1;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static getNetInfoByGet(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "aHandler"    # Landroid/os/Handler;
    .param p1, "strUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Lcom/youku/util/NetUtils;->getNetInfo(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public static getNetInfoByPost(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "aHandler"    # Landroid/os/Handler;
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "jsonInfo"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, p2, v1}, Lcom/youku/util/NetUtils;->getNetInfo(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public static getNetInfoByPost(Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "aHandler"    # Landroid/os/Handler;
    .param p1, "strUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "aHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v0, v1}, Lcom/youku/util/NetUtils;->getNetInfo(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method private static getNetInfoMain(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 34
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "jsonInfo"    # Ljava/lang/String;
    .param p4, "type"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "postInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 195
    .local v21, "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    const/16 v19, 0x0

    .line 196
    .local v19, "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 197
    .local v12, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v17, 0x0

    .line 198
    .local v17, "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v23

    .line 200
    .local v23, "message":Landroid/os/Message;
    :try_start_0
    new-instance v18, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v18, "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v25, 0x0

    .line 202
    .local v25, "response":Lorg/apache/http/HttpResponse;
    if-eqz p4, :cond_6

    .line 203
    :try_start_1
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v22, "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_2
    sget-object v28, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 206
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v24, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    .line 208
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 209
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 210
    .local v15, "key":Ljava/lang/String;
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v15, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 260
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .line 262
    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    .local v8, "e":Ljava/net/SocketTimeoutException;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    const/16 v28, 0xa9

    :try_start_3
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_0

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_0
    if-eqz v19, :cond_1

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    .line 286
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :cond_1
    :goto_2
    return-void

    .line 213
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v24    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_4
    new-instance v27, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v28, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 215
    .local v27, "urlEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "urlEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_3
    :goto_3
    const-string v28, "Content-Type"

    const-string v29, "application/x-www-form-urlencoded"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v28, "User-Agent"

    sget-object v29, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v25

    move-object/from16 v21, v22

    .line 230
    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v24    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    :try_start_5
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    .line 231
    .local v26, "statusCode":I
    const-string v28, "test1"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getCookie statusCode "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v28, 0xc8

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 233
    invoke-static/range {v18 .. v18}, Lcom/youku/util/NetUtils;->getCookie(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 234
    sget-object v28, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 235
    const-string v28, "Set-Cookie"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v11

    .line 236
    .local v11, "header":[Lorg/apache/http/Header;
    if-eqz v11, :cond_8

    .line 237
    const-string v5, ""

    .line 238
    .local v5, "cookie":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_7

    .line 239
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v11, v13

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 238
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 216
    .end local v5    # "cookie":Ljava/lang/String;
    .end local v11    # "header":[Lorg/apache/http/Header;
    .end local v13    # "i":I
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v26    # "statusCode":I
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v24    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_4
    if-eqz p3, :cond_3

    .line 217
    :try_start_6
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    const-string v28, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-direct {v9, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v9, "entity":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_3

    .line 263
    .end local v9    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v24    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .line 265
    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    .local v8, "e":Ljava/net/SocketException;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_6
    const/16 v28, 0x90

    :try_start_7
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_5

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_5
    if-eqz v19, :cond_1

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 224
    .end local v8    # "e":Ljava/net/SocketException;
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_8
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 225
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .local v20, "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_9
    sget-object v28, Lcom/youku/util/NetUtils;->mHttpParameters:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 226
    const-string v28, "User-Agent"

    sget-object v29, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v25

    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_4

    .line 241
    .restart local v5    # "cookie":Ljava/lang/String;
    .restart local v11    # "header":[Lorg/apache/http/Header;
    .restart local v13    # "i":I
    .restart local v26    # "statusCode":I
    :cond_7
    :try_start_a
    sput-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 244
    .end local v5    # "cookie":Ljava/lang/String;
    .end local v11    # "header":[Lorg/apache/http/Header;
    .end local v13    # "i":I
    :cond_8
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "backStr":Ljava/lang/String;
    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    .end local v4    # "backStr":Ljava/lang/String;
    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_9

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_9
    if-eqz v19, :cond_12

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_2

    .line 246
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_a
    const/16 v28, 0x19a

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 247
    :try_start_b
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "errorRes":Ljava/lang/String;
    const-string v28, "TAG_TUDOU"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "HTTP_GONE410======="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 250
    .local v6, "d":D
    double-to-long v0, v6

    move-wide/from16 v28, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    sub-long v28, v28, v30

    sput-wide v28, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 252
    if-eqz p4, :cond_b

    const-string v28, "POST"

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/youku/http/TudouURLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static/range {p0 .. p4}, Lcom/youku/util/NetUtils;->getNetInfoMain(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Ljava/lang/String;Z)V

    goto :goto_7

    .line 260
    .end local v6    # "d":D
    .end local v10    # "errorRes":Ljava/lang/String;
    .end local v26    # "statusCode":I
    :catch_2
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_1

    .line 252
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "d":D
    .restart local v10    # "errorRes":Ljava/lang/String;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v26    # "statusCode":I
    :cond_b
    const-string v28, "GET"

    goto :goto_8

    .line 256
    .end local v6    # "d":D
    .end local v10    # "errorRes":Ljava/lang/String;
    :cond_c
    const-string v28, "Youku"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NetUtils Error code = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " url = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_7

    .line 263
    .end local v26    # "statusCode":I
    :catch_3
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_6

    .line 266
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v8

    .line 268
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_9
    const/16 v28, 0x90

    :try_start_c
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_d

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_d
    if-eqz v19, :cond_1

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 269
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v8

    .line 271
    .local v8, "e":Ljava/io/IOException;
    :goto_a
    const/16 v28, 0x90

    :try_start_d
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_e

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_e
    if-eqz v19, :cond_1

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 272
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/Exception;
    :goto_b
    const/16 v28, 0x90

    :try_start_e
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_f

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_f
    if-eqz v19, :cond_1

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 276
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    if-eqz v21, :cond_10

    .line 278
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 279
    const/16 v21, 0x0

    .line 281
    :cond_10
    if-eqz v19, :cond_11

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const/16 v19, 0x0

    :cond_11
    throw v28

    .line 276
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_c

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_2
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_c

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :catchall_3
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_c

    .line 272
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_7
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_b

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_8
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_b

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_9
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_b

    .line 269
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_a
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_a

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_b
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_a

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_c
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_a

    .line 266
    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_d
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_9

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_e
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v21, v22

    .end local v22    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v21    # "mHttpPost":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_9

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_f
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_9

    .line 263
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_10
    move-exception v8

    goto/16 :goto_6

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_11
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_6

    .line 260
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_12
    move-exception v8

    goto/16 :goto_1

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_13
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v19, v20

    .end local v20    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1

    .end local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v26    # "statusCode":I
    :cond_12
    move-object/from16 v17, v18

    .end local v18    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17    # "mHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_2
.end method

.method private static isBusinessCodeOK(Ljava/lang/String;)I
    .locals 2
    .param p0, "business"    # Ljava/lang/String;

    .prologue
    .line 88
    sget v0, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    .line 89
    .local v0, "OK":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    sget v1, Lcom/youku/util/StatusUtils;->NOT_EXIST_ERROR:I

    .line 95
    :goto_0
    return v1

    .line 92
    :cond_0
    sget-object v1, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_NOBUSINESS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    sget v0, Lcom/youku/util/StatusUtils;->SERVER_ERROR:I

    :cond_1
    move v1, v0

    .line 95
    goto :goto_0
.end method

.method public static isServerOK(Lorg/json/JSONObject;)Z
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "isOk":Z
    const-string v5, "business_code"

    invoke-static {p0, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "business_code":Ljava/lang/String;
    const-string v5, "sys_code"

    invoke-static {p0, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "sys_code":Ljava/lang/String;
    invoke-static {v4}, Lcom/youku/util/NetUtils;->isSystemCodeOK(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "sCode":I
    invoke-static {v1}, Lcom/youku/util/NetUtils;->isBusinessCodeOK(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "bCode":I
    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-ne v3, v5, :cond_0

    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-ne v0, v5, :cond_0

    .line 105
    const/4 v2, 0x1

    .line 113
    :goto_0
    return v2

    .line 106
    :cond_0
    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-eq v3, v5, :cond_1

    .line 107
    sget-object v5, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-eq v0, v5, :cond_2

    .line 109
    sget-object v5, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    sget-object v5, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isServerOKChild(Lorg/json/JSONObject;)Z
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "isOk":Z
    const-string v5, "business_code"

    invoke-static {p0, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "business_code":Ljava/lang/String;
    const-string v5, "sys_code"

    invoke-static {p0, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "sys_code":Ljava/lang/String;
    invoke-static {v4}, Lcom/youku/util/NetUtils;->isSystemCodeOK(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "sCode":I
    invoke-static {v1}, Lcom/youku/util/NetUtils;->isBusinessCodeOK(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "bCode":I
    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-ne v3, v5, :cond_0

    sget v5, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    if-ne v0, v5, :cond_0

    .line 123
    const/4 v2, 0x1

    .line 125
    :cond_0
    return v2
.end method

.method private static isSystemCodeOK(Ljava/lang/String;)I
    .locals 2
    .param p0, "sys"    # Ljava/lang/String;

    .prologue
    .line 77
    sget v0, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    .line 78
    .local v0, "OK":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget v1, Lcom/youku/util/StatusUtils;->NOT_EXIST_ERROR:I

    .line 84
    :goto_0
    return v1

    .line 81
    :cond_0
    sget-object v1, Lcom/youku/util/StatusUtils;->SYSTEM_CODE_OK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    sget v0, Lcom/youku/util/StatusUtils;->SERVER_ERROR:I

    :cond_1
    move v1, v0

    .line 84
    goto :goto_0
.end method

.method private static parseUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "ret":Z
    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 139
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v1, 0x1

    .line 146
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static performDownLoadPic(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "aHandler"    # Landroid/os/Handler;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/util/ThreadUtil;->getTheadPool(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/youku/util/NetUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/youku/util/NetUtils$2;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 387
    return-void
.end method
