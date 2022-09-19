.class Lcom/tudou/ui/fragment/MyTudouFragment$19;
.super Ljava/lang/Thread;
.source "MyTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$19;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1359
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1361
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$19;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2600(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V

    .line 1362
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$19;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->handler:Landroid/os/Handler;

    const/16 v1, 0x403

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1363
    return-void
.end method
