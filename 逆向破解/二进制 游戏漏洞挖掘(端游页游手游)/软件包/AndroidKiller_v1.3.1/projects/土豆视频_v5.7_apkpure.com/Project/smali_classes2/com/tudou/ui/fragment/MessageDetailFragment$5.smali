.class Lcom/tudou/ui/fragment/MessageDetailFragment$5;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


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
    .line 223
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    return-void
.end method
