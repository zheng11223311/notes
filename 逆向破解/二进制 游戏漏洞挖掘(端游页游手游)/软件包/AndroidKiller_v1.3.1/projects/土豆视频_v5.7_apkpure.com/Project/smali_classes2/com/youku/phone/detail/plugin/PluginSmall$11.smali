.class Lcom/youku/phone/detail/plugin/PluginSmall$11;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onCompletionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 947
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onEnd()V

    .line 949
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setOrientionDisable()V

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1700(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 952
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$11;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V

    .line 953
    return-void
.end method
