.class Lcom/tudou/ui/fragment/HistoryFragment$4;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HistoryFragment;->getServerData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v0, "\u89c2\u770b\u8bb0\u5f55\u52a0\u8f7d\u51fa\u9519"

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c2\u770b\u8bb0\u5f55-\u52a0\u8f7d\u51fa\u9519"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2720

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    const-string v0, "HistoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get server history onFailed | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 603
    :try_start_0
    new-instance v3, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v3}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-virtual {p1, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideoResult;

    .line 604
    .local v1, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-object v4, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v4, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v4, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1202(Lcom/tudou/ui/fragment/HistoryFragment;I)I

    .line 605
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-object v4, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v4, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1002(Lcom/tudou/ui/fragment/HistoryFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 606
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 608
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x271f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 609
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v1    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2720

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 612
    const-string v3, "HistoryFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get server history onSuccess method EXCEPTION(catch) | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
