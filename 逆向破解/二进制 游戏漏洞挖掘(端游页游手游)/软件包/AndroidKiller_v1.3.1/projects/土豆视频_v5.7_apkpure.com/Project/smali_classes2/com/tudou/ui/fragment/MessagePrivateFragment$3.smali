.class Lcom/tudou/ui/fragment/MessagePrivateFragment$3;
.super Ljava/lang/Object;
.source "MessagePrivateFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessagePrivateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$900(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$900(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$300(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/util/MessageManager;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 177
    return-void
.end method
