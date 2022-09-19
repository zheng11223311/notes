.class Lcom/tudou/ui/fragment/VideoRecommendFragment$2;
.super Ljava/lang/Object;
.source "VideoRecommendFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VideoRecommendFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$500(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 240
    :try_start_0
    const-string v2, "AgreementFragment==="

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v2, Lcom/youku/vo/RecommendVideoResults;

    invoke-direct {v2}, Lcom/youku/vo/RecommendVideoResults;-><init>()V

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RecommendVideoResults;

    .line 243
    .local v1, "recommendVedio":Lcom/youku/vo/RecommendVideoResults;
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    iget-object v3, v1, Lcom/youku/vo/RecommendVideoResults;->recommendItems:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$002(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 244
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$000(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$500(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    .end local v1    # "recommendVedio":Lcom/youku/vo/RecommendVideoResults;
    :goto_0
    return-void

    .line 247
    .restart local v1    # "recommendVedio":Lcom/youku/vo/RecommendVideoResults;
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$500(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v1    # "recommendVedio":Lcom/youku/vo/RecommendVideoResults;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
