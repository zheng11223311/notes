.class Lcom/tudou/detail/fragment/VideoCacheFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "VideoCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setBtnCacheManagerText()V

    .line 759
    return-void
.end method
