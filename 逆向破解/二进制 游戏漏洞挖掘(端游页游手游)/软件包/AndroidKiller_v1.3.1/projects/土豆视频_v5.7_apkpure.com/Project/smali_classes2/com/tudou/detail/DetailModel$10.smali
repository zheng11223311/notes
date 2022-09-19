.class Lcom/tudou/detail/DetailModel$10;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getVideoListAsyn(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

.field final synthetic val$type:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/android/Youku$VideoType;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;)V
    .locals 0

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$10;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$10;->val$type:Lcom/tudou/android/Youku$VideoType;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$10;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$10;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$10;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$10;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;->onVideoListGetted(ZLcom/tudou/detail/vo/VideoList;)V

    .line 1665
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1649
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 1650
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoListAsyn result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$10;->val$type:Lcom/tudou/android/Youku$VideoType;

    invoke-static {v1, v2}, Lcom/tudou/detail/vo/VideoList;->createFromJson(Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v0

    .line 1652
    .local v0, "list":Lcom/tudou/detail/vo/VideoList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$10;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel;->access$1000(Lcom/tudou/detail/DetailModel;)Lcom/tudou/detail/VideoListCache;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$10;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/tudou/detail/VideoListCache;->add(Ljava/lang/String;Lcom/tudou/detail/vo/VideoList;)V

    .line 1655
    :cond_0
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$10;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    if-eqz v2, :cond_1

    .line 1656
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$10;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;->onVideoListGetted(ZLcom/tudou/detail/vo/VideoList;)V

    .line 1658
    :cond_1
    return-void
.end method
