.class Lcom/mobisage/android/MobiSageConfigureMessage;
.super Lcom/mobisage/android/MobiSageReqMessage;
.source "MobiSageConfigureMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageReqMessage;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v5

    const-string v6, "cfgsvr"

    invoke-virtual {v5, v6}, Lcom/mobisage/android/MobiSageConfigureModule;->getSVRUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-boolean v5, Lcom/mobisage/android/MobiSageEnviroment;->isTestMode:Z

    if-nez v5, :cond_0

    .line 25
    const-string v5, "Host"

    const-string v6, "config.adsage.com"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "key"

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v5, "c"

    const-string v6, "mobi"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 47
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    move-object v2, v4

    .line 43
    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    move-object v2, v4

    .line 45
    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 42
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageConfigureRunnable;-><init>(Lcom/mobisage/android/MobiSageConfigureMessage;)V

    return-object v0
.end method
