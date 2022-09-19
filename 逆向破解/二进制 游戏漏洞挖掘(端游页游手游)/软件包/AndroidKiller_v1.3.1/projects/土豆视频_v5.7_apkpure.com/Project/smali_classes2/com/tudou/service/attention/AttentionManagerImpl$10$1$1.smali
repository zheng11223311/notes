.class Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/service/attention/AttentionManagerImpl$10$1;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$10$1;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1;->this$2:Lcom/tudou/service/attention/AttentionManagerImpl$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v0, "test3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userlist1 data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v1, "\u5173\u6ce8\u9875\u4e91\u8bb0\u5f55\u540c\u6b65\u5931\u8d25"

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 427
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "dataString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    .local v5, "jsobj":Lorg/json/JSONObject;
    const-string v7, "results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 368
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 371
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 373
    .local v6, "ob":Lorg/json/JSONObject;
    const-string v7, "code"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 376
    .local v1, "code":I
    const/4 v7, -0x3

    if-eq v1, v7, :cond_0

    const/4 v7, -0x5

    if-eq v1, v7, :cond_0

    if-eqz v1, :cond_0

    const-string v7, "desc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u4e0d\u53ef\u4ee5\u91cd\u590d\u8ba2\u9605"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 382
    :cond_0
    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "code":I
    .end local v6    # "ob":Lorg/json/JSONObject;
    :cond_2
    new-instance v7, Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1$1;

    invoke-direct {v7, p0, v4}, Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Lcom/tudou/service/attention/AttentionManagerImpl$10$1$1$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "jsobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 405
    :catch_0
    move-exception v7

    goto :goto_1
.end method
