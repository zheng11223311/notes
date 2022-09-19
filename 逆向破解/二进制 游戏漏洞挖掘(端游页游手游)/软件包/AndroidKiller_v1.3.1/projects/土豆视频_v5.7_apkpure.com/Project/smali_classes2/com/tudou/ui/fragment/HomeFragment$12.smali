.class Lcom/tudou/ui/fragment/HomeFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$12;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1628
    const-string v0, "index_sucess"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u9996\u9875\u6570\u636e====\u5e7f\u64ad\u63a5\u6536\u8005===\u6210\u529f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$12;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    const-string v0, "index_failed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u9996\u9875\u6570\u636e====\u5e7f\u64ad\u63a5\u6536\u8005===\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$12;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
