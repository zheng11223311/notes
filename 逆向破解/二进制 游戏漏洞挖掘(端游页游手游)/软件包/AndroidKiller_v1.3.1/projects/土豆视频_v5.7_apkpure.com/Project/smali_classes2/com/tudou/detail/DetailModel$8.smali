.class Lcom/tudou/detail/DetailModel$8;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getVideoFeatureAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;)V
    .locals 0

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$8;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$8;->val$vid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;->onVideoFeatureGetted(ZLcom/tudou/detail/vo/DetailFeature;)V

    .line 1542
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1524
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoFeatureAsyn result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-class v2, Lcom/tudou/detail/vo/DetailFeature;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/DetailFeature;

    .line 1527
    .local v0, "feature":Lcom/tudou/detail/vo/DetailFeature;
    if-eqz v0, :cond_1

    .line 1528
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$8;->val$vid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tudou/detail/vo/DetailFeature;->vid:Ljava/lang/String;

    .line 1529
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    if-eqz v2, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;->onVideoFeatureGetted(ZLcom/tudou/detail/vo/DetailFeature;)V

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$8;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/tudou/detail/DetailModel$OnVideoFeatureGettedListener;->onVideoFeatureGetted(ZLcom/tudou/detail/vo/DetailFeature;)V

    goto :goto_0
.end method
