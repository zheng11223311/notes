.class Lcom/tudou/detail/DetailModel$4;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->digVideo(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDigComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoDigComplete;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$4;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$4;->val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$4;->val$vid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1361
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$4;->val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$4;->val$vid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnVideoDigComplete;->onVideoDigComplete(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1362
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 11
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1340
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 1341
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1343
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1345
    .local v1, "error":I
    if-eqz v1, :cond_0

    const/4 v5, -0x2

    if-ne v1, v5, :cond_2

    .line 1347
    :cond_0
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$4;->val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$4;->val$vid:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v1}, Lcom/tudou/detail/DetailModel$OnVideoDigComplete;->onVideoDigComplete(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1357
    .end local v1    # "error":I
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 1349
    .restart local v1    # "error":I
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1350
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$4;->val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$4;->val$vid:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v2, v1}, Lcom/tudou/detail/DetailModel$OnVideoDigComplete;->onVideoDigComplete(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v1    # "error":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$4;->val$callback:Lcom/tudou/detail/DetailModel$OnVideoDigComplete;

    iget-object v6, p0, Lcom/tudou/detail/DetailModel$4;->val$vid:Ljava/lang/String;

    invoke-interface {v5, v9, v6, v10, v9}, Lcom/tudou/detail/DetailModel$OnVideoDigComplete;->onVideoDigComplete(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1354
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
