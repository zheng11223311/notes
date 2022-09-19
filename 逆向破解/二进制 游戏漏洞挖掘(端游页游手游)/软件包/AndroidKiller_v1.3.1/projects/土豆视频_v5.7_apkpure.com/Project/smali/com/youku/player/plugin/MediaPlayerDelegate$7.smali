.class Lcom/youku/player/plugin/MediaPlayerDelegate$7;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V
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
    .line 1442
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$7;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$7;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetting()V

    .line 1447
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$7;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 1448
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$7;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 1449
    return-void
.end method
