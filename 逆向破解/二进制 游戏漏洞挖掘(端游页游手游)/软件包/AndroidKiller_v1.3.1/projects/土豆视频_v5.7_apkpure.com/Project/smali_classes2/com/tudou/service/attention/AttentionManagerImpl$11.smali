.class Lcom/tudou/service/attention/AttentionManagerImpl$11;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$11;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$11;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl$11;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onFail(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 561
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 564
    .local v5, "jsobj":Lorg/json/JSONObject;
    const-string v7, "results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 565
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 567
    new-instance v1, Lcom/tudou/service/attention/IAttention$Results;

    invoke-direct {v1}, Lcom/tudou/service/attention/IAttention$Results;-><init>()V

    .line 568
    .local v1, "data":Lcom/tudou/service/attention/IAttention$Results;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/tudou/service/attention/IAttention$Results;->code:I

    .line 569
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/tudou/service/attention/IAttention$Results;->id:I

    .line 570
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "desc"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tudou/service/attention/IAttention$Results;->desc:Ljava/lang/String;

    .line 572
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "data":Lcom/tudou/service/attention/IAttention$Results;
    :cond_0
    iget-object v7, p0, Lcom/tudou/service/attention/AttentionManagerImpl$11;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    invoke-virtual {v7, v6}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onSucess(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "jsobj":Lorg/json/JSONObject;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    :goto_1
    return-void

    .line 575
    :catch_0
    move-exception v3

    .line 576
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 577
    iget-object v7, p0, Lcom/tudou/service/attention/AttentionManagerImpl$11;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_1
.end method
