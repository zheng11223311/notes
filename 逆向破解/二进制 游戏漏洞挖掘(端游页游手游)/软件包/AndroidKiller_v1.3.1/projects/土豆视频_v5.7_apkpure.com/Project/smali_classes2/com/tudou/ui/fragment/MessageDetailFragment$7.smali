.class Lcom/tudou/ui/fragment/MessageDetailFragment$7;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageSendFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$7;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$7;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method public onSuccess(Ljava/lang/Long;)V
    .locals 2
    .param p1, "msgid"    # Ljava/lang/Long;

    .prologue
    .line 308
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 309
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$7;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MessageDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    .line 313
    return-void
.end method
