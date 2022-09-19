.class Lcom/tudou/detail/DetailModel$9;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getRecommendAsyn(Lcom/youku/vo/NewVideoDetail;Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$finalId:Ljava/lang/String;

.field final synthetic val$finalType:Lcom/tudou/android/Youku$VideoType;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/android/Youku$VideoType;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$9;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$9;->val$finalType:Lcom/tudou/android/Youku$VideoType;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$9;->val$finalId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;->onVideoRecommendGetted(ZLcom/youku/vo/DetailRecomment;)V

    .line 1614
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1585
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecommendAsyn result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1588
    new-instance v2, Lcom/youku/http/ParseJson;

    invoke-direct {v2, v1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v2, "tParseJson":Lcom/youku/http/ParseJson;
    const/4 v0, 0x0

    .line 1590
    .local v0, "recomment":Lcom/youku/vo/DetailRecomment;
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$finalType:Lcom/tudou/android/Youku$VideoType;

    sget-object v4, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v3, v4, :cond_1

    .line 1591
    invoke-virtual {v2}, Lcom/youku/http/ParseJson;->parseVideoRecommendByAlbum()Lcom/youku/vo/DetailRecomment;

    move-result-object v0

    .line 1595
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1596
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$finalId:Ljava/lang/String;

    iput-object v3, v0, Lcom/youku/vo/DetailRecomment;->id:Ljava/lang/String;

    .line 1597
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$finalType:Lcom/tudou/android/Youku$VideoType;

    iput-object v3, v0, Lcom/youku/vo/DetailRecomment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 1598
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    if-eqz v3, :cond_0

    .line 1599
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;->onVideoRecommendGetted(ZLcom/youku/vo/DetailRecomment;)V

    .line 1607
    .end local v0    # "recomment":Lcom/youku/vo/DetailRecomment;
    .end local v2    # "tParseJson":Lcom/youku/http/ParseJson;
    :cond_0
    :goto_1
    return-void

    .line 1593
    .restart local v0    # "recomment":Lcom/youku/vo/DetailRecomment;
    .restart local v2    # "tParseJson":Lcom/youku/http/ParseJson;
    :cond_1
    invoke-virtual {v2}, Lcom/youku/http/ParseJson;->parseVideoRecommend()Lcom/youku/vo/DetailRecomment;

    move-result-object v0

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    if-eqz v3, :cond_0

    .line 1603
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$9;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/tudou/detail/DetailModel$OnVideoRecommendGettedListener;->onVideoRecommendGetted(ZLcom/youku/vo/DetailRecomment;)V

    goto :goto_1
.end method
