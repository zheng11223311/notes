.class Lcom/tudou/ui/fragment/BuyFilmFragment$6;
.super Ljava/lang/Object;
.source "BuyFilmFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment;->getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 630
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$6;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$6;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$6;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x30d42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 634
    new-instance v1, Lcom/youku/vo/MyTicketsListResult;

    invoke-direct {v1}, Lcom/youku/vo/MyTicketsListResult;-><init>()V

    .line 635
    .local v1, "results":Lcom/youku/vo/MyTicketsListResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "results":Lcom/youku/vo/MyTicketsListResult;
    check-cast v1, Lcom/youku/vo/MyTicketsListResult;

    .line 636
    .restart local v1    # "results":Lcom/youku/vo/MyTicketsListResult;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 637
    .local v0, "message":Landroid/os/Message;
    const v2, 0x30d41

    iput v2, v0, Landroid/os/Message;->what:I

    .line 638
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 639
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$6;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    return-void
.end method
