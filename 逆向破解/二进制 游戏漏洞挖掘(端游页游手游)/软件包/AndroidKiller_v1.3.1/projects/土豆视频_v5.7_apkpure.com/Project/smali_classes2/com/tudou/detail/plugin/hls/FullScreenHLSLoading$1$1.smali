.class Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;
.super Ljava/lang/Object;
.source "FullScreenHLSLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x457

    .line 131
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/DetailHLSActivity;

    check-cast v0, Lcom/tudou/ui/activity/DetailHLSActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailHLSActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_2

    .line 137
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$102(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;I)I

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$112(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;I)I

    .line 141
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    invoke-virtual {v0, v4}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_3

    .line 148
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$112(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;I)I

    .line 153
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;->this$1:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x458

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
