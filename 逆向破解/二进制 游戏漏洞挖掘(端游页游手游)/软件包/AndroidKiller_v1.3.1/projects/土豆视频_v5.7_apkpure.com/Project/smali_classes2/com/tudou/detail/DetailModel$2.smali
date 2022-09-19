.class Lcom/tudou/detail/DetailModel$2;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getDanmuProfileAsyn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$2;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$2;->val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$2;->val$vid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1291
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$2;->val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$2;->val$vid:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v2}, Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;->onComplete(ZLjava/lang/String;Z)V

    .line 1292
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 11
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v10, 0x0

    .line 1269
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 1270
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDanmuProfileAsyn onSuccess result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1273
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v3, "object":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1275
    .local v2, "error":I
    if-nez v2, :cond_1

    .line 1276
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1277
    .local v5, "tData":Lorg/json/JSONObject;
    const-string v6, "danmu_enable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1278
    .local v1, "enable":Z
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$2;->val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/tudou/detail/DetailModel$2;->val$vid:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1}, Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;->onComplete(ZLjava/lang/String;Z)V

    .line 1287
    .end local v1    # "enable":Z
    .end local v2    # "error":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v5    # "tData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1280
    .restart local v2    # "error":I
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$2;->val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tudou/detail/DetailModel$2;->val$vid:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;->onComplete(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    .end local v2    # "error":I
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$2;->val$lis:Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$2;->val$vid:Ljava/lang/String;

    invoke-interface {v6, v10, v7, v10}, Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;->onComplete(ZLjava/lang/String;Z)V

    .line 1284
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
