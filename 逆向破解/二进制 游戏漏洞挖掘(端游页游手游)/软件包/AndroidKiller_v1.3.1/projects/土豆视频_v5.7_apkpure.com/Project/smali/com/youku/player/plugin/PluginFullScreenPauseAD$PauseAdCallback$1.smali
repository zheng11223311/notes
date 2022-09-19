.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$1;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->onPauseAdClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$1;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback$1;->this$1:Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    return-void
.end method
