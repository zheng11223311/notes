.class Lcom/youku/player/plugin/PluginMidADPlay$5;
.super Ljava/lang/Object;
.source "PluginMidADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginMidADPlay;->onAdStart(I)Z
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
    .line 161
    iput-object p1, p0, Lcom/youku/player/plugin/PluginMidADPlay$5;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$5;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoaded()V

    .line 164
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$5;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginMidADPlay;->setVisible(Z)V

    .line 165
    return-void
.end method
