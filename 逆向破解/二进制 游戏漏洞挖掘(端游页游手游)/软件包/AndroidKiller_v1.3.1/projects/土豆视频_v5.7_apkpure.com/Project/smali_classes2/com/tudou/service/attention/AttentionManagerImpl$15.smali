.class Lcom/tudou/service/attention/AttentionManagerImpl$15;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
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
    .line 813
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 850
    const-string v0, "\u8ba2\u9605\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v1, "NETWORK"

    invoke-virtual {v0, v1}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 817
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 820
    .local v4, "jsobj":Lorg/json/JSONObject;
    const-string v6, "results"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 821
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 822
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 824
    .local v5, "ob":Lorg/json/JSONObject;
    const-string v6, "-5"

    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 825
    const-string v6, "\u8be5\u81ea\u9891\u9053\u6682\u4e0d\u652f\u6301\u8ba2\u9605"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 826
    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v7, "-5"

    invoke-virtual {v6, v7}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    .line 846
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsobj":Lorg/json/JSONObject;
    .end local v5    # "ob":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 830
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "jsobj":Lorg/json/JSONObject;
    .restart local v5    # "ob":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "-3"

    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 831
    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v7, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 841
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsobj":Lorg/json/JSONObject;
    .end local v5    # "ob":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 842
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "\u8ba2\u9605\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 843
    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v7, "SERVICE"

    invoke-virtual {v6, v7}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_1

    .line 834
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "jsobj":Lorg/json/JSONObject;
    .restart local v5    # "ob":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v6, "desc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 835
    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    iget-object v7, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tudou/service/attention/IAttention$CallBack;->onSucess(Ljava/lang/String;)V

    goto :goto_1

    .line 821
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    .end local v5    # "ob":Lorg/json/JSONObject;
    :cond_3
    const-string v6, "\u8ba2\u9605\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 840
    iget-object v6, p0, Lcom/tudou/service/attention/AttentionManagerImpl$15;->val$callback:Lcom/tudou/service/attention/IAttention$CallBack;

    const-string v7, "SERVICE"

    invoke-virtual {v6, v7}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
