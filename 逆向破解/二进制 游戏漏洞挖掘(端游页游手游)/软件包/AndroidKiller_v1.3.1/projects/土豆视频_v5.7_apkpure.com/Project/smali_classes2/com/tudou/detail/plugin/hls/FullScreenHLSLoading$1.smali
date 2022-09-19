.class Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;
.super Landroid/os/Handler;
.source "FullScreenHLSLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    new-instance v1, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1$1;-><init>(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method
