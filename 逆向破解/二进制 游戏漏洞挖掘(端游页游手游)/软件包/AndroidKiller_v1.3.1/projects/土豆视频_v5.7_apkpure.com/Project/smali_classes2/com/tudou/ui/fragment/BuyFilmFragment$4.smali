.class Lcom/tudou/ui/fragment/BuyFilmFragment$4;
.super Ljava/lang/Object;
.source "BuyFilmFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment;->buyWithTickets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$4;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$4;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$4;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 542
    new-instance v1, Lcom/youku/vo/PayTicketsResult;

    invoke-direct {v1}, Lcom/youku/vo/PayTicketsResult;-><init>()V

    .line 543
    .local v1, "result":Lcom/youku/vo/PayTicketsResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/youku/vo/PayTicketsResult;
    check-cast v1, Lcom/youku/vo/PayTicketsResult;

    .line 544
    .restart local v1    # "result":Lcom/youku/vo/PayTicketsResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$4;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 545
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 547
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$4;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
