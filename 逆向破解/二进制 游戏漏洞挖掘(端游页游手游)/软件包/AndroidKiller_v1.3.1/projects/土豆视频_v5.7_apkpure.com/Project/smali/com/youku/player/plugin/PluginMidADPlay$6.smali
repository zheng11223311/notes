.class Lcom/youku/player/plugin/PluginMidADPlay$6;
.super Ljava/lang/Object;
.source "PluginMidADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginMidADPlay;->onAdEnd(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginMidADPlay;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginMidADPlay;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/player/plugin/PluginMidADPlay$6;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$6;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->closeInteractiveAdNotIcludeUI()V

    .line 213
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$6;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 214
    return-void
.end method
