.class Lcom/youku/player/plugin/PluginChangeQuality$2;
.super Ljava/lang/Object;
.source "PluginChangeQuality.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginChangeQuality;->showSmoothChangeQualityTip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginChangeQuality;

.field final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginChangeQuality;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->val$tip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/youku/player/plugin/PluginChangeQuality;->access$000()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/youku/player/plugin/PluginChangeQuality;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginChangeQuality;->access$102(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z

    .line 63
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->val$tip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginChangeQuality;->access$202(Lcom/youku/player/plugin/PluginChangeQuality;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->access$300(Lcom/youku/player/plugin/PluginChangeQuality;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->access$300(Lcom/youku/player/plugin/PluginChangeQuality;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->canShowPluginChangeQuality()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-boolean v0, v0, Lcom/youku/player/plugin/PluginChangeQuality;->isHide:Z

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginChangeQuality;->access$402(Lcom/youku/player/plugin/PluginChangeQuality;I)I

    .line 69
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginChangeQuality;->mArrowButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginChangeQuality;->mTipTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$2;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->show()V

    .line 73
    :cond_1
    return-void
.end method
