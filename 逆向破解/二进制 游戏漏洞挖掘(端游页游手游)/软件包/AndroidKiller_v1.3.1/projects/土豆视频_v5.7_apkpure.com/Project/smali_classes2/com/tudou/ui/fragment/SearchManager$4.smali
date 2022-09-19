.class Lcom/tudou/ui/fragment/SearchManager$4;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->excueGetHotWords(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$4;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 510
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 9
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "str":Ljava/lang/String;
    const-string v6, "dazhu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "str : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchManager$4;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v6, v6, Lcom/tudou/ui/fragment/SearchManager;->inputBoxHotWords:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 488
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchManager$4;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v6, v6, Lcom/tudou/ui/fragment/SearchManager;->inputBoxHotWords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 490
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    .local v2, "object":Lorg/json/JSONObject;
    const-string v6, "results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 492
    .local v3, "results":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 493
    .local v5, "videos":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 494
    const-string v6, "video"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 496
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 498
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchManager$4;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v7, v6, Lcom/tudou/ui/fragment/SearchManager;->inputBoxHotWords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchManager$4;->val$handler:Landroid/os/Handler;

    if-eqz v6, :cond_3

    .line 502
    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchManager$4;->val$handler:Landroid/os/Handler;

    const/16 v7, 0xc2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "results":Lorg/json/JSONObject;
    .end local v5    # "videos":Lorg/json/JSONArray;
    :cond_3
    :goto_1
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
