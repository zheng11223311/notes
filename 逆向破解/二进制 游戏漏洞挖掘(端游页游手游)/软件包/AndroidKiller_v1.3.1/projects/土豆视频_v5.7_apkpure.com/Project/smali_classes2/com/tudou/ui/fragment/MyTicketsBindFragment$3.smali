.class Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;
.super Ljava/lang/Object;
.source "MyTicketsBindFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTicketsBindFragment;->confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 229
    new-instance v1, Lcom/youku/vo/MyTicketsBindResult;

    invoke-direct {v1}, Lcom/youku/vo/MyTicketsBindResult;-><init>()V

    .line 230
    .local v1, "result":Lcom/youku/vo/MyTicketsBindResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/youku/vo/MyTicketsBindResult;
    check-cast v1, Lcom/youku/vo/MyTicketsBindResult;

    .line 231
    .restart local v1    # "result":Lcom/youku/vo/MyTicketsBindResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsBindFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsBindFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsBindFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsBindFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
