.class public Lcom/mobisage/android/MobiSageConfigureDomainMessage;
.super Lcom/mobisage/android/MobiSageReqMessage;
.source "MobiSageConfigureDomainMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageReqMessage;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureDomainMessage;->params:Landroid/os/Bundle;

    const-string v6, "cfgurl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "key"

    const-string v6, "abcdefghijklmnopqrstuvwxyz012345"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v5, "c"

    const-string/jumbo v6, "svrinfo"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v5, p0, Lcom/mobisage/android/MobiSageConfigureDomainMessage;->params:Landroid/os/Bundle;

    const-string v6, "isupdate"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    const-string v5, "f"

    const-string/jumbo v6, "version"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_0
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 48
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v4

    .line 40
    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v4

    .line 43
    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 46
    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 41
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 38
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;-><init>(Lcom/mobisage/android/MobiSageConfigureDomainMessage;)V

    return-object v0
.end method
