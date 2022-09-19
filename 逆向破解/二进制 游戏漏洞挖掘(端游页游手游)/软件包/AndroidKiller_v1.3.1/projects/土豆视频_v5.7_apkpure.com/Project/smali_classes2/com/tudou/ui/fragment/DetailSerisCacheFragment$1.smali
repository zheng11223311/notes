.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailSerisCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    new-instance v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;)V

    .line 175
    .local v0, "h":Landroid/os/Handler;
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    return-void
.end method
