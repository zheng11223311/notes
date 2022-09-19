.class Lcom/tudou/ui/fragment/MyTicketsFragment$4;
.super Ljava/lang/Object;
.source "MyTicketsFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTicketsFragment;->getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$4;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$4;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1100(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$4;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1100(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x30d42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 249
    new-instance v1, Lcom/youku/vo/MyTicketsListResult;

    invoke-direct {v1}, Lcom/youku/vo/MyTicketsListResult;-><init>()V

    .line 250
    .local v1, "results":Lcom/youku/vo/MyTicketsListResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "results":Lcom/youku/vo/MyTicketsListResult;
    check-cast v1, Lcom/youku/vo/MyTicketsListResult;

    .line 251
    .restart local v1    # "results":Lcom/youku/vo/MyTicketsListResult;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 252
    .local v0, "message":Landroid/os/Message;
    const v2, 0x30d41

    iput v2, v0, Landroid/os/Message;->what:I

    .line 253
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$4;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1100(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method
