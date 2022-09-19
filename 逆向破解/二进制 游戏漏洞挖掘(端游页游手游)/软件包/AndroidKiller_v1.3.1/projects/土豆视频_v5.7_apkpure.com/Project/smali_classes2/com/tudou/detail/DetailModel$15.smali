.class Lcom/tudou/detail/DetailModel$15;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getActorInfoAsyn(Ljava/lang/String;ILcom/tudou/detail/DetailModel$OnActorInfoGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$actorId:I

.field final synthetic val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;I)V
    .locals 0

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$15;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    iput p3, p0, Lcom/tudou/detail/DetailModel$15;->val$actorId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1819
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActorInfoAsyn onFailed failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    iget v1, p0, Lcom/tudou/detail/DetailModel$15;->val$actorId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;->onActorInfoGetted(ILorg/json/JSONObject;Z)V

    .line 1823
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 12
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v8, 0x0

    .line 1827
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1828
    .local v2, "str":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getActorInfoAsyn onSuccess str = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const/4 v3, 0x0

    .line 1830
    .local v3, "tHasGood":Z
    const/4 v7, 0x0

    .line 1831
    .local v7, "tSuccess":Z
    const/4 v4, 0x0

    .line 1832
    .local v4, "tJsonObj":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 1834
    .local v6, "tRet":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    .local v5, "tJsonObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "error_code_api"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v7, 0x1

    .line 1836
    :goto_0
    if-eqz v7, :cond_0

    .line 1837
    const-string v8, "results"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1838
    .local v1, "results":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 1839
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1840
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1849
    .end local v1    # "results":Lorg/json/JSONArray;
    :cond_0
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    if-eqz v8, :cond_4

    .line 1850
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    iget v9, p0, Lcom/tudou/detail/DetailModel$15;->val$actorId:I

    invoke-interface {v8, v9, v6, v7}, Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;->onActorInfoGetted(ILorg/json/JSONObject;Z)V

    move-object v4, v5

    .line 1853
    .end local v5    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v5    # "tJsonObj":Lorg/json/JSONObject;
    :cond_2
    move v7, v8

    .line 1835
    goto :goto_0

    .line 1846
    .end local v5    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    sget-object v8, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1849
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    if-eqz v8, :cond_1

    .line 1850
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    iget v9, p0, Lcom/tudou/detail/DetailModel$15;->val$actorId:I

    invoke-interface {v8, v9, v6, v7}, Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;->onActorInfoGetted(ILorg/json/JSONObject;Z)V

    goto :goto_1

    .line 1849
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    if-eqz v9, :cond_3

    .line 1850
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$15;->val$l:Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;

    iget v10, p0, Lcom/tudou/detail/DetailModel$15;->val$actorId:I

    invoke-interface {v9, v10, v6, v7}, Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;->onActorInfoGetted(ILorg/json/JSONObject;Z)V

    :cond_3
    throw v8

    .line 1849
    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v5    # "tJsonObj":Lorg/json/JSONObject;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    goto :goto_3

    .line 1846
    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v5    # "tJsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    goto :goto_2

    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v5    # "tJsonObj":Lorg/json/JSONObject;
    :cond_4
    move-object v4, v5

    .end local v5    # "tJsonObj":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    goto :goto_1
.end method
