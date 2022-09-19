.class public Lcom/youku/network/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest;


# static fields
.field private static final AD_TAG:Ljava/lang/String; = "adv/startpage"

.field public static final FAIL:I = 0x2

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final STATE_ERROR_IO_EXCEPTION:Ljava/lang/String; = "IO\u5f02\u5e38"

.field public static final STATE_ERROR_MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

.field public static final STATE_ERROR_NO_NETWORK:Ljava/lang/String; = "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

.field public static final STATE_ERROR_PROTOCOL_EXCEPTION:Ljava/lang/String; = "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

.field public static final STATE_ERROR_REQUEST_DATA_FAIL:Ljava/lang/String; = "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

.field public static final STATE_ERROR_TIMEOUT:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

.field public static final STATE_ERROR_UNABLE_URL_EXCEPTION:Ljava/lang/String; = "\u6240\u5728Wi-fi\u4e0d\u53ef\u7528"

.field public static final SUCCESS:I = 0x1

.field public static final TUDOU_AD_COOKIE:Ljava/lang/String; = "ad_cookie"

.field public static final TUDOU_HOME_AD_COOKIC:Ljava/lang/String; = "home_ad_cookic"


# instance fields
.field private IScancle:Z

.field private dataString:Ljava/lang/String;

.field public fail_reason:Ljava/lang/String;

.field public formatUri:Ljava/lang/String;

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field public postdata:Ljava/lang/String;

.field private requestTag:Ljava/lang/String;

.field private state:I

.field private task:Lcom/tudou/android/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tudou/android/YoukuAsyncTask",
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
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/network/HttpRequestManager;->state:I

    .line 63
    const-string v0, "GET"

    iput-object v0, p0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/network/HttpRequestManager;->IScancle:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/youku/network/HttpRequestManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/network/HttpRequestManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/youku/network/HttpRequestManager;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$200(Lcom/youku/network/HttpRequestManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 50
    iget v0, p0, Lcom/youku/network/HttpRequestManager;->state:I

    return v0
.end method

.method private downloadAdUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "connectTime"    # I
    .param p3, "readTimeout"    # I
    .param p4, "cookieKey"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v13, 0x0

    .line 370
    .local v13, "is":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 372
    .local v14, "isModify":I
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 373
    .local v17, "url":Ljava/net/URL;
    const-string v2, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "HttpRequestManager#downloadUri()"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/network/HttpRequestManager;->isSetCookie:Z

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    .line 380
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 381
    .local v8, "conn":Ljava/net/HttpURLConnection;
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 382
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 386
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, "localAdCookie":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 388
    const-string v3, "Cookie"

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v8, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_1
    const-string v2, "User-Agent"

    sget-object v3, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 395
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 396
    .local v16, "response":I
    const-string v2, "YoukuCacheTag"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v2, "Etag"

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 398
    .local v12, "eTag":Ljava/lang/String;
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    .line 399
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 400
    invoke-static {v13}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    .line 401
    const-string v2, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p4

    invoke-static {v8, v0, v15}, Lcom/youku/network/HttpRequestManager;->updateADCookie(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/network/HttpRequestManager;->state:I

    .line 406
    if-eqz v12, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    .line 409
    const-string v2, "YoukuCacheTag"

    const-string v3, "is Modify:true"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tudou/android/TudouApi;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_2
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    if-eqz v13, :cond_3

    .line 460
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 462
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :cond_3
    :goto_3
    return-object v2

    .line 388
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_4
    :try_start_4
    sget-object v2, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    goto/16 :goto_0

    .line 389
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    const-string v2, "Cookie"

    invoke-virtual {v8, v2, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 437
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 438
    .local v9, "e":Ljava/net/MalformedURLException;
    :try_start_5
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 440
    const-string v2, "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 458
    if-eqz v13, :cond_3

    .line 460
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 461
    :catch_1
    move-exception v3

    goto :goto_3

    .line 413
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "eTag":Ljava/lang/String;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v16    # "response":I
    .restart local v17    # "url":Ljava/net/URL;
    :catch_2
    move-exception v9

    .line 414
    .local v9, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/network/HttpRequestManager;->state:I

    .line 415
    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 442
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_3
    move-exception v9

    .line 443
    .local v9, "e":Ljava/net/ProtocolException;
    :try_start_8
    invoke-virtual {v9}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 445
    const-string v2, "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 458
    if-eqz v13, :cond_3

    .line 460
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 461
    :catch_4
    move-exception v3

    goto :goto_3

    .line 417
    .end local v9    # "e":Ljava/net/ProtocolException;
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "eTag":Ljava/lang/String;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v16    # "response":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_6
    const/16 v2, 0x190

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 418
    :try_start_a
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    .line 419
    invoke-static {v13}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 447
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_5
    move-exception v9

    .line 448
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :try_start_b
    invoke-virtual {v9}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 450
    const-string v2, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 458
    if-eqz v13, :cond_3

    .line 460
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 461
    :catch_6
    move-exception v3

    goto :goto_3

    .line 420
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "eTag":Ljava/lang/String;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v16    # "response":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_7
    const/16 v2, 0x130

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 421
    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    .line 422
    :try_start_d
    const-string v2, "YoukuCacheTag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is Modify:false ETAG = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_8
    move-object/from16 v0, p4

    invoke-static {v8, v0, v15}, Lcom/youku/network/HttpRequestManager;->updateADCookie(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/network/HttpRequestManager;->state:I
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 452
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_7
    move-exception v9

    .line 453
    .local v9, "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 458
    if-eqz v13, :cond_3

    .line 460
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_3

    .line 461
    :catch_8
    move-exception v3

    goto/16 :goto_3

    .line 426
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "eTag":Ljava/lang/String;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v16    # "response":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_9
    const/16 v2, 0x19a

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 427
    :try_start_10
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    .line 428
    invoke-static {v13}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 429
    .local v10, "d":D
    double-to-long v2, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/http/TudouURLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/youku/network/HttpRequestManager;->isSetCookie:Z

    move-object/from16 v2, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/youku/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 458
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "d":D
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_a

    .line 460
    :try_start_11
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 462
    :cond_a
    :goto_4
    throw v2

    .line 434
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "eTag":Ljava/lang/String;
    .restart local v15    # "localAdCookie":Ljava/lang/String;
    .restart local v16    # "response":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_b
    :try_start_12
    const-string v2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 461
    :catch_9
    move-exception v3

    goto/16 :goto_3

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "eTag":Ljava/lang/String;
    .end local v15    # "localAdCookie":Ljava/lang/String;
    .end local v16    # "response":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_a
    move-exception v3

    goto :goto_4
.end method

.method private getCookie(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "cookieVal":Ljava/lang/String;
    const/4 v2, 0x0

    .line 347
    .local v2, "key":Ljava/lang/String;
    const-string v3, ""

    .line 348
    .local v3, "sum":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 349
    const-string v4, "Set-Cookie"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    const/4 v4, 0x0

    .line 358
    :goto_1
    return-object v4

    .line 357
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 358
    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "dataStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 598
    return-object p1
.end method

.method private parseLogoutJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "logout"    # Ljava/lang/String;

    .prologue
    .line 475
    :try_start_0
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logout====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 497
    .end local p1    # "logout":Ljava/lang/String;
    .local v2, "logout":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 479
    .end local v2    # "logout":Ljava/lang/String;
    .restart local p1    # "logout":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 480
    .local v3, "logoutJson":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "code":I
    const/16 v5, 0x190

    if-ne v0, v5, :cond_2

    .line 482
    const-string v5, "desc"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 483
    .local v1, "desc":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 484
    const-string v5, "yktk_result"

    invoke-static {v1, v5}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 485
    .local v4, "yktk_result":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 486
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->logoutS()V

    .line 489
    :cond_1
    const-string p1, "\u60a8\u7684\u5bc6\u7801\u5df2\u7ecf\u4fee\u6539\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    .end local v0    # "code":I
    .end local v1    # "desc":Lorg/json/JSONObject;
    .end local v3    # "logoutJson":Lorg/json/JSONObject;
    .end local v4    # "yktk_result":I
    :cond_2
    :goto_1
    move-object v2, p1

    .line 497
    .end local p1    # "logout":Ljava/lang/String;
    .restart local v2    # "logout":Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v2    # "logout":Ljava/lang/String;
    .restart local v0    # "code":I
    .restart local v1    # "desc":Lorg/json/JSONObject;
    .restart local v3    # "logoutJson":Lorg/json/JSONObject;
    .restart local p1    # "logout":Ljava/lang/String;
    :cond_3
    const-string v5, "desc"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    .line 495
    .end local v0    # "code":I
    .end local v1    # "desc":Lorg/json/JSONObject;
    .end local v3    # "logoutJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static updateADCookie(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "aConn"    # Ljava/net/HttpURLConnection;
    .param p1, "cookieKey"    # Ljava/lang/String;
    .param p2, "oldAdCookie"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 526
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 527
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 528
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 529
    .local v4, "key":Ljava/lang/String;
    const-string v10, "Set-Cookie"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 531
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 532
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 533
    .local v1, "advBuffer":Ljava/lang/StringBuffer;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 534
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 538
    .end local v9    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "ad_cookie":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 540
    invoke-static {p1, v0}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 542
    invoke-static {v0, p2}, Lcom/youku/util/Util;->formatCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, "newCookie":Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    .end local v0    # "ad_cookie":Ljava/lang/String;
    .end local v1    # "advBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "newCookie":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 660
    iput-boolean v1, p0, Lcom/youku/network/HttpRequestManager;->IScancle:Z

    .line 661
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->task:Lcom/tudou/android/YoukuAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->task:Lcom/tudou/android/YoukuAsyncTask;

    invoke-virtual {v0}, Lcom/tudou/android/YoukuAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->task:Lcom/tudou/android/YoukuAsyncTask;

    invoke-virtual {v0, v1}, Lcom/tudou/android/YoukuAsyncTask;->cancel(Z)Z

    .line 664
    :cond_0
    return-void
.end method

.method public downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v4, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    .line 130
    .local v4, "connectTimeout":I
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v5, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    .local v5, "readTimeout":I
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/youku/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    .end local v4    # "connectTimeout":I
    .end local v5    # "readTimeout":I
    :cond_0
    sget v4, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    goto :goto_0

    .line 130
    .restart local v4    # "connectTimeout":I
    :cond_1
    sget v5, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    goto :goto_1
.end method

.method public downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 22
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeOut"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 146
    const-string v4, "adv/startpage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    const-string v4, "ad_cookie"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/network/HttpRequestManager;->downloadAdUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    :cond_0
    :goto_0
    return-object v4

    .line 148
    :cond_1
    const-string v4, "/adv/mhtml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const-string v4, "home_ad_cookic"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/network/HttpRequestManager;->downloadAdUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 151
    :cond_2
    const/16 v16, 0x0

    .line 152
    .local v16, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 154
    .local v17, "isModify":I
    :try_start_0
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .local v21, "url":Ljava/net/URL;
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v4, "HttpRequestManager#downloadUri()"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    .line 162
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 164
    .local v10, "conn":Ljava/net/HttpURLConnection;
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 165
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formatUri====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 171
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    .line 172
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 174
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :catch_0
    move-exception v14

    .line 184
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    sget-object v4, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    const-string v4, "Cookie"

    sget-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_4
    const-string v4, "User-Agent"

    sget-object v5, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "POST"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 198
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 199
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v18, "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 202
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V

    .line 203
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 210
    .end local v18    # "out":Ljava/io/DataOutputStream;
    :goto_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 211
    .local v19, "response":I
    const-string v4, "YoukuCacheTag"

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "Etag"

    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 213
    .local v15, "eTag":Ljava/lang/String;
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v4, 0xc8

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    .line 216
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 217
    invoke-static/range {v16 .. v16}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/youku/network/HttpRequestManager;->getCookie(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, "cookie":Ljava/lang/String;
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cookie = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/youku/network/HttpRequestManager;->state:I

    .line 225
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 226
    sget-object v4, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 227
    sput-object v11, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 228
    const-string v4, "COOKIE"

    sget-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_5
    :goto_3
    if-eqz v15, :cond_7

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 249
    const-string v4, "YoukuCacheTag"

    const-string v5, "is Modify:true"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tudou/android/TudouApi;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .end local v11    # "cookie":Ljava/lang/String;
    :cond_7
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    if-eqz v16, :cond_0

    .line 331
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 332
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 176
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v19    # "response":I
    :cond_8
    :try_start_6
    const-string v4, "if-None-Match"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-static {v5}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 205
    :cond_9
    :try_start_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 308
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v21    # "url":Ljava/net/URL;
    :catch_2
    move-exception v14

    .line 309
    .local v14, "e":Ljava/net/MalformedURLException;
    :try_start_8
    invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 311
    const-string v4, "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 329
    if-eqz v16, :cond_0

    .line 331
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 332
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 232
    .end local v14    # "e":Ljava/net/MalformedURLException;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v15    # "eTag":Ljava/lang/String;
    .restart local v19    # "response":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_a
    :try_start_a
    sget-object v4, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 233
    sput-object v11, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 234
    const-string v4, "COOKIE"

    sget-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 254
    :catch_4
    move-exception v14

    .line 255
    .local v14, "e":Ljava/lang/Exception;
    const/4 v4, 0x2

    :try_start_b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/youku/network/HttpRequestManager;->state:I

    .line 256
    const-string v4, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 313
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v19    # "response":I
    .end local v21    # "url":Ljava/net/URL;
    :catch_5
    move-exception v14

    .line 314
    .local v14, "e":Ljava/net/ProtocolException;
    :try_start_c
    invoke-virtual {v14}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 316
    const-string v4, "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 329
    if-eqz v16, :cond_0

    .line 331
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 332
    :catch_6
    move-exception v5

    goto/16 :goto_0

    .line 267
    .end local v14    # "e":Ljava/net/ProtocolException;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "eTag":Ljava/lang/String;
    .restart local v19    # "response":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_b
    const/16 v4, 0x190

    move/from16 v0, v19

    if-ne v0, v4, :cond_c

    .line 268
    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    .line 269
    invoke-static/range {v16 .. v16}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/youku/network/HttpRequestManager;->parseLogoutJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 318
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v19    # "response":I
    .end local v21    # "url":Ljava/net/URL;
    :catch_7
    move-exception v14

    .line 319
    .local v14, "e":Ljava/net/SocketTimeoutException;
    :try_start_f
    invoke-virtual {v14}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 321
    const-string v4, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 329
    if-eqz v16, :cond_0

    .line 331
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 332
    :catch_8
    move-exception v5

    goto/16 :goto_0

    .line 271
    .end local v14    # "e":Ljava/net/SocketTimeoutException;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "eTag":Ljava/lang/String;
    .restart local v19    # "response":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_c
    const/16 v4, 0x130

    move/from16 v0, v19

    if-ne v0, v4, :cond_e

    .line 275
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 276
    :try_start_11
    const-string v4, "YoukuCacheTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is Modify:false ETAG = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/network/HttpRequestManager;->formatUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/youku/network/HttpRequestManager;->state:I
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4

    .line 323
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v19    # "response":I
    .end local v21    # "url":Ljava/net/URL;
    :catch_9
    move-exception v14

    .line 324
    .local v14, "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    const-string v4, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 329
    if-eqz v16, :cond_0

    .line 331
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_0

    .line 332
    :catch_a
    move-exception v5

    goto/16 :goto_0

    .line 280
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "eTag":Ljava/lang/String;
    .restart local v19    # "response":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_e
    const/16 v4, 0x19a

    move/from16 v0, v19

    if-ne v0, v4, :cond_12

    .line 281
    :try_start_14
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    .line 282
    invoke-static/range {v16 .. v16}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    .line 283
    .local v20, "returnStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 284
    const-string v4, "time empty"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_4

    .line 329
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v19    # "response":I
    .end local v20    # "returnStr":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_f

    .line 331
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 333
    :cond_f
    :goto_5
    throw v4

    .line 286
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "eTag":Ljava/lang/String;
    .restart local v19    # "response":I
    .restart local v20    # "returnStr":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    :cond_10
    :try_start_16
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 287
    .local v12, "d":D
    double-to-long v4, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "POST"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/youku/http/TudouURLContainer;->updateUrlForPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    .line 298
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/youku/network/HttpRequestManager;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    goto/16 :goto_4

    .line 294
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/youku/http/TudouURLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    goto :goto_6

    .line 303
    .end local v12    # "d":D
    .end local v20    # "returnStr":Ljava/lang/String;
    :cond_12
    const-string v4, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_4

    .line 339
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "eTag":Ljava/lang/String;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "isModify":I
    .end local v19    # "response":I
    .end local v21    # "url":Ljava/net/URL;
    :cond_13
    const-string v4, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/network/HttpRequestManager;->fail_reason:Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "isModify":I
    :catch_b
    move-exception v5

    goto :goto_5
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->requestTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/youku/network/HttpRequestManager;->IScancle:Z

    return v0
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
    .line 590
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/youku/network/HttpRequestManager;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 591
    return-object p1
.end method

.method public request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 4
    .param p1, "httpIntent"    # Lcom/youku/network/HttpIntent;
    .param p2, "callBack"    # Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    .prologue
    const/4 v3, 0x0

    .line 604
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    .line 605
    const-string v2, "method"

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 606
    const-string v2, "is_set_cookie"

    invoke-virtual {p1, v2, v3}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/youku/network/HttpRequestManager;->isSetCookie:Z

    .line 609
    const-string v2, "connect_timeout"

    invoke-virtual {p1, v2, v3}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 611
    .local v0, "connect_timeout_millis":I
    const-string v2, "read_timeout"

    invoke-virtual {p1, v2, v3}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 612
    .local v1, "read_timout_millis":I
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/network/HttpRequestManager;->postdata:Ljava/lang/String;

    .line 613
    const-string v2, "request_tag"

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/network/HttpRequestManager;->requestTag:Ljava/lang/String;

    .line 614
    new-instance v2, Lcom/youku/network/HttpRequestManager$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/youku/network/HttpRequestManager$1;-><init>(Lcom/youku/network/HttpRequestManager;IILcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    iput-object v2, p0, Lcom/youku/network/HttpRequestManager;->task:Lcom/tudou/android/YoukuAsyncTask;

    .line 649
    iget-object v2, p0, Lcom/youku/network/HttpRequestManager;->task:Lcom/tudou/android/YoukuAsyncTask;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/tudou/android/YoukuAsyncTask;->execute([Ljava/lang/Object;)Lcom/tudou/android/YoukuAsyncTask;

    .line 651
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youku/network/HttpRequestManager;->method:Ljava/lang/String;

    .line 117
    return-void
.end method
