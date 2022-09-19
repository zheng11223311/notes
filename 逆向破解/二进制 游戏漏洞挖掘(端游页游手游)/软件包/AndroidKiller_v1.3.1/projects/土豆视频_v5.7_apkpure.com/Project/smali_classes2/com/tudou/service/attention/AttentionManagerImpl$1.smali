.class Lcom/tudou/service/attention/AttentionManagerImpl$1;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->isAttention(Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "jsobj":Lorg/json/JSONObject;
    const-string v4, "is_sub"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "flag":I
    if-nez v2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v5, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    .line 78
    .end local v2    # "flag":I
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 72
    .restart local v2    # "flag":I
    .restart local v3    # "jsobj":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v5, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2    # "flag":I
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v5, p0, Lcom/tudou/service/attention/AttentionManagerImpl$1;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
