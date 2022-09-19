.class Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;
.super Ljava/lang/Object;
.source "HistoryEpisodeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadFromServer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 322
    const-string v2, "HistoryEpisodeFragment"

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v2, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v2}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-virtual {p1, v2}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideoResult;

    .line 325
    .local v1, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v3, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v3, v3, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v3, v3, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$1102(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;I)I

    .line 326
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v3, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v3, v3, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$002(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 327
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
