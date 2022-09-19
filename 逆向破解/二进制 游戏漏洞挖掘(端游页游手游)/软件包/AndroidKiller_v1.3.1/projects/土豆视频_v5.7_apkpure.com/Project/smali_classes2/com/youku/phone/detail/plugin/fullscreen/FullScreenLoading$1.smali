.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;
.super Landroid/os/Handler;
.source "FullScreenLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
