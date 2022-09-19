.class Lcom/youku/player/util/FreeFlowUtil$1;
.super Ljava/lang/Object;
.source "FreeFlowUtil.java"

# interfaces
.implements Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/util/FreeFlowUtil;->getUnicomFreeFlowState(Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/util/FreeFlowUtil;

.field final synthetic val$mCallBackFreeFlow:Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;


# direct methods
.method constructor <init>(Lcom/youku/player/util/FreeFlowUtil;Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/util/FreeFlowUtil$1;->this$0:Lcom/youku/player/util/FreeFlowUtil;

    iput-object p2, p0, Lcom/youku/player/util/FreeFlowUtil$1;->val$mCallBackFreeFlow:Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/player/util/FreeFlowUtil$1;->val$mCallBackFreeFlow:Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;

    invoke-interface {v0, p1}, Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;->failGetFreeFlow(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/youku/player/util/FreeFlowUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======request====\u5931\u8d25==failReason===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onSuccess(Lcom/youku/player/network/HttpRequestManager;)V
    .locals 6
    .param p1, "request"    # Lcom/youku/player/network/HttpRequestManager;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/youku/player/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "josnJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 49
    iget-object v3, p0, Lcom/youku/player/util/FreeFlowUtil$1;->val$mCallBackFreeFlow:Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;

    invoke-interface {v3}, Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;->sucessGetFreeFlow()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "josnJsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/player/util/FreeFlowUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======request====\u6210\u529f====request=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/youku/player/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 51
    .restart local v1    # "josnJsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/util/FreeFlowUtil$1;->val$mCallBackFreeFlow:Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;

    const-string v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/youku/player/util/FreeFlowUtil$CallBackFreeFlow;->failGetFreeFlow(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "josnJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
