.class Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;
.super Ljava/lang/Object;
.source "TheShowHistoryRankFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->getHistoryListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$700(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 227
    new-instance v1, Lcom/youku/vo/TheShowRankHistoryResults;

    invoke-direct {v1}, Lcom/youku/vo/TheShowRankHistoryResults;-><init>()V

    .line 228
    .local v1, "results":Lcom/youku/vo/TheShowRankHistoryResults;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "results":Lcom/youku/vo/TheShowRankHistoryResults;
    check-cast v1, Lcom/youku/vo/TheShowRankHistoryResults;

    .line 229
    .restart local v1    # "results":Lcom/youku/vo/TheShowRankHistoryResults;
    iget v2, v1, Lcom/youku/vo/TheShowRankHistoryResults;->error_code_api:I

    if-nez v2, :cond_0

    .line 230
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$700(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$700(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
