.class Lcom/tudou/ui/fragment/MyTudouFragment$20;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->checkMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

.field final synthetic val$msgManager:Lcom/youku/util/MessageManager;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;Lcom/youku/util/MessageManager;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->val$msgManager:Lcom/youku/util/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->val$msgManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->totMessage:I

    if-lez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1386
    :goto_0
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->val$msgManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->totMessage:I

    if-lez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1378
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$20;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
