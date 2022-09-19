.class public Lcom/youku/pushsdk/network/NetworkManager;
.super Landroid/os/AsyncTask;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT:I = 0x2710

.field private static final SO_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private executeResult:Lcom/youku/pushsdk/network/INetworkResult;

.field private requestInfo:Lcom/youku/pushsdk/network/RequestInfo;

.field private responseStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/youku/pushsdk/network/NetworkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/network/NetworkManager;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/youku/pushsdk/network/RequestInfo;Lcom/youku/pushsdk/network/INetworkResult;)V
    .locals 0
    .param p1, "requestInfo"    # Lcom/youku/pushsdk/network/RequestInfo;
    .param p2, "networkResult"    # Lcom/youku/pushsdk/network/INetworkResult;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/youku/pushsdk/network/NetworkManager;->requestInfo:Lcom/youku/pushsdk/network/RequestInfo;

    .line 40
    iput-object p2, p0, Lcom/youku/pushsdk/network/NetworkManager;->executeResult:Lcom/youku/pushsdk/network/INetworkResult;

    .line 41
    return-void
.end method

.method private doPost()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 48
    const-string v6, ""

    .line 50
    .local v6, "res":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/youku/pushsdk/network/NetworkManager;->requestInfo:Lcom/youku/pushsdk/network/RequestInfo;

    invoke-virtual {v8}, Lcom/youku/pushsdk/network/RequestInfo;->getParams()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/youku/pushsdk/network/NetworkManager;->getPostPatternParams(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lcom/youku/pushsdk/network/NetworkManager;->requestInfo:Lcom/youku/pushsdk/network/RequestInfo;

    invoke-virtual {v8}, Lcom/youku/pushsdk/network/RequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 52
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v2, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 54
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x2710

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    const/16 v8, 0x2710

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 58
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 59
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 60
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    .line 61
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 63
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    .line 64
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    sget-object v8, Lcom/youku/pushsdk/network/NetworkManager;->TAG:Ljava/lang/String;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 68
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iput-boolean v10, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    .line 71
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    iput-boolean v10, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    .line 76
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v10, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    .line 81
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPostPatternParams(Ljava/util/HashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    return-object v1

    .line 90
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/youku/pushsdk/network/NetworkManager;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/youku/pushsdk/network/NetworkManager;->doPost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/youku/pushsdk/network/NetworkManager;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/youku/pushsdk/network/NetworkManager;->responseStatus:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/pushsdk/network/NetworkManager;->executeResult:Lcom/youku/pushsdk/network/INetworkResult;

    invoke-interface {v0, p1}, Lcom/youku/pushsdk/network/INetworkResult;->success(Ljava/lang/String;)V

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/youku/pushsdk/network/NetworkManager;->executeResult:Lcom/youku/pushsdk/network/INetworkResult;

    invoke-interface {v0, p1}, Lcom/youku/pushsdk/network/INetworkResult;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
