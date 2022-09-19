.class Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;
.super Ljava/lang/Object;
.source "DanmuPreviewFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DanmuPreviewFragment;->getDanmuList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 211
    new-instance v1, Lcom/youku/vo/DanmuListResult;

    invoke-direct {v1}, Lcom/youku/vo/DanmuListResult;-><init>()V

    .line 212
    .local v1, "result":Lcom/youku/vo/DanmuListResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/youku/vo/DanmuListResult;
    check-cast v1, Lcom/youku/vo/DanmuListResult;

    .line 213
    .restart local v1    # "result":Lcom/youku/vo/DanmuListResult;
    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x186a1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 216
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
