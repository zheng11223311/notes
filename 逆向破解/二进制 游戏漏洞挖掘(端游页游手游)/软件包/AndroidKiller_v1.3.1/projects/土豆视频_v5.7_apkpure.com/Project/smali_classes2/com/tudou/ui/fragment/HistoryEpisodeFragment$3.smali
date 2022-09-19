.class Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;
.super Ljava/lang/Object;
.source "HistoryEpisodeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadAllFromServer(II)V
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
    .line 356
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 361
    :try_start_0
    const-string v3, "HistoryEpisodeFragment"

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v3, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v3}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-virtual {p1, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideoResult;

    .line 364
    .local v2, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v3, v2, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v3, v3, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v0, v3, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    .line 365
    .local v0, "allTotalCount":I
    if-nez v0, :cond_0

    .line 366
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7d6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    .end local v0    # "allTotalCount":I
    .end local v2    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :goto_0
    return-void

    .line 368
    .restart local v0    # "allTotalCount":I
    .restart local v2    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    .end local v0    # "allTotalCount":I
    .end local v2    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
