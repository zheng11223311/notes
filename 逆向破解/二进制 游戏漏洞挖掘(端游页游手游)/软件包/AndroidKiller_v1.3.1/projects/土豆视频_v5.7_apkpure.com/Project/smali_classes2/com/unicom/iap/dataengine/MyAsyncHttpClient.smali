.class public Lcom/unicom/iap/dataengine/MyAsyncHttpClient;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "MyAsyncHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "paramAsyncHttpResponseHandler"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 30
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 32
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v8, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 33
    .local v8, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 34
    invoke-virtual {p0}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p0}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/unicom/iap/dataengine/MyAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v8    # "entity":Lorg/apache/http/entity/StringEntity;
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v7

    .line 36
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
