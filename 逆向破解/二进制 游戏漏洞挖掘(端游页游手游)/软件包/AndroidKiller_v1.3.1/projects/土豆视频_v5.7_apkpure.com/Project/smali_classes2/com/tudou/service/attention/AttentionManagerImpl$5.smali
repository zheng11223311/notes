.class Lcom/tudou/service/attention/AttentionManagerImpl$5;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->cancelAttention(Landroid/content/Context;Ljava/util/ArrayList;ILcom/tudou/service/attention/IAttention$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$CallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v1, "NETWORK"

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "jsobj":Lorg/json/JSONObject;
    const-string v4, "success"

    const-string v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V

    .line 195
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 188
    .restart local v3    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "failReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v5, "SERVICE"

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v2    # "failReason":Ljava/lang/String;
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$5;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v5, "SERVICE"

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
