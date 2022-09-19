.class Lcom/tudou/detail/DetailModel$12;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getVideoDetailAsyn(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

.field final synthetic val$playlistId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$12;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$12;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$12;->val$playlistId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoDetailAsyn onFailed failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$12;->val$id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;->onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 1717
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1721
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoDetailAsyn onSuccess str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :try_start_0
    const-class v4, Lcom/youku/vo/NewVideoDetail;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/NewVideoDetail;

    .line 1725
    .local v2, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1727
    .local v1, "success":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1728
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$12;->val$playlistId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1729
    iget-object v3, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$12;->val$playlistId:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    .line 1731
    :cond_1
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    if-eqz v3, :cond_2

    .line 1732
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$12;->val$id:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;->onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 1741
    .end local v1    # "success":Z
    .end local v2    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_2
    :goto_1
    return-void

    .restart local v2    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_3
    move v1, v3

    .line 1725
    goto :goto_0

    .line 1735
    .restart local v1    # "success":Z
    :cond_4
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    if-eqz v3, :cond_2

    .line 1736
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$12;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$12;->val$id:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;->onVideoDetailGetted(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1739
    .end local v1    # "success":Z
    .end local v2    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
