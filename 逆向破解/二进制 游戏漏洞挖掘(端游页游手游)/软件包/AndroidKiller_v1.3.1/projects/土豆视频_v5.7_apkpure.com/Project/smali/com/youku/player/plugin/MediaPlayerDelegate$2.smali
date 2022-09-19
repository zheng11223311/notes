.class Lcom/youku/player/plugin/MediaPlayerDelegate$2;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->release()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onRelease()V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$2;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->access$000(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->recreateSurfaceHolder()V

    .line 364
    return-void
.end method
