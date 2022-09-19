.class Lcom/tudou/ui/fragment/MessageCheckedFragment$3;
.super Ljava/lang/Object;
.source "MessageCheckedFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageCheckedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$700(Lcom/tudou/ui/fragment/MessageCheckedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->access$700(Lcom/tudou/ui/fragment/MessageCheckedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->updateRefreshCount(Ljava/lang/String;)V

    .line 184
    return-void
.end method
