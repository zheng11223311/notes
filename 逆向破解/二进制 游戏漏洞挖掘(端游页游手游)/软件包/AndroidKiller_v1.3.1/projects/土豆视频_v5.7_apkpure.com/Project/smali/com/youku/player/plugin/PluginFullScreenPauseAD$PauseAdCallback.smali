.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Lcom/youku/player/ad/pausead/IPauseAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;


# direct methods
.method private constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;
    .param p2, "x1"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    return-void
.end method


# virtual methods
.method public onPauseAdClicked()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onPauseAdClose()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$700(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$1;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method

.method public onPauseAdDismiss()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->dismissPauseAD()V

    .line 587
    return-void
.end method

.method public onPauseAdFailed()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$400(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)V

    .line 582
    return-void
.end method

.method public onPauseAdPresent(I)V
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$700(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$2;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method
