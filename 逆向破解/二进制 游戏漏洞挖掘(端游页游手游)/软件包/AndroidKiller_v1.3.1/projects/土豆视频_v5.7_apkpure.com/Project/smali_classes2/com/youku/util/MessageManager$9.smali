.class Lcom/youku/util/MessageManager$9;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/MessageManager;

.field final synthetic val$onFinish:Lcom/youku/util/IMessageFinish;


# direct methods
.method constructor <init>(Lcom/youku/util/MessageManager;Lcom/youku/util/IMessageFinish;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/youku/util/MessageManager$9;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 461
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "str":Ljava/lang/String;
    const-string v4, "updateRefreshCount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRefreshCount====str===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "object":Lorg/json/JSONObject;
    const-string v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "state":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_0

    .line 446
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onSuccess()V

    .line 455
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v1    # "object":Lorg/json/JSONObject;
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onFailed()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/youku/util/MessageManager$9;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onFailed()V

    goto :goto_0
.end method
