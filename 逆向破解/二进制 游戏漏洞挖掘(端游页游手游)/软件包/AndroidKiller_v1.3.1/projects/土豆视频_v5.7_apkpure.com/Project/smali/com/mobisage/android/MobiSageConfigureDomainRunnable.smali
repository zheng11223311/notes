.class Lcom/mobisage/android/MobiSageConfigureDomainRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageConfigureDomainRunnable.java"


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageConfigureDomainMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageConfigureDomainMessage;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 20
    const-string v2, "MobiSageSDK"

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 21
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v1, 0x0

    .line 24
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 28
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 30
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v3, "StatusCode"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v3, "ResponseBody"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v2, v3}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 42
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->run()V

    .line 43
    return-void

    .line 35
    :catch_0
    move-exception v2

    .line 37
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v2, v3}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v3, :cond_4

    .line 40
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureDomainRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v3, v4}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    :cond_4
    throw v2
.end method
