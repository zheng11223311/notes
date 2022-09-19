.class Lcom/mobisage/android/MobiSageReqRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageReqRunnable.java"


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 32
    :try_start_0
    new-instance v7, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 33
    .local v7, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 35
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    new-instance v11, Lcom/mobisage/android/SNSSSLSocketFactory;

    invoke-direct {v11}, Lcom/mobisage/android/SNSSSLSocketFactory;-><init>()V

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 37
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 38
    .local v4, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v9, "http.connection.timeout"

    const/16 v10, 0x1388

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 40
    const-string v9, "http.socket.timeout"

    const/16 v10, 0x1388

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 41
    sget-object v9, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 42
    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 43
    new-instance v8, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v8, v4, v7}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 46
    .local v8, "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 48
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-virtual {v9}, Lcom/mobisage/android/MobiSageMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 50
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 51
    .local v6, "responseData":[B
    const-string v9, "Content-Length"

    invoke-interface {v5, v9}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 52
    .local v3, "headers":[Lorg/apache/http/Header;
    array-length v9, v3

    if-nez v9, :cond_1

    .line 53
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    .line 54
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "StatusCode"

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "ResponseBody"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v9, :cond_0

    .line 74
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v10, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v9, v10}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 76
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseData":[B
    .end local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v8    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->run()V

    .line 77
    return-void

    .line 58
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "responseData":[B
    .restart local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v8    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v3, v9

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "contentlength":I
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    .line 60
    array-length v9, v6

    if-eq v9, v1, :cond_2

    .line 61
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "StatusCode"

    const/16 v11, 0x190

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "ErrorText"

    const-string v11, "Bad Response Size"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "contentlength":I
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseData":[B
    .end local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v8    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "StatusCode"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 71
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "ErrorText"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v9, :cond_0

    .line 74
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v10, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v9, v10}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_1

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "contentlength":I
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "responseData":[B
    .restart local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v8    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "StatusCode"

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v9, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v9, v9, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v10, "ResponseBody"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 73
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "contentlength":I
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseData":[B
    .end local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v8    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v10, v10, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v10, :cond_3

    .line 74
    iget-object v10, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v10, v10, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v11, p0, Lcom/mobisage/android/MobiSageReqRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v10, v11}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    :cond_3
    throw v9
.end method
