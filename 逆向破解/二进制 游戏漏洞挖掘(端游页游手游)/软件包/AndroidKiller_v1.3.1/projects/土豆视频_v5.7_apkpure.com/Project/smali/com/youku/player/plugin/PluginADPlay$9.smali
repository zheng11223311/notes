.class Lcom/youku/player/plugin/PluginADPlay$9;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onAdEnd(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$9;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$9;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginADPlay;->closeInteractiveAdNotIcludeUI()V

    .line 414
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$9;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 415
    return-void
.end method
