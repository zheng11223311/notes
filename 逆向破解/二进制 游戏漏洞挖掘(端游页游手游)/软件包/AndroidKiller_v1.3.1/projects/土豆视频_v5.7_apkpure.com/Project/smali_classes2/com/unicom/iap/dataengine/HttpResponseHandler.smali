.class public Lcom/unicom/iap/dataengine/HttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpResponseHandler.java"


# instance fields
.field private callback:Lcom/unicom/iap/dataengine/ServerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/unicom/iap/dataengine/HttpResponseHandler;)Lcom/unicom/iap/dataengine/ServerCallback;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/unicom/iap/dataengine/HttpResponseHandler;->callback:Lcom/unicom/iap/dataengine/ServerCallback;

    return-object v0
.end method


# virtual methods
.method public getCallback()Lcom/unicom/iap/dataengine/ServerCallback;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/unicom/iap/dataengine/HttpResponseHandler;->callback:Lcom/unicom/iap/dataengine/ServerCallback;

    return-object v0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/unicom/iap/dataengine/HttpResponseHandler;->callback:Lcom/unicom/iap/dataengine/ServerCallback;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/unicom/iap/dataengine/HttpResponseHandler;->callback:Lcom/unicom/iap/dataengine/ServerCallback;

    const/4 v1, 0x0

    const-string v2, "1000"

    const-string v3, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25!"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/unicom/iap/dataengine/ServerCallback;->serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 33
    move-object v0, p1

    .line 34
    .local v0, "response_string":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unicom/iap/dataengine/HttpResponseHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/unicom/iap/dataengine/HttpResponseHandler$1;-><init>(Lcom/unicom/iap/dataengine/HttpResponseHandler;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method public setCallback(Lcom/unicom/iap/dataengine/ServerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unicom/iap/dataengine/ServerCallback;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unicom/iap/dataengine/HttpResponseHandler;->callback:Lcom/unicom/iap/dataengine/ServerCallback;

    .line 20
    return-void
.end method
