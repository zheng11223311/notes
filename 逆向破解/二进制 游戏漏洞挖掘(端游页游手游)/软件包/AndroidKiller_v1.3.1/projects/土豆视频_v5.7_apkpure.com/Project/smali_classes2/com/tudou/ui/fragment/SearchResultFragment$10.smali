.class Lcom/tudou/ui/fragment/SearchResultFragment$10;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;->getBokeList(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2200(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 875
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 877
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 878
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$800(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/vo/SokuPodcast;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 882
    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 859
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, "str":Ljava/lang/String;
    const-string v3, "dazhu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bokeResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-class v3, Lcom/youku/vo/SearchPodcast;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchPodcast;

    .line 863
    .local v1, "rPodcast":Lcom/youku/vo/SearchPodcast;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v4, v1, Lcom/youku/vo/SearchPodcast;->results:Lcom/youku/vo/SokuPodcast;

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$802(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SokuPodcast;)Lcom/youku/vo/SokuPodcast;

    .line 864
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$800(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/vo/SokuPodcast;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$2100(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SokuPodcast;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v1    # "rPodcast":Lcom/youku/vo/SearchPodcast;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment$10;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    const/16 v4, 0x3e7

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
