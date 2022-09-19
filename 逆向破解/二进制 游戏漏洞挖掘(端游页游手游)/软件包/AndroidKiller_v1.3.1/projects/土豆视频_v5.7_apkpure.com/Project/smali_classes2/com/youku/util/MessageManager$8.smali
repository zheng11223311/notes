.class Lcom/youku/util/MessageManager$8;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/MessageManager;->getRefreshCount(Lcom/youku/util/IMessageFinish;)V
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
    .line 385
    iput-object p1, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iput-object p2, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v0}, Lcom/youku/util/IMessageFinish;->onFailed()V

    .line 413
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "str":Ljava/lang/String;
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user====data===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 394
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    const-string v5, "1"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/util/MessageManager;->cheMessage:I

    .line 395
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget-object v5, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget v5, v5, Lcom/youku/util/MessageManager;->cheMessage:I

    iput v5, v4, Lcom/youku/util/MessageManager;->totMessage:I

    .line 396
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    const-string v5, "3"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/util/MessageManager;->sysMessage:I

    .line 397
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget-object v5, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget v5, v5, Lcom/youku/util/MessageManager;->totMessage:I

    iget-object v6, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget v6, v6, Lcom/youku/util/MessageManager;->sysMessage:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/youku/util/MessageManager;->totMessage:I

    .line 398
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    const-string v5, "6"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/util/MessageManager;->priMessage:I

    .line 399
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget-object v5, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget v5, v5, Lcom/youku/util/MessageManager;->totMessage:I

    iget-object v6, p0, Lcom/youku/util/MessageManager$8;->this$0:Lcom/youku/util/MessageManager;

    iget v6, v6, Lcom/youku/util/MessageManager;->priMessage:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/youku/util/MessageManager;->totMessage:I

    .line 400
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    if-eqz v4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/youku/util/MessageManager$8;->val$onFinish:Lcom/youku/util/IMessageFinish;

    invoke-interface {v4}, Lcom/youku/util/IMessageFinish;->onFailed()V

    goto :goto_0
.end method
