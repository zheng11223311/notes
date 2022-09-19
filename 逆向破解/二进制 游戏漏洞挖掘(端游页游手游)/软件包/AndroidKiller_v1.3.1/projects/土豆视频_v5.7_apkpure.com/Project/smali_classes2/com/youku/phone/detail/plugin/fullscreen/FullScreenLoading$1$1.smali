.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;
.super Ljava/lang/Object;
.source "FullScreenLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/16 v4, 0x457

    .line 108
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_2

    .line 114
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$102(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;I)I

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$112(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;I)I

    .line 118
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->rootview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$112(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;I)I

    .line 131
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x458

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
