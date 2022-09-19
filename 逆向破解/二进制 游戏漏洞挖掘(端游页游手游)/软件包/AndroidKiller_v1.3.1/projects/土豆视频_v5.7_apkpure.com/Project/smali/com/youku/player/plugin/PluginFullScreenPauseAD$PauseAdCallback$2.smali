.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->onPauseAdPresent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

.field final synthetic val$request:I


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;I)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iput p2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->val$request:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$800(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$800(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$900(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1000(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)I

    move-result v0

    iget v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->val$request:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 563
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$1200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideInteractivePopWindow()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->setVisible(Z)V

    .line 566
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->setVisibility(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$400(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)V

    goto :goto_0
.end method
