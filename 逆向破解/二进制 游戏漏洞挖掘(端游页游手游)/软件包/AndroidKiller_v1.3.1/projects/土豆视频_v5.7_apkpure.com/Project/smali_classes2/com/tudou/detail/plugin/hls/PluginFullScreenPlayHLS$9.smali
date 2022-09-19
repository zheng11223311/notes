.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;
.super Ljava/lang/Object;
.source "PluginFullScreenPlayHLS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->alertRetry(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 691
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideControllerAndSystemUI()V

    .line 692
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->errorPage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->hideLoading()V

    .line 694
    return-void
.end method
