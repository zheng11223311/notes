.class Lcom/tudou/ui/fragment/MoreFragment$17;
.super Landroid/content/BroadcastReceiver;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$17;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1908
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$17$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$17$1;-><init>(Lcom/tudou/ui/fragment/MoreFragment$17;)V

    .line 1915
    .local v0, "h":Landroid/os/Handler;
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1917
    return-void
.end method
