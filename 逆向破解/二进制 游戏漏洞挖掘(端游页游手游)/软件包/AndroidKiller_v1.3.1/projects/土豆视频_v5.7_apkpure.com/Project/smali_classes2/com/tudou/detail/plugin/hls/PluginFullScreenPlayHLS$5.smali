.class Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;
.super Ljava/lang/Object;
.source "PluginFullScreenPlayHLS.java"

# interfaces
.implements Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->setupmSystemUiHider(Lcom/tudou/ui/activity/DetailHLSActivity;)V
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
    .line 403
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lcom/youku/util/UIUtils;->hasHoneycombMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->access$400(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    .line 411
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->userAction()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;->this$0:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideController()V

    goto :goto_0
.end method
