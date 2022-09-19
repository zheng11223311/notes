.class Lcom/tudou/detail/DetailModel$17;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getVideoHasGoodAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$17;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$17;->val$videoId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1979
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHasGoodAsyn onFailed failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$17;->val$videoId:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v3}, Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;->onGetVideoHasGoods(Ljava/lang/String;ZZ)V

    .line 1983
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 10
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x1

    .line 1987
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVideoHasGoodAsyn onSuccess str = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const/4 v3, 0x0

    .line 1990
    .local v3, "tHasGood":Z
    const/4 v5, 0x0

    .line 1992
    .local v5, "tSuccess":Z
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1993
    .local v4, "tJsonObj":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1994
    .local v2, "tData":Lorg/json/JSONObject;
    const-string v7, "hasGoods"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ne v7, v6, :cond_1

    move v3, v6

    .line 1995
    :goto_0
    const/4 v5, 0x1

    .line 1999
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    if-eqz v6, :cond_0

    .line 2000
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$17;->val$videoId:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;->onGetVideoHasGoods(Ljava/lang/String;ZZ)V

    .line 2003
    .end local v2    # "tData":Lorg/json/JSONObject;
    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 1994
    .restart local v2    # "tData":Lorg/json/JSONObject;
    .restart local v4    # "tJsonObj":Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1996
    .end local v2    # "tData":Lorg/json/JSONObject;
    .end local v4    # "tJsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1997
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1999
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    if-eqz v6, :cond_0

    .line 2000
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$17;->val$videoId:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;->onGetVideoHasGoods(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1999
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    if-eqz v7, :cond_2

    .line 2000
    iget-object v7, p0, Lcom/tudou/detail/DetailModel$17;->val$l:Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;

    iget-object v8, p0, Lcom/tudou/detail/DetailModel$17;->val$videoId:Ljava/lang/String;

    invoke-interface {v7, v8, v3, v5}, Lcom/tudou/detail/DetailModel$OnVideoHasGoodsGettedListener;->onGetVideoHasGoods(Ljava/lang/String;ZZ)V

    :cond_2
    throw v6
.end method
