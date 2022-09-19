.class Lcom/tudou/detail/DetailModel$13;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getGoodsInfoAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$13;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transformGoodsJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    const-string v0, ""

    .line 1775
    :goto_0
    return-object v0

    .line 1772
    :cond_0
    const-string v0, "\"8\": ["

    const-string v1, "\"mCommodity\": ["

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"10\": ["

    const-string v2, "\"mShop\": ["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"11\": ["

    const-string v2, "\"mCommodityActivities\": ["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1775
    goto :goto_0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1780
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGoodsInfoAsyn onFailed failReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;->onGetVideoGoodsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 1784
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1752
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1753
    .local v2, "str":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tudou/detail/DetailModel$13;->transformGoodsJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1754
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGoodsInfoAsyn onSuccess str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    new-instance v3, Lcom/tudou/detail/vo/GoodsInfo;

    invoke-direct {v3}, Lcom/tudou/detail/vo/GoodsInfo;-><init>()V

    .line 1757
    .local v3, "tGoodsInfo":Lcom/tudou/detail/vo/GoodsInfo;
    :try_start_0
    invoke-static {v2, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/tudou/detail/vo/GoodsInfo;

    move-object v3, v0

    .line 1758
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    iput-object v4, v3, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    if-eqz v4, :cond_0

    .line 1764
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;->onGetVideoGoodsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1761
    :try_start_1
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    if-eqz v4, :cond_0

    .line 1764
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;->onGetVideoGoodsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/GoodsInfo;)V

    goto :goto_0

    .line 1763
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    if-eqz v5, :cond_1

    .line 1764
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$13;->val$l:Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;

    iget-object v6, p0, Lcom/tudou/detail/DetailModel$13;->val$videoId:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Lcom/tudou/detail/DetailModel$OnVideoGoodsInfoGetListener;->onGetVideoGoodsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/GoodsInfo;)V

    :cond_1
    throw v4
.end method
