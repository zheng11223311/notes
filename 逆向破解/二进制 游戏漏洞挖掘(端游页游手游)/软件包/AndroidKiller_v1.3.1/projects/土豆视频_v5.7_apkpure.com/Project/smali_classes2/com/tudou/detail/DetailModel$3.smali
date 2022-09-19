.class Lcom/tudou/detail/DetailModel$3;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->vote(Ljava/lang/String;IIILcom/tudou/detail/DetailModel$OnVoteComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

.field final synthetic val$vid:Ljava/lang/String;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVoteComplete;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$3;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$3;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$3;->val$vid:Ljava/lang/String;

    iput p4, p0, Lcom/tudou/detail/DetailModel$3;->val$widgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$3;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$3;->val$vid:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/detail/DetailModel$3;->val$widgetId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVoteComplete;->onVoteComplete(ZLjava/lang/String;ILjava/lang/String;I)V

    .line 1325
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 15
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1303
    invoke-virtual/range {p1 .. p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v14

    .line 1304
    .local v14, "result":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v13, "object":Lorg/json/JSONObject;
    const-string v0, "error_code_api"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1308
    .local v5, "error":I
    if-nez v5, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$3;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$3;->val$vid:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/detail/DetailModel$3;->val$widgetId:I

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVoteComplete;->onVoteComplete(ZLjava/lang/String;ILjava/lang/String;I)V

    .line 1320
    .end local v5    # "error":I
    .end local v13    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1312
    .restart local v5    # "error":I
    .restart local v13    # "object":Lorg/json/JSONObject;
    :cond_1
    const-string v0, "desc_api"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1313
    .local v4, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$3;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$3;->val$vid:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/detail/DetailModel$3;->val$widgetId:I

    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVoteComplete;->onVoteComplete(ZLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1315
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "error":I
    .end local v13    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 1316
    .local v12, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$3;->val$lis:Lcom/tudou/detail/DetailModel$OnVoteComplete;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tudou/detail/DetailModel$3;->val$vid:Ljava/lang/String;

    iget v9, p0, Lcom/tudou/detail/DetailModel$3;->val$widgetId:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-interface/range {v6 .. v11}, Lcom/tudou/detail/DetailModel$OnVoteComplete;->onVoteComplete(ZLjava/lang/String;ILjava/lang/String;I)V

    .line 1317
    sget-object v0, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
