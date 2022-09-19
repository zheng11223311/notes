.class Lcom/tudou/ui/fragment/TheShowRankFragment$2;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;->getTheShowRank(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 316
    new-instance v2, Lcom/youku/vo/TheShowRankResults;

    invoke-direct {v2}, Lcom/youku/vo/TheShowRankResults;-><init>()V

    .line 318
    .local v2, "results":Lcom/youku/vo/TheShowRankResults;
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/youku/vo/TheShowRankResults;

    move-object v2, v0

    .line 319
    iget v3, v2, Lcom/youku/vo/TheShowRankResults;->error:I

    if-nez v3, :cond_0

    .line 320
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 323
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$2;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v3

    goto :goto_0
.end method
