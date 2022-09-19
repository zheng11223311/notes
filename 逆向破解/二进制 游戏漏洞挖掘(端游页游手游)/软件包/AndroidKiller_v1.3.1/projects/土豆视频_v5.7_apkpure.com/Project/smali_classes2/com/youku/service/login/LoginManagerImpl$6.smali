.class Lcom/youku/service/login/LoginManagerImpl$6;
.super Ljava/lang/Object;
.source "LoginManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/service/login/LoginManagerImpl;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/login/LoginManagerImpl;

.field final synthetic val$call:Lcom/youku/service/login/ILogin$ICallBack;


# direct methods
.method constructor <init>(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl$6;->this$0:Lcom/youku/service/login/LoginManagerImpl;

    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl$6;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl$6;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 476
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "str":Ljava/lang/String;
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sucess======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v2, 0x0

    .line 449
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 450
    .local v4, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 452
    .local v0, "code":I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 459
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-eqz v2, :cond_1

    .line 460
    const-string v6, "msg"

    invoke-static {v2, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    const-string v6, "code"

    invoke-static {v2, v6}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 462
    const-string v6, "success"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/youku/service/login/LoginManagerImpl$6;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v6}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 470
    :goto_1
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/16 v6, 0x64

    if-ne v0, v6, :cond_1

    .line 466
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v7, 0x7f0d02d3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    :cond_1
    iget-object v6, p0, Lcom/youku/service/login/LoginManagerImpl$6;->val$call:Lcom/youku/service/login/ILogin$ICallBack;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_1
.end method
