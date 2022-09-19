.class Lcom/tudou/ui/fragment/AccountFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "AccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_delete_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$600(Lcom/tudou/ui/fragment/AccountFragment;)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$3;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$700(Lcom/tudou/ui/fragment/AccountFragment;)V

    goto :goto_0
.end method
