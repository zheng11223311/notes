.class Lcom/mobisage/android/MobiSageConfigureRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageConfigureRunnable.java"


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageConfigureMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageConfigureMessage;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 19
    const-string v2, "MobiSageSDK"

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 21
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v1, 0x0

    .line 22
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    const-string v3, "StatusCode"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

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

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v2, v3}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 35
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->run()V

    .line 36
    return-void

    .line 28
    :catch_0
    move-exception v2

    .line 30
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v2, v3}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 32
    :cond_3
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v3, :cond_4

    .line 33
    iget-object v3, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageConfigureRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    invoke-interface {v3, v4}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    :cond_4
    throw v2
.end method
